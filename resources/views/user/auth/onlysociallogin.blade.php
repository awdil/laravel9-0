@extends('layouts.custommaster')
    @section('content')
    <div class="pb-3 px-5 pt-0 text-center">
    <!-- <h3 class="mb-2">{{lang('Login', 'menu')}}</h3> -->
    <h3 class="mt-2 mb-2">{{lang('Sign Up or Log In')}}</h3>
    </div>
    @if(setting('login_disable') == 'on')
        <div class="card-body border-top-0 py-3 pb-0">
            <div class="alert alert-light-warning br-13 border-0 text-center" role="alert">
                <span class="">{{setting('login_disable_statement')}}</span>
            </div>
        </div>
    @else

        @if($socialAuthSettings->google_status == 'enable'||$socialAuthSettings->facebook_status == 'enable' || $socialAuthSettings->twitter_status == 'enable')
        <div class="login-icons card-body p-4 text-center justify-content-center">
        
        @if($socialAuthSettings->google_status == 'enable')
        <a class="btn header-buttons text-start social-icon-2 btn-lg btn-google text-white mb-4 btn-block p-0" href="javascript:;" data-bs-toggle="tooltip"
            title="{{lang('Login with Google')}}" onclick="window.location.href = google;" data-bs-original-title="{{lang('Login with Google')}}">
            <div class="d-inline-flex w-7 border-end border-white-1 px-4 py-2 my-auto justify-content-center">
                <i class="fa fa-google"></i>
            </div>
            <span class="px-4 py-2 my-auto text-white">Login with Google</span>
        </a>
        @endif
        @if($socialAuthSettings->facebook_status == 'enable')
        <a class="btn header-buttons text-start social-icon-2 btn-lg btn-facebook text-white mb-4 btn-block p-0" href="javascript:;" data-bs-toggle="tooltip"
            title="{{lang('Login with Facebook')}}" onclick="window.location.href = facebook;" data-bs-original-title="{{lang('Login with Facebook')}}">
            <div class="d-inline-flex w-7 border-end border-white-1 px-4 py-2 my-auto justify-content-center">
                <i class="fa fa-facebook"></i>
            </div>
            <span class="px-4 py-2 my-auto text-white">Login with Facebook</span>
        </a>
        @endif
        @if($socialAuthSettings->twitter_status == 'enable')
        <a class="btn header-buttons text-start social-icon-2 btn-lg btn-twitter text-white btn-block p-0" href="javascript:;" data-bs-toggle="tooltip"
            title="{{lang('Login with Twitter')}}" onclick="window.location.href = twitter;" data-bs-original-title="{{lang('Login with Twitter')}}">
            <div class="d-inline-flex w-7 border-end border-white-1 px-4 py-2 my-auto justify-content-center">
                <i class="fa fa-twitter"></i>
            </div>
            <span class="px-4 py-2 my-auto text-white">Login with Twitter</span>
        </a>
        @endif
        </div>
        @endif
    @endif
    @endsection
    @section('scripts')
    <!-- Captcha js-->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script type="text/javascript">
    "use strict";

    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    // Variables
    var facebook = "{{ route('social.login', 'facebook') }}";
    var google = "{{ route('social.login', 'google') }}";
    var twitter = "{{ route('social.login', 'twitter') }}";
    

    </script>
    @endsection
