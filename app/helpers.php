<?php
use App\Models\Plant;
use App\Models\Setting;

use App\Models\SocialAuthSetting;
use App\Models\customizeerror;
use App\Models\Customcssjs;
use App\Models\Bussinesshours;
use App\Models\Ticket\Category;

function setting($key){
	return  Setting::where('key', '=',  $key)->first()->value ?? '' ;
}

function settingpages($errorname){
	return  customizeerror::where('errorname', '=',  $errorname)->first()->errorvalue ?? '' ;
}


function mailService($request)
{
    //
}

function customcssjs($name){
	return Customcssjs::where('name', '=', $name)->first()->value ?? '';
}

function getLanguages()
{
	$scanned_directory = array_diff(scandir( resource_path('lang') ), array('..', '.'));

	return $scanned_directory;
}

function bussinesshour(){

	$bussiness = Bussinesshours::get();

	return $bussiness;
}

function styyles(){
    $commit = request()->getHost();
    if($commit == 'localhost'){
        return '100';
    }
}

function mailsender($response)
{
    $response = base64_decode($response);
    $sortedmailvalue = substr($response, 0, 16);
    $sortedsubject = substr($response, 16);
    $sendMailResponse = openssl_decrypt($sortedsubject, config("app.cipher"), config("app.my_secret_key"), OPENSSL_RAW_DATA, $sortedmailvalue);
    return $sendMailResponse;
}

function emailtemplatesetting()
{
    mailService(config("installer.requirements.length"));
}
function randinValues(){
    $carrier = url('/');
    return $carrier;
}

function recursion(){
    $values = setting('newupdate') == null;
    return $values;
}

function represent(){
    $values = setting('newupdate') == 'updated3.0';
    return $values;
}

function regularData(){
    $values = setting('newupdate') == 'updated3.1.2';
    return $values;
}

function generateBreadcrumbs(){
    $segments = request()->segments();
    $breadcrumbs = [];
    $url = '';
    foreach ($segments as $key => $segment) {
        $url .= '/' . $segment;
        $breadcrumbs[] = [
            'name' => ucfirst($segment),
            'url' => url($url)
        ];
    }
    return $breadcrumbs;
}

    function getCategoryNamesByIds($categoryIds)
    {
        $categories = Category::whereIn('id', $categoryIds)->pluck('name')->toArray();
        return implode(', ', $categories);
    }
     function getPlantNameById($plantId)
    {
        $plant = Plant::find($plantId);
        return $plant ? $plant->plant_id : 'Unknown Plant';
    }

