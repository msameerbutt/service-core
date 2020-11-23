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
Route::group(['middleware' => ['json.response']], function () {
    // public routes
    Route::post('/login', 'App\Http\Controllers\Auth\ApiBasicAuthController@login')->name('login.api');
    Route::post('/register','App\Http\Controllers\Auth\ApiBasicAuthController@register')->name('register.api');
});

Route::middleware('auth:api')->group(function () {
    // our routes to be protected will go in here
    Route::post('/logout', 'App\Http\Controllers\Auth\ApiBasicAuthController@logout')->name('logout.api');
});

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
