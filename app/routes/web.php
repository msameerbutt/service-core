<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');

########### Protected routes with basic http authentication
# auth.basic middleware means Once the middleware has been attached to the route, you will automatically be prompted for credentials when accessing the route in your browser
# By default, the auth.basic middleware will use the email column on the user record as the "username".
Route::middleware('auth.basic')->group(function () {
    Route::get('/basic/me', 'App\Http\Controllers\UserController@whoAmI')->name('me.basic.web');
});

############ Stateless HTTP Basic Authentication ###########
# You may also use HTTP Basic Authentication without setting a user identifier cookie in the session,
# which is particularly useful for API authentication. To do so, define a middleware that calls the onceBasic method.
# If no response is returned by the onceBasic method, the request may be passed further into the application:
Route::middleware('auth.basic.once')->group(function () {
    Route::get('/once/basic/me', 'App\Http\Controllers\UserController@whoAmI')->name('me.basic.once.web');
});
