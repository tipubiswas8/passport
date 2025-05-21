<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LogoutApiController extends Controller
{
    public function logout(Request $request)
    {
        $user = Auth::user();
        $request->user()->token()->revoke();

        // // Logout from all devices
        // $user = $request->user();
        // foreach ($user->tokens as $token) {
        //     $token->revoke();
        // }

        return response()->json(['message' => 'Logged out successfully']);
    }
}


// for logout
/*
request url: http://localhost:8000/api/logout
request type:post
header:
Authorization : Bearer Token eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI5ZWY2YzAwYy1hZDBiLTQyNWYtYWNmZi03YmMwYTk4NmU4NzQiLCJqdGkiOiJmM2Y0MzQyN2YzYmYwMTc1NTY5NzE2NDZmNzUwZGNiYzFhMDgzNjM0ZTgyYzgzYjg1ZjYwNDY3MGJjMzRhMDliZWI3ZDYwZjY2NWRhODQ2YSIsImlhdCI6MTc0NzgyODYyNi4xODI1MTgsIm5iZiI6MTc0NzgyODYyNi4xODI1MjEsImV4cCI6MTc3OTM2NDYyNi4xNzE5MjIsInN1YiI6IjEiLCJzY29wZXMiOltdfQ.1OC4zYMWh9kwMqivcRvEScd6r6GVaZO3blpmVOzESOngiMpYyMXs5BophvYY41bQL54XGVR3t6aVKgGpllpsNrnGNxUU-cPq_t-witf_CqKtTpG0WR6EdL6gtgzGvU4qpQNQxEIYjOcKVoLHRFYXQhWF9RfRkV9hfBw1f_Kj2BtMhdviCjXZOpdltJkFgn05M4ZjcD7z9IMi9p9ddxWwcuN9TmJfvCQPPnnYTCqA0kCaBSSi6mbqacKB2sisrr8u4nbb__UAAfruDOM_cdxqaYFem46zixg3j1wUWXTx9LqqWckIHVyeW_UsFjTr-Xfc54btdmBahwhRmCBRO7v__lPL7SsSF6LFlj9c9bYqM6U9bu71YQwgEyHNl9jgJAMdnu6X7pZYRc8lqHl2pA-g8pHvDr-LszAKZAu05PTmBLH7GRrvt5rdyd9uEfBhfs-AdOwcRH67TFMtmf1p9gYr2cp4mDIZEZWMM1HMaKyUbEOEu_920XJQr6QWfokAu483YMIppGy2ScYcDAXJQkKszxkAcMr6-X4rtyTP1FARvgElmsULO7wLTs1Hdor08GzBPAK_7Ek9_HLb35RtusP29as72fFMotoswjpY3V29auHhXcM0MDvuWC1LZ7UM-s87SCi1YjucSpa66LVdL0KxHDQCrUwUzOh8Qz7pTA1DE6E
*/
