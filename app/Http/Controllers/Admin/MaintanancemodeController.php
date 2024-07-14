<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Apptitle;
use App\Models\Footertext;
use App\Models\Seosetting;
use App\Models\Pages;
use App\Models\Setting;
use Artisan;

class MaintanancemodeController extends Controller
{
    public function index(){

        $this->authorize('Maintenance Mode Access');

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

        return view('admin.maintanancemode.index')->with($data);
    }

    public function store(Request $request){

        if($request->input('maintenancemode') == 'off'){

            $data['MAINTENANCE_MODE']  =  $request->maintenancemode;
            $data['MAINTENANCE_MODE_VALUE']  =  null;
            $this->updateSettings($data);

            Artisan::call('up');

            return redirect()->back()->with('success', lang('Updated Successfully', 'alerts'));

        }
        if($request->input('maintenancemode') == 'on'){

            $data['MAINTENANCE_MODE']  =  $request->maintenancemode;
            $data['MAINTENANCE_MODE_VALUE']  =  $request->input('maintenancemode_value');
            $this->updateSettings($data);

            Artisan::call('down --secret="'.setting('MAINTENANCE_MODE_VALUE').'" ');

            return redirect()->back()->with('success', lang('Updated Successfully', 'alerts'));

        }
        
    }

    /**
     *  Settings Save/Update.
     *
     * @return \Illuminate\Http\Response
     */
    private function updateSettings($data)
    {
        foreach($data as $key => $val){
        	$setting = Setting::where('key', $key);
        	if( $setting->exists() )
        	$setting->first()->update(['value' => $val]);
        }

    }
}
