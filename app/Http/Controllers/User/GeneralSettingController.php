<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Apptitle;
use App\Models\Footertext;
use App\Models\Seosetting;
use App\Models\Pages;
use App\Models\Customer;

class GeneralSettingController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $title = getAppTitle();
        $footertext = getFooterText();
        $seopage = getSeoSetting();
        $pages = getPages();
        $post = $pages;
        $data['basic'] = $title;
        $data['title'] = $title;
        $data['footertext'] = $footertext;
        $data['seopage'] = $seopage;
        $data['page'] = $post;

        return view('user.generalsetting')->with($data);
    }
}
