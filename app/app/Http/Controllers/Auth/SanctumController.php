<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;

class SanctumController extends AuthController
{
    /**
     * Create a new AuthController instance.
     * As we are using guard token-api which use token drier, which doesnt have logout, refresh attempt methods
     *
     * @return void
     */
    public function __construct()
    {
        # auth.basic will use basic authentication, and it will be session based stateful authentication
        $this->middleware('auth:sanctum', ['except' => ['login', 'register']]);
    }

    /**
     * A JWT Token function for API based on email/password
     * This function only support for that guard which have attempt method
     * Not all Guards driver have attempt method, session driver have attempt method
     * @param Request $request
     * @return JsonResponse
     * @throws \Exception
     */
    public function login(Request $request): JsonResponse
    {
        /** @var JsonResponse $response */
        $response = $this->validation($request, self::VALIDATE_LOGIN);
        if ($response->getStatusCode() != Response::HTTP_OK) {
            return $response;
        }

        /** @var User $user */
        $user = User::where('email', $request->email)->first();
        if (! $user || ! Hash::check($request->password, $user->password)) {
            throw ValidationException::withMessages([
                'email' => ['The provided credentials are incorrect.'],
            ]);
        }

        $token = $user->createToken('token-name'.$user->id, ['token-ability'])->plainTextToken;
        return $this->createNewToken($token);
    }

    /**
     * This function will provide logout functionality
     */
    public function logout (Request $request) {
        // Revoke all tokens...
        $request->user()->tokens()->delete();

        // Revoke the user's current token...
        $request->user()->currentAccessToken()->delete();

        return response()->json(['message' => 'User successfully signed out']);
    }

    /**
     * Get the current authenticated User from StatefulGuard
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function user(Request $request): JsonResponse {
        return response()->json($request->user());
    }

    /**
     * Get the token array structure.
     * @param  string $token
     * @return \Illuminate\Http\JsonResponse
     */
    protected function createNewToken($token) {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
        ]);
    }
}
