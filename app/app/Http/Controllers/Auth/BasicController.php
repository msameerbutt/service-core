<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Support\Facades\Auth;

class BasicController extends AuthController
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
        $this->middleware('auth.basic');
        $this->stateFulGuard = Auth::guard('web');
    }
}
