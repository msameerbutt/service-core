<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Validator;

class Controller extends BaseController
{
    protected const VALIDATE_LOGIN = 'LOGIN';
    protected const VALIDATE_REGISTER = 'REGISTER';

    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

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
}
