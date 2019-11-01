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

//skordosen
Route::post('skordosen','SkorDosen@create');
Route::get('skordosen','SkorDosen@index');
Route::get('/skordosen/{id}','SkorDosen@show');
Route::put('/skordosen/{id}','SkorDosen@update');
Route::delete('/skordosen/{id}','SkorDosen@delete');

//skorpoint
Route::get('skorpoint','SkorPoint@index');
Route::get('/skorpoint/{id}','SkorPoint@show');
Route::post('skorpoint','SkorPoint@create');
Route::put('/skorpoint/{id}','SkorPoint@update');
Route::delete('/skorpoint/{id}','SkorPoint@delete');

//skorsprint
Route::get('skorsprint','SkorSprint@index');
Route::get('/skorsprint/{id}','SkorSprint@show');
Route::post('skorsprint','SkorSprint@create');
Route::put('/skorsprint/{id}','SkorSprint@update');
Route::delete('/skorsprint/{id}','SkorSprint@delete');

//skorfinal
Route::get('skorfinal','NilaiFinal@index');
Route::get('/skorfinal/{id}','NilaiFinal@show');
Route::post('skorfinal','NilaiFinal@create',function(){})->middleware('SkorFinal');
Route::put('/skorfinal/{id}','NilaiFinal@update',function(){})->middleware('SkorFinal');
Route::delete('/skorfinal/{id}','NilaiFinal@delete');