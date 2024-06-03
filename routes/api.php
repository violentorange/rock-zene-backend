<?php

use App\Http\Controllers\ArtistController;
use App\Http\Controllers\ShoppingCartController;
use App\Http\Controllers\SongController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('songs', SongController::class);

Route::apiResource('artists', ArtistController::class);

Route::apiResource('shoppingcart', ShoppingCartController::class);

Route::post('/songs', [SongController::class,'store']);