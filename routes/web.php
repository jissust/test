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

Route::get('/', 'HomeController@index')->name('Home');
Route::get('/auto/{id}', 'AutoController@find')->name('Find');
Route::post('/filtrar', 'HomeController@filtrar')->name('Filtrar');
Route::post('/ordenar_lista', 'HomeController@ordenarLista')->name('OrdenarLista');
