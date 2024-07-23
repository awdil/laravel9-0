@php
$userTimezone = Auth::user()->timezone;
$defaultTimezone = setting('default_timezone');
$now = \Carbon\Carbon::now($userTimezone);
@endphp
@if($now->timezone(setting('default_timezone'))->format('Y-m-d') == now()->timezone(setting('default_timezone'))->format('Y-m-d'))
    {{ $now->timezone(setting('default_timezone'))->format('h:i A') }} 
@else
    {{ $now->timezone(setting('default_timezone'))->format('D, d M Y, h:i A') }}
@endif