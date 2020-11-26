<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Contracts\Auth\StatefulGuard;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;

class AuthController extends Controller
{
    protected const VALIDATE_LOGIN = 'LOGIN';
    protected const VALIDATE_REGISTER = 'REGISTER';

    /** @var StatefulGuard */
    protected $stateFulGuard;

    /**
     * @param Request $request
     * @param string $type
     * @return JsonResponse
     */
    protected function validation(Request $request, string $type) {
        $validator = null;
        switch ($type) {
            case self::VALIDATE_LOGIN:
                $validator = Validator::make($request->all(), [
                    'email' => 'required|string|email|max:255',
                    'password' => 'required|string|min:6',
                ]);
                break;
            case self::VALIDATE_REGISTER:
                $validator = Validator::make($request->all(), [
                    'name' => 'required|string|between:2,100',
                    'email' => 'required|string|email|max:100|unique:users',
                    'password' => 'required|string|confirmed|min:6',
                ]);
                break;
        }
        if (is_null($validator)) {
            return response()->json(['errors' => 'invalid validator'], Response::HTTP_BAD_REQUEST);
        }
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()->all()], Response::HTTP_UNPROCESSABLE_ENTITY);
        } else {
            return response()->json([], Response::HTTP_OK);
        }
    }

    /**
     * Register a User.
     *
     * @return \Illuminate\Http\JsonResponse
     * @throws \Exception
     */
    public function register(Request $request) {
        /** @var JsonResponse $response */
        $response = $this->validation($request, self::VALIDATE_REGISTER);
        if ($response->getStatusCode() != Response::HTTP_OK) {
            return $response;
        }

        $user = User::create(array_merge(
            $request->only('name', 'email'),
            ['api_token' => Str::random(60)],
            ['password' => bcrypt($request->password)]
        ));

        return response()->json([
            'message' => 'User successfully registered',
            'user' => $user
        ], Response::HTTP_CREATED);
    }

    /**
     * Get the current authenticated User from StatefulGuard
     * @param Request $request
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function user(Request $request): JsonResponse {
        return response()->json($this->stateFulGuard->user());
    }

}
