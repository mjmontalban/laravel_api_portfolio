<?php

namespace App\Http\Controllers\BookingsController;

use Illuminate\Routing\Controller as BaseController;
use App\Models\Booking;
use App\Http\Resources\BookingResource;
class Bookings extends BaseController
{
   public function bookings() {
        $bookings = Booking::query()->with(['user'])
        ->whereDate('date_created', '<', '2023-01-01')
        ->latest()
        ->skip(10)
        ->take(10)
        ->get();

        return BookingResource::collection($bookings);
        // return view('bookings.list', ['bookings' => BookingResource::collection($bookings)]);
   }
}