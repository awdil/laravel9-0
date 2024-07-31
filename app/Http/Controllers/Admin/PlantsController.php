<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Plant;
use App\Models\Projects;
use Illuminate\Http\Request;

use App\Models\Department;
use App\Models\Apptitle;
use App\Models\Footertext;
use App\Models\Seosetting;
use App\Models\Pages;
use Illuminate\Support\Facades\DB;

class PlantsController extends Controller
{
    public function index()
    {

        $this->authorize('Department Access');
        $data['projects'] = Projects::latest()->get();
        $plant = Plant::latest()->get();
        $data['plants'] = $plant;

        return view('admin.plant.index')->with($data);
    }

    public function createOldish(Request $request)
    {
        $validate = Plant::find($request->id);
        if(!$validate){

            $request->validate([

                'plant_id'=> 'required|max:255|unique:plant_id',

            ]);


        }
        if($validate){
            if($request->faqcatname == $validate->faqcategoryname){

                $request->validate([

                    'plant_id'=> 'required|max:255',

                ]);

            }else{

                $request->validate([

                    'plant_id'=> 'required|max:255|unique:plant_id',

                ]);
            }
        }

          $plant = Plant::updateOrCreate( ['id' => $request->id], ['plant_id' => $request->plant_id]);

          return response()->json(['code'=>200, 'success'=> lang('The Plant has been successfully updated.', 'alerts'),'data' => $plant], 200);
    }

    public function create(Request $request)
    {
        // Check if it's an update or create new entry
        $plant = Plant::find($request->id);

        // Common validation rules
        $rules = [
            'plant_id' => 'required|max:255',
        ];

        // Handle unique validation for new entries
        if (!$plant) {
            $rules['plant_id'] .= '|unique:plants'; // Ensure plant ID is unique when creating a new plant
        }

        // Validate request data
        $validatedData = $request->validate($rules);

        // Use updateOrCreate method to either update existing or create new
        $data = [
            'plant_id' => $request->plant_id,
            'project_id' => $request->project_id,
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'installation_date' => $request->installation_date,
            'zone' => $request->zone,
            'plant_type' => $request->plant_type,
            'address' => $request->address,
            'status' => $request->status,
        ];
        $plant = Plant::updateOrCreate(['id' => $request->id], $data);

        // Return JSON response
        return response()->json([
            'code' => 200,
            'message' => lang('The Plant has been successfully updated.', 'alerts'),
            'data' => $plant
        ], 200);
    }


    public function edit($id)
    {
        $this->authorize('Department Edit');
        $plant = Plant::find($id);
        return response()->json($plant);
    }

    public function delete($id)
    {
        $this->authorize('Department Delete');
        $pant = Plant::find($id);
		$pant->delete();

		return response()->json(['success'=>lang('The Plant has been successfully deleted.', 'alerts')]);
    }

    public function deleteall(Request $request)
    {
        $this->authorize('Department Delete');
        $id_array = $request->input('id');

		$departments = Plant::whereIn('id', $id_array)->get();

		foreach($departments as $department){
			$department->delete();

		}
		return response()->json(['success'=> lang('The Department has been successfully deleted.', 'alerts')]);
    }

    public function status(Request $request, $id)
    {
        $this->authorize('Department Edit');

        $calID = Plant::find($id);
        $calID->status = $request->status;
        $calID->save();

        return response()->json(['code'=>200, 'success'=>lang('Updated Successfully', 'alerts')], 200);

    }

}
