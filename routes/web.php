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

Route::get('/','homeController@showhome');
Route::get('listblog','listblogController@listblog');
Route::get('cong-thuc/{id}','CongthucController@congThuc');
Route::get('blog/{id}','blogController@blog');
Route::group(['prefix'=>'blog'],function(){
    Route::get('{id}','blogController@blog');
    Route::get('blog/{id}','blogController@blog');
});
Route::group(['prefix'=>'loai'],function(){
    Route::get('{id}','listrecipeController@category');
    Route::get('cong-thuc/{id}','CongthucController@congThuc');
});

