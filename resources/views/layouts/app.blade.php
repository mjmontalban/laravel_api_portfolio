<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <header>
        @include('layouts.header')
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                @include('layouts.sidebar')
            </div>
            <div class="col-md-9">
                @yield('content')
            </div>
        </div>
    </div>

    <footer>
        @include('layouts.footer')
    </footer>
</body>
<script src="{{ mix('js/app.js') }}"></script>
</html>