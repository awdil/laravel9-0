<!-- Add Plant-->
<div class="modal fade sprukodepartmentcat" id="adddplant" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">{{lang('Add Plant')}}</h5>
                <button class="close" data-bs-dismiss="modal" onclick="cancelplant()" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <form method="POST" id="plant_form">
                <input type="hidden" name="p_id" id="p_id">
                @csrf
                @honeypot
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">{{lang('Plant ID')}} <span class="text-red">*</span></label>
                                <input type="text" class="form-control" placeholder="{{lang('Ex:- CDWA-KSR-NA141-C254')}}" name="plant_id" id="plant_id" autofocus required>
                                <span id="plant_idError" class="text-danger alert-message"></span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">{{lang('Project')}} <span class="text-red">*</span></label>
                                <select class="form-control select2-show-search  select2 @error('Project') is-invalid @enderror" data-placeholder="{{lang('Select Project')}}" id = "project_id" name="project_id">
								<option label="{{lang('Select Project')}}"></option>
								@foreach($projects as $project)

									<option  value="{{$project->id}}" {{ old('project') == $project->id ? "selected" : "" }}> {{$project->name}}</option>

								@endforeach

							</select>

                                <span id="project_idError" class="text-danger alert-message"></span>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">{{lang('Latitude')}}</label>
                                <input type="text" class="form-control" placeholder="{{lang('Ex:- 12.8923432894')}}" name="latitude" id="latitude" autofocus required>
                                <span id="latitudeError" class="text-danger alert-message"></span>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="form-label">{{lang('Longitude')}}</label>
                                <input type="text" class="form-control" placeholder="{{lang('Ex:- 72.8923432894')}}" name="longitude" id="longitude" autofocus required>
                                <span id="longitudeError" class="text-danger alert-message"></span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="form-label">{{lang('Installation Date')}} </label>
                                <input type="date" class="form-control" placeholder="{{lang('Ex:- 2024-07-02')}}" name="installation_date" id="installation_date" autofocus required>
                                <span id="installation_dateError" class="text-danger alert-message"></span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="form-label">{{lang('Zone')}}</label>
                                <input type="text" class="form-control" placeholder="{{lang('Ex:- 6')}}" name="zone" id="zone" autofocus required>
                                <span id="zoneError" class="text-danger alert-message"></span>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label class="form-label">{{lang('Plant Type')}} </label>
                                <input type="text" class="form-control" placeholder="{{lang('Ex:- RO')}}" name="plant_type" id="plant_type" autofocus required>
                                <span id="plant_typeError" class="text-danger alert-message"></span>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label class="form-label">{{lang('Address')}} <span class="text-red">*</span></label>
                                <input type="text" class="form-control" placeholder="{{lang('Ex:- Ram Pura Changa Manga')}}" name="address" id="address" autofocus required>
                                <span id="addressError" class="text-danger alert-message"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <a href="#" class="btn btn-outline-danger" id="btnclose" onclick="cancelplant()" data-bs-dismiss="modal">{{lang('Close')}}</a>
                    <button type="button" class="btn btn-secondary" id="btnsave" onclick="createplant()">{{lang('Save')}}</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- End Add Plant -->
