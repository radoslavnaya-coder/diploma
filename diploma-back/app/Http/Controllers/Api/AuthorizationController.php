<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use stdClass;
use Illuminate\Support\Facades\DB;
use App\Models\Albom;

class AuthorizationController extends Controller
{
    public function register(Request $request)
    {
        // $file = $request->file;
        // $time_save = time();
        // $file->storeAs(
        //     '/public/uploads',
        //     $time_save . str_replace(' ', '', $file->getClientOriginalName())
        // );
        // $file_url = "http://127.0.0.1:8000/storage/uploads/" . $time_save . $file->getClientOriginalName();
        // $file_url = str_replace(' ', '', $file_url);

          
            $user = User::create([
                'email' => $request->email,
                'name'=> $request->name,
                'password'=> $request->password,
                'role'=> 0,
                'phone'=> $request->phone,
                // 'img'=> $file_url
            ]);

            $token = $user->createToken('user_token')->plainTextToken;
            $user->remember_token = $token;
            $user->save();

            $albom = Albom::create([
                'id_user' => $user->id
            ]);
            $albom->save();

            return response()->json([
                'success' => true,
                'message' => 'Success',
                'token' => $token
            ], 200);
    }

    public function login(Request $request)
    {
        $user = User::where('name', '=', $request->input('name'))->firstOrFail();

        if ($request->input('password') == $user->password) {
            $token = $user->createToken('user_token')->plainTextToken;
            $user_id = $user->id;

            return response()->json([
                'success' => true,
                'message' => "Success",
                'token' => $token,
                'user_id' => $user_id,
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'message' => "Login failed"
            ], 401);
        }
    }

    public function logout(Request $request)
    {
            $yourToken = request()->bearerToken();
            $token = \Laravel\Sanctum\PersonalAccessToken::findToken($yourToken);

            $user_id = $token->tokenable;
            $user = User::findOrFail($user_id->id);

            $user->tokens()->delete();

            return response()->json([
                'success' => true,
                'message' => "Logout"
            ], 200);

    }
}
