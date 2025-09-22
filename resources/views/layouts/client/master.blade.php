<!doctype html>
<html lang="{{app()->getLocale()}}" dir="{{is_rtl() ? 'rtl': 'ltr' }}">
<head>
    @if(app()->isProduction())
        <!-- Google tag (gtag.js) -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=G-R7R3BR8EL2"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag(){dataLayer.push(arguments);}
            gtag('js', new Date());

            gtag('config', 'G-R7R3BR8EL2');
        </script>
        <!-- End Google tag (gtag.js) -->

    @endif
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Favicon اصلی -->
    <link rel="shortcut icon" href="/storage/favicon/favicon.ico" type="image/x-icon">

    <!-- Favicon های PNG -->
    <link rel="icon" type="image/png" sizes="16x16" href="/storage/favicon/favicon-16x16.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/storage/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/storage/favicon/favicon-96x96.png">

    <!-- Apple Touch Icons -->
    <link rel="apple-touch-icon" sizes="57x57" href="/storage/favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/storage/favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/storage/favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/storage/favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/storage/favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/storage/favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/storage/favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/storage/favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/storage/favicon/apple-icon-180x180.png">
    <link rel="apple-touch-icon" href="/storage/favicon/apple-icon.png">
    <link rel="apple-touch-icon-precomposed" href="/storage/favicon/apple-icon-precomposed.png">

    <!-- Android Icons (manifest.json) -->
    <link rel="manifest" href="/storage/favicon/manifest.json">

    <!-- Microsoft Tiles -->
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/storage/favicon/ms-icon-144x144.png">
    <meta name="msapplication-config" content="/storage/favicon/browserconfig.xml">

    <!-- Optional: theme-color for mobile browsers -->
    <meta name="theme-color" content="#ffffff">

    {!!  $seo ?? '<title>'.__(config('app.name')).'</title>' !!}
    @vite(['resources/fonts/font.css','resources/css/app.css','resources/css/theme.css', 'resources/js/app.js', 'resources/js/theme.js'])

    @stack('headerScripts')
</head>
<body x-data="{sidebar:false ,togglesSidebar() { this.sidebar = !this.sidebar }}" @resize.window="sidebar = false"
      :class="sidebar ? 'overflow-hidden' : ''" id="site-body"
      class="font-vazir relative bg-slate-200 overflow-x-hidden min-h-svh">
@include('layouts.client.partials.header')
{{$slot ?? ''}}
@include('layouts.client.partials.footer')
@can('admin')
    @include('layouts.client.partials.admin-navbar')
@endcan
@stack('footerScripts')
</body>
</html>
