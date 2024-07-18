<?php

namespace App\Http\Controllers\Users;

use App\Http\Controllers\Controller;
use App\Http\Requests\CreateUserRequest;
use App\Http\Requests\LoginRequest;
use App\Traits\HttpResponse;

use App\Models\User;
use Illuminate\Support\Facades\Hash;
class UserController extends Controller
{
    use HttpResponse;
    public function register(CreateUserRequest $request): object {
        $validated = $request->validated();
        try {
            $user = User::create([
                'name' => $validated['name'],
                'email' => $validated['email'],
                'password' => Hash::make($validated['password']),
            ]);

            return $this->success([
                'user' => $user,
            ], 'User created successfully');

        } catch (\Exception $e) {
            return $this->error([], $e->getMessage(), 500);
        }
    }

    public function login(LoginRequest $request): object {
        $validated = $request->validated();

        $user = User::where('email', $validated['email'])->first();

        if($user && Hash::check($validated['password'], $user->password)) {
            return $this->success([
                'user' => $user,
                'token' => $user->createToken($user->name)
            ], 'User loggedin successfully');
        }else{
            return $this->error([], 'Login Failed.', 500);
        }
    }
}
