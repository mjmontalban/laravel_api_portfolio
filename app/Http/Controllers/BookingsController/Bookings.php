<?php

namespace App\Http\Controllers\BookingsController;

use Illuminate\Routing\Controller as BaseController;
use App\Models\Booking;
use App\Http\Resources\BookingResource;
class Bookings extends BaseController
{
   public function bookings() {
        return view('bookings.list');
   }
}