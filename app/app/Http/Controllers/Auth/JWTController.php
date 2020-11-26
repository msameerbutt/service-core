<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;

class JWTController extends AuthController
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        # auth:api-jwt middleware means use guard = api-jwt from auth.config
        # all function are protected except login
        $this->middleware('auth:jwt-api', ['except' => ['login', 'apiToken', 'register']]);
        $this->stateFulGuard = Auth::guard('jwt-api');
    }

    /**
     * A function to get api_token value from user table via email/password, that will never expire
     * @param Request $request
     * @return JsonResponse
     */
    public function apiToken(Request $request): JsonResponse
    {
        /** @var JsonResponse $response */
        $response = $this->validation($request, self::VALIDATE_LOGIN);
        if ($response->getStatusCode() != Response::HTTP_OK) {
            return $response;
        }

        $credentials = $request->only('email', 'password');
        if (!$token = $this->stateFulGuard->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], Response::HTTP_FORBIDDEN);
        }

        $user = $this->stateFulGuard->user();
        if ($user instanceof User) {
            return response()->json([
                'access_token' => $user->api_token,
                'token_type' => 'bearer',
                'expires_in' => 'never'
            ],
                Response::HTTP_OK
            );
        }
    }

    /**
     * A JWT Token function for API based on email/password
     * This function only support for that guard which have attempt method
     * Not all Guards driver have attempt method, session driver have attempt method
     * @param Request $request
     * @return JsonResponse
     */
    public function login(Request $request): JsonResponse
    {
        /** @var JsonResponse $response */
        $response = $this->validation($request, self::VALIDATE_LOGIN);
        if ($response->getStatusCode() != Response::HTTP_OK) {
            return $response;
        }

        $credentials = $request->only('email', 'password');
        if (!$token = $this->stateFulGuard->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], Response::HTTP_FORBIDDEN);
        }

        return $this->createNewToken($token);
    }

    /**
     * This function will provide logout functionality
     */
    public function logout () {
        $this->stateFulGuard->logout();
        return response()->json(['message' => 'User successfully signed out']);
    }

    /**
     * Refresh a token.
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh() {
        return $this->createNewToken($this->stateFulGuard->refresh());
    }

    /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token) {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => $this->stateFulGuard->factory()->getTTL() * 60,
            'user' => $this->stateFulGuard->user()
        ]);
    }
}
