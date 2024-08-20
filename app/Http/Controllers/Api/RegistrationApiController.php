<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Exception;
use Illuminate\Http\Request;

class RegistrationApiController extends Controller
{
    public function registration(Request $request)
    {
        try {
            $user = new User;
            $user->name = $request->name;
            $user->username = $request->username;
            $user->email = $request->email;
            $user->phone = $request->phone;
            $user->password = $request->password;
            $user->save();
            echo 'User registration successfully';
        } catch (Exception $e) {
            return response()->json($e);
        }
    }
}

/*
{
    "name": "Sohel",
    "username": "sohel",
    "email": "sohel@gmail.com",
    "phone": "0123456789",
    "password": "123456"
  }
*/
