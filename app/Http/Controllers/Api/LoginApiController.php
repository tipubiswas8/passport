<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginApiController extends Controller
{
    public function loginPost(Request $request)
    {
        $emailOrUsernameOrPhone = $request->input('email');
        $user = User::where('email', $emailOrUsernameOrPhone)->orWhere('username', $emailOrUsernameOrPhone)->orWhere('phone', $emailOrUsernameOrPhone)->first();

        if (!$user) {
            return response()->json(['error' => 'Invalid login credentials']);
        }

        if (
            Auth::attempt(['email' => $user->email, 'password' => $request->password]) ||
            Auth::attempt(['username' => $user->username, 'password' => $request->password]) ||
            Auth::attempt(['phone' => $user->phone, 'password' => $request->password])
        ) {
            // $auth = Auth::user();
            // Auth::loginUsingId($user->id);
            // $user = User::find($auth->id);
            $token = $user->createToken('Access Token')->accessToken;
            return response()->json($token);
        } else {
            return response()->json(['failed' => 'Invalid username or password']);
        }
    }
}

// using phone number

//   {
//     "email": "0199999999",
//     "password": "112233"
//   }

// or using username

//   {
//     "email": "biswas",
//     "password": "112233"
//   }

// or using email

//   {
//     "email": "biswas@gmail.com",
//     "password": "112233"
//   }