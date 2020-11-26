<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Support\Facades\Auth;

class StatelessController extends AuthController
{
    /**
     * Create a new AuthController instance.
     * As we are using guard token-api which use token drier, which doesnt have logout, refresh attempt methods
     *
     * @return void
     */
    public function __construct()
    {
        # auth.basic.once will use basic authentication, and it will be a stateless authentication
        $this->middleware('auth.basic.once');
        $this->stateFulGuard = Auth::guard('web');
    }
}
