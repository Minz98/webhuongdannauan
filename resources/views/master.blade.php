<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('tieudetrang')</title>
    <link rel="stylesheet" href="{{ asset('https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i') }}">
    <link rel="stylesheet" href="{{ asset('/public/css/style.css') }}">
    <link rel="stylesheet" href="{{ asset('/public/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/public/css/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/public/css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('/public/css//magnific-popup.css') }}">
    <link rel="stylesheet" href="{{ asset('/public/css/font-awesome.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/public/css/custom-icon.css') }}">
    <link rel="stylesheet" href="{{ asset('/public/css/classy-nav.min.css') }}">
    <link rel="stylesheet" href="{{ asset('/public/css/nice-select.min.css') }}">
    <link rel="icon" href="{{ asset('/public/img/core-img/favicon.ico') }}">

</head>
<body>
@include('layout.header')
@yield('content')
@include('layout.footer')
<script src="{{ asset('/public/js/jquery/jquery-2.2.4.min.js')}}"></script>
    <!-- Popper js -->
    <script src="{{ asset('/public/js/bootstrap/popper.min.js')}}"></script>
    <!-- Bootstrap js -->
    <script src="{{ asset('/public/js/bootstrap/bootstrap.min.js')}}"></script>
    <!-- All Plugins js -->
    <script src="{{ asset('/public/js/plugins/plugins.js')}}"></script>
    <!-- Active js -->
    <script src="{{ asset('/public/js/active.js')}}"></script>
</body>

</html>
