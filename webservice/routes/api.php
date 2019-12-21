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
Route::get('/nilaidosen','NilaiDosenController@index');
Route::get('/nilaidosen/{id}','NilaiDosenController@show');
Route::get('/nilaidosen/{id}/{idTim}','NilaiDosenController@showbyuser');
Route::post('nilaidosen','NilaiDosenController@create');
Route::put('/nilaidosen/{id}','NilaiDosenController@update');
Route::delete('/nilaidosen/{id}','NilaiDosenController@delete'); 

//skorPoint
Route::get('nilaipoint','NilaiPointController@index');
Route::get('/nilaipoint/{id}','NilaiPointController@show');
Route::post('nilaipoint','NilaiPointController@create');
Route::put('/nilaipoint/{id}','NilaiPointController@update');
Route::delete('/nilaipoint/{id}','NilaiPointController@delete');

//nilaisprint
Route::get('nilaisprint','NilaiSprintController@index');
Route::get('/nilaisprint/{id}','NilaiSprintController@show');
Route::post('nilaisprint','NilaiSprintController@create');
Route::put('/nilaisprint/{id}','NilaiSprintController@update');
Route::delete('/nilaisprint/{id}','NilaiSprintController@delete');

//nilaifinal
Route::get('nilaifinal','NilaiFinalController@index');
Route::get('/nilaifinal/{id}','NilaiFinalController@show');
Route::post('nilaifinal','NilaiFinalController@create');
Route::put('/nilaifinal/{id}','NilaiFinalController@update');
Route::delete('/nilaifinal/{id}','NilaiFinalController@delete');

