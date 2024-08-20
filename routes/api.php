<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Api\LoginApiController;
use App\Http\Controllers\Api\RegistrationApiController;
use App\Models\User;

Route::post('/login', [LoginApiController::class, 'loginPost']);
Route::post('/register', [RegistrationApiController::class, 'registration']);

Route::get('/users', function (Request $request) {
    $users = User::all();
    return response()->json($users);
})->middleware('auth:api');


/*
request url: http://localhost:8000/api/users
request type: get
header: 
Authorization : Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5Y2M3Y2ZhMS03Y2FlLTQzNjAtOGExYS02ZjgzMmZhYWJjOTQiLCJqdGkiOiIxZDg1YTAwMmUzOGJjMDhlN2VhMTZhYjYxYWZhMDdkMGIyOTAyMzNiNTYyMzJiZTkxMmM5ZTc1NjY3M2QwMGVhYjBkYmI0NWRlMTkzNDk4OCIsImlhdCI6MTcyMzgyNTA1Mi40MzY4MTQsIm5iZiI6MTcyMzgyNTA1Mi40MzY4MiwiZXhwIjoxNzU1MzYxMDUyLjQxNzYyOCwic3ViIjoiMSIsInNjb3BlcyI6W119.BT2ZvOzpuvcp6UN-yQgqNNdPIgsu_Jr14HOY4Dcv-1rxDsA-aZI2fNUebXXWtnn7WSFIxb5JDU-yN4hmIXaySKKjT62P2iMYNj_fu5vTD-D8QTzUs_B_A8nhg15IIIA6oBGRRTK2imFho4V1PNvLnv-ucJ3FO9lR0Dz9SkmkYltE6hI1O9nrrEzgotg3Fvo0rsudXrJte_eGte3_oGz1nJly3IYGSIjPIeDb-_JV0VNsjNuT6uSXsjdHW4AFiVQLhgX8OwEPxVp4WYjgOT0mu_BHy5X46eWdNoIfZt0K7IyBLZwMSJjH2l4uHQ13_W4NFmPL3tQ9901SLnPcESZnRBZBfa00tdaq-i361uy9XHrlkHQTjhqkDs0TwQmeYDMSoznxp_eUMBlxvRKc69q2exYHwmbXU6lKuf7MXeXEEEk6C8NSjiA1SOxE0BuVJ5Lt05--bbiRxHpkixyCFuE_E9grMk1NqHE-XwmM1jvG9jAUeynmf_0CSrcP5E4CpXonxG0jWGcDLWIEuwJ6wxdAEKRWwCQh6TXuy8ws00kRVVr69zZ8tCkCMwvRAQWrUQEUtNczhyTxrm2QviwCXbovvkqAJjkwDOFWCJpuxL8OEVRmnoQ3qZPDIB-JmWQgUlOSPl-HYOsx4qienNGmlz08XKhQVuhl3d1lwKxhZVNEBxg
*/
