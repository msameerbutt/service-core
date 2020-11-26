<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Support\Facades\Auth;

class ApiTokenController extends AuthController
{
    /**
     * Create a new AuthController instance.
     * As we are using guard token-api which use token drier, which doesnt have logout, refresh attempt methods
     *
     * @return void
     */
    public function __construct()
    {
        # auth:token-api middleware means use guard = token-api from auth.config
        # all function are protected except login
        $this->middleware('auth:token-api', ['except' => ['register']]);
        $this->stateFulGuard = Auth::guard('token-api');
    }
}
