<?php

namespace App\Http\Controllers\BookingsController;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class AjaxBookings extends Controller
{
    public function fetch() {
        return response()->json([
            'status' => true,
            'message' => 'Api is working.'
        ]);
    }
}
