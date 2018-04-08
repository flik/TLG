<?php

use Illuminate\Http\Request;

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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

// routes/api.php
Route::get('todos', 'TodoController')->middleware('auth:api');
Route::get('users', 'UsersController@index')->middleware('auth:api');

Route::get('companies', 'CompaniesController@index')->middleware('auth:api');
Route::get('test', 'CompaniesController@test');

Route::group(['prefix' => 'v1'], function () {

    Route::get('test', 'CompaniesController@test');

}); 
