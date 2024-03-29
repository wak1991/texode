<?php

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

Route::get('/', 'HomeController@index')->name('index');
Route::get('/cli', 'HomeController@cli')->name('cli');
Route::get('/api', 'HomeController@api')->name('api');
Route::get('/toogle', 'HomeController@toogle')->name('toogle');