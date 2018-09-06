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

//login
Route::post('login','ApiController@login');

//register
Route::post('register','ApiController@register');

//addcow
Route::post('addcow/{id}','ApiController@addcow');

//viewvets
Route::post('viewvet','ApiController@viewvet');

//bookedvets
Route::post('bookvet/{id}','ApiController@bookvet');

//get list booked list
Route::get('viewBookings/{id}','ApiController@viewBookings');



//get list milking cows
Route::get('milkingCows/{id}','RecordController@milkingCows');

//record milk 
Route::post('addMilk/{id}','RecordController@addMilkRecord');

//get milk history of a cow
Route::get('milkHistory/{id}','RecordController@milkHistory');

//post add health record
Route::post('addHealth/{id}','RecordController@addHealth');

//get health history
Route::get('healthHistory/{id}','RecordController@healthHistory');

//make as treated
Route::post('treated/{id}','ApiController@treated');

//make as treated
Route::post('postTrending','VetsController@postTrending');
//get trending
Route::get('getTrending','VetsController@getTrending');