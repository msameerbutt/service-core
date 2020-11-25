<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
############### JWT ###############
Route::group([
    'prefix' => 'jwt'
], function ($router) {
    # Public routes
    Route::post('/login', [\App\Http\Controllers\AuthJWTController::class, 'login'])->name('api.jwt.login');
    Route::post('/register', [\App\Http\Controllers\AuthJWTController::class, 'register'])->name('api.jwt.register');
    # Protected routes, protected within controller
    Route::post('/logout', [\App\Http\Controllers\AuthJWTController::class, 'logout'])->name('api.jwt.logout');
    Route::post('/refresh', [\App\Http\Controllers\AuthJWTController::class, 'refresh'])->name('api.jwt.refresh');
    Route::get('/user-profile', [\App\Http\Controllers\AuthJWTController::class, 'userProfile'])->name('api.jwt.profile');
});
############### END JWT ###############

# This will get you a Token from manual login by email & Password
Route::post('/login', 'App\Http\Controllers\AuthController@login')->name('login.api.token');
Route::post('/register','App\Http\Controllers\AuthController@register')->name('register.api');

# Protected routes
# auth:api middleware means use guard = api from auth.config
Route::middleware('auth:api')->group(function () {
    // our routes to be protected will go in here
    Route::post('/logout', 'App\Http\Controllers\Auth\ApiBasicAuthController@logout')->name('logout.api');
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
