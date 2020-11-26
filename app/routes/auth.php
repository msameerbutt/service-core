<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| AUTH Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
############### AUTHENTICATION METHODS ###############
###### 1. Basic HTTP AUTHENTICATION  Stateful
# auth.basic middleware means Once the middleware has been attached to the route, you will automatically be prompted for credentials when accessing the route in your browser
# By default, the auth.basic middleware will use the email column on the user record as the "username".
Route::group([
    'prefix' => 'basic'
], function ($router) {
    # Protected routes, protected within controller
    Route::post('/user', [\App\Http\Controllers\Auth\BasicController::class, 'user'])->name('auth.basic.user');
});

###### 2. Stateless HTTP Basic Authentication
# You may also use HTTP Basic Authentication without setting a user identifier cookie in the session,
# which is particularly useful for API authentication. To do so, define a middleware that calls the onceBasic method.
# If no response is returned by the onceBasic method, the request may be passed further into the application:
Route::group([
    'prefix' => 'stateless'
], function ($router) {
    # Protected routes, protected within controller
    Route::post('/user', [\App\Http\Controllers\Auth\StatelessController::class, 'user'])->name('auth.stateless.user');
});

###### 3. AUTHENTICATION VIA SIMPLE TOKEN
# As we are using guard token-api which use token drier, which doesnt have logout, refresh attempt methods
Route::group([
    'prefix' => 'token'
], function ($router) {
    # Public routes
    Route::post('/api_token', [\App\Http\Controllers\Auth\JWTController::class, 'apiToken'])->name('auth.jwt.api_token');
    Route::post('/register', [\App\Http\Controllers\Auth\ApiTokenController::class, 'register'])->name('auth.token.register');
    # Protected routes, protected within controller
    Route::post('/user', [\App\Http\Controllers\Auth\ApiTokenController::class, 'user'])->name('auth.token.user');
});
############### END TOKEN ###############

###### 4. AUTHENTICATION VIA JWT TOKEN
Route::group([
    'prefix' => 'jwt'
], function ($router) {
    # Public routes
    Route::post('/login', [\App\Http\Controllers\Auth\JWTController::class, 'login'])->name('auth.jwt.login');
    Route::post('/register', [\App\Http\Controllers\Auth\JWTController::class, 'register'])->name('auth.jwt.register');
    # Protected routes, protected within controller
    Route::post('/logout', [\App\Http\Controllers\Auth\JWTController::class, 'logout'])->name('auth.jwt.logout');
    Route::post('/refresh', [\App\Http\Controllers\Auth\JWTController::class, 'refresh'])->name('auth.jwt.refresh');
    Route::post('/user', [\App\Http\Controllers\Auth\JWTController::class, 'user'])->name('auth.jwt.user');
});

###### 5. AUTHENTICATION VIA sanctum TOKEN
Route::group([
    'prefix' => 'sanctum'
], function ($router) {
    # Public routes
    Route::post('/login', [\App\Http\Controllers\Auth\SanctumController::class, 'login'])->name('auth.sanctum.login');
    Route::post('/register', [\App\Http\Controllers\Auth\SanctumController::class, 'register'])->name('auth.sanctum.register');
    # Protected routes, protected within controller
    Route::post('/logout', [\App\Http\Controllers\Auth\SanctumController::class, 'logout'])->name('auth.sanctum.logout');
    Route::post('/refresh', [\App\Http\Controllers\Auth\SanctumController::class, 'refresh'])->name('auth.sanctum.refresh');
    Route::post('/user', [\App\Http\Controllers\Auth\SanctumController::class, 'user'])->name('auth.sanctum.user');
});
###### END JWT
