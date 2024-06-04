<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\MainController;
use App\Http\Controllers\Api\AuthorizationController;

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

Route::post('register', [AuthorizationController::class, 'register']);
Route::post('login', [AuthorizationController::class, 'login']);

Route::get('allCategory', [MainController::class, 'allCategory']);
Route::get('allKeyWords', [MainController::class, 'allKeyWords']);
Route::get('allUsers', [MainController::class, 'allUsers']);
Route::get('allPosts', [MainController::class, 'allPosts']);
Route::get('allPostsWhereCategory', [MainController::class, 'allPostsWhereCategory']);
Route::get('allCommentsPost/{id}', [MainController::class, 'allCommentsPost']);
Route::get('getPost/{id}', [MainController::class, 'getPost']);

Route::middleware([ 'UserCheck' ])->group(function() {
    Route::post('addPost', [MainController::class, 'addPost']);
    Route::get('allPostsUser', [MainController::class, 'allPostsUser']);
    Route::put('UpdatedataUser', [MainController::class, 'UpdatedataUser']);
    Route::delete('deletePost/{id}', [MainController::class, 'deletePost']);
    Route::put('ipdatePost/{id}', [MainController::class, 'ipdatePost']);
    Route::post('addComments', [MainController::class, 'addComments']);
    Route::post('savePost', [AuthorizationController::class, 'savePost']);
    Route::post('logout', [AuthorizationController::class, 'logout']);
});

Route::middleware([ 'UserCheckAdmin' ])->group(function() {
    Route::post('banUser', [MainController::class, 'banUser']);
    Route::put('updateKeyWords', [MainController::class, 'updateKeyWords']);
    Route::post('addCategory', [MainController::class, 'addCategory']);
    Route::post('addKeyWords', [MainController::class, 'addKeyWords']);
    Route::post('logout', [AuthorizationController::class, 'logout']);
});