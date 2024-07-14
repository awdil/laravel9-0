<?php
use App\Models\Customer;
use App\Models\Plant;
use App\Models\Setting;

use App\Models\SocialAuthSetting;
use App\Models\customizeerror;
use App\Models\Customcssjs;
use App\Models\Bussinesshours;
use App\Models\Ticket\Category;
use App\Models\Apptitle;
use App\Models\Footertext;
use App\Models\Seosetting;
use App\Models\Pages;
use App\Models\User;

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

    function getAppTitle()
    {
        if (!session()->has('app_title')) {
            $title = Apptitle::first();
            session(['app_title' => $title]);
        }
        return session('app_title');
    }

    function getFooterText()
    {
        if (!session()->has('footer_text')) {
            $footerText = Footertext::first();
            session(['footer_text' => $footerText]);
        }
        return session('footer_text');
    }

    function getSeoSetting()
    {
        if (!session()->has('seo_setting')) {
            $seoPage = Seosetting::first();
            session(['seo_setting' => $seoPage]);
        }
        return session('seo_setting');
    }

    function getPages()
    {
        if (!session()->has('pages')) {
            $pages = Pages::all();
            session(['pages' => $pages]);
        }
        return session('pages');
    }

    function getPlants()
    {
        if (!session()->has('plants')) {
            $data = Plant::all();
            session(['plants' => $data]);
        }
        return session('plants');
    }

    function getStatusList()
    {
        if (!session()->has('statuses')) {
            $data = ['New'=>'New','Re-Open'=>'Re-Open','Inprogress'=>'Inprogress','On-Hold'=>'On-Hold','Closed'=>'Closed','Suspend'=>'Suspend'];
            session(['statuses' => $data]);
        }
        return session('statuses');
    }

    function getPriority()
    {
        
        if (!session()->has('priorities')) {
            $data = ['Low'=>'Low','High'=>'High','Medium'=>'Medium','Critical'=>'Critical',];
            session(['priorities' => $data]);
        }
        return session('priorities');
    }

    function getCategories()
    {
        if (!session()->has('categories')) {
            $data = Category::all();
            session(['categories' => $data]);
        }
        return session('categories');
    }

    function getUsers()
    {
        if (!session()->has('users')) {
            $data = User::all();
            session(['users' => $data]);
        }
        return session('users');
    }

    function getCustomers()
    {
        if (!session()->has('customers')) {
            $data = Customer::all();
            session(['customers' => $data]);
        }
        return session('customers');
    }
    



