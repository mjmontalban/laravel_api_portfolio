<html>
<ul>
    @foreach ($bookings as $booking)
        <li>{{ $booking->title }} [ {{ $booking->user->name }} ]</li>
    @endforeach
</ul>
</html>