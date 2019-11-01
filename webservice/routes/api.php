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

//Skor Dosen
Route::get('skordosen','SkorDosenController@index');
Route::get('/skordosen/{id}','SkorDosenController@show');
Route::post('skordosen','SkorDosenController@create',function(){})->middleware('SkorSprint');
Route::put('/skordosen/{id}','SkorDosenController@update',function(){})->middleware('SkorSprint');
Route::delete('/skordosen/{id}','SkorDosenController@delete'); 

//skorPoint
Route::get('skorpoint','SkorPointController@index');
Route::get('/skorpoint/{id}','SkorPointController@show');
Route::post('skorpoint','SkorPointController@create',function(){})->middleware('SkorSprint');
Route::put('/skorpoint/{id}','SkorPointController@update',function(){})->middleware('SkorSprint');
Route::delete('/skorpoint/{id}','SkorPointController@delete');

//skorPoint
Route::get('skorsprint','SkorSprintController@index');
Route::get('/skorsprint/{id}','SkorSprintController@show');
Route::post('skorsprint','SkorSprintController@create');
Route::put('/skorsprint/{id}','SkorSprintController@update');
Route::delete('/skorsprint/{id}','SkorSprintController@delete');

//skorfinal
Route::get('skorfinal','NilaiFinalController@index');
Route::get('/skorfinal/{id}','NilaiFinalController@show');
Route::post('skorfinal','NilaiFinalController@create',function(){})->middleware('SkorFinal');
Route::put('/skorfinal/{id}','NilaiFinalController@update',function(){})->middleware('SkorFinal');
Route::delete('/skorfinal/{id}','NilaiFinalController@delete');

