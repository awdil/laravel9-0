
@extends('layouts.adminmaster')

@section('styles')

<!-- INTERNAl Summernote css -->
<link rel="stylesheet" href="{{asset('assets/plugins/summernote/summernote.css')}}?v=<?php echo time(); ?>">

<!-- INTERNAl Dropzone css -->
<link href="{{asset('assets/plugins/dropzone/dropzone.css')}}?v=<?php echo time(); ?>" rel="stylesheet" />


@endsection

					@section('content')

					<!--Page header-->
					<div class="page-header d-xl-flex d-block">
						<div class="page-leftheader">
							<h4 class="page-title"><span class="font-weight-normal text-muted ms-2">{{lang('Create Complaint', 'menu')}}</span></h4>
						</div>
					</div>
					<!--End Page header-->

					<!-- Create Complaint List-->
					<div class="col-xl-12 col-lg-12 col-md-12">
						<div class="card ">
							<div class="card-header border-0">
								<h4 class="card-title">{{lang('New Complaint')}}</h4>
							</div>
							<form method="post" id="admin_form" enctype="multipart/form-data">
								@honeypot

								<div class="card-body">
									<div class="form-group">
										<div class="row">
											<div class="col-md-2">
												<label class="form-label mb-0 mt-2">{{ lang('Plant') }}<span class="text-red">*</span></label>
											</div>
											<div class="col-md-10">
												<select class="form-control select2-show-search  select2" name="plant_id" id="plant_id">
													<option value="" disabled selected>{{ lang('Select Plant') }}</option>
													@foreach ($plants as $plant)
													<option value="{{ $plant->id }}">{{ $plant->plant_id }}</option>
													@endforeach
												</select>
												<span id="PlantError" class="text-danger alert-message"></span>
												@error('plant_id')
													<span class="invalid-feedback" role="alert">
													<strong>{{ lang($message) }}</strong>
													</span>
												@enderror
											</div>
										</div>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-md-2">
												<label class="form-label mb-0 mt-2">{{ lang('Category') }}<span class="text-red">*</span></label>
											</div>
											<div class="col-md-10">
												<ul class="custom-checkbox-list">
													@foreach ($categories as $category)
													<li>
														<input type="checkbox" id="checkbox_{{ $category->id }}" name="category[]" value="{{ $category->id }}" @if(in_array($category->id, old('category', []))) checked @endif />
														<label for="checkbox_{{ $category->id }}">
															@if($category->image) 
															<img src="{{ asset('uploads/callaction/' . $category->image) }}" alt="{{ $category->name }}" />
															@else 
															<img src="{{ asset('uploads/callaction/noimage/noimage.png') }}" alt="{{ $category->name }}" />
															@endif
															<span class="category-name">{{ $category->name }}</span>
														</label>
													</li>
													@endforeach
												</ul>
												<span id="CategoryError" class="text-danger alert-message"></span>
												@error('category')
													<span class="invalid-feedback" role="alert">
													<strong>{{ lang($message) }}</strong>
													</span>
												@enderror
											</div>
										</div>
									</div>
									<div id="subcategoryDiv"></div>
									
									@if($customfields->isNotEmpty())
										@foreach($customfields as $customfield)
										<div class="form-group ">
											<div class="row">
												<div class="col-md-2">
													<label class="form-label mb-0 mt-2">{{$customfield->fieldnames}}
														@if($customfield->fieldrequired == '1')

														<span class="text-red">*</span>
														@endif
													</label>
												</div>
												<div class="col-md-10">

													@if($customfield->fieldtypes == 'text')

														<input type="{{$customfield->fieldtypes}}" maxlength="255" class="form-control" name="custom_{{$customfield->id}}" id="" {{$customfield->fieldrequired == '1' ? 'required' : ''}}>
													@endif
													@if($customfield->fieldtypes == 'email')

														<input type="{{$customfield->fieldtypes}}" class="form-control" name="custom_{{$customfield->id}}" id="" {{$customfield->fieldrequired == '1' ? 'required' : ''}}>
													@endif
													@if($customfield->fieldtypes == 'textarea')

														<textarea name="custom_{{$customfield->id}}" maxlength="255" class="form-control" id="" cols="30" rows="4" {{$customfield->fieldrequired == '1' ? 'required' : ''}}></textarea>
													@endif
													@if($customfield->fieldtypes == 'checkbox')

														@php
															$coptions = explode(',', $customfield->fieldoptions)
														@endphp
														@foreach($coptions as $key => $coption)
														<label class="custom-control custom-checkbox d-inline-block me-3">
															<input type="{{$customfield->fieldtypes}}" class="custom-control-input {{$customfield->fieldrequired == '1' ? 'required' : ''}}"  name="custom_{{$customfield->id}}[]" value="{{$coption}}" id="" >

															<span class="custom-control-label">{{$coption}}</span>
														</label>

														@endforeach


													@endif
													@if($customfield->fieldtypes == 'select')
														<select name="custom_{{$customfield->id}}" id="" class="form-control select2-show-search" data-placeholder="{{lang('Select')}}" {{$customfield->fieldrequired == '1' ? 'required' : ''}}>
															@php
																$seoptions = explode(',', $customfield->fieldoptions)
															@endphp
															<option ></option>
															@foreach($seoptions as $seoption)

															<option value="{{$seoption}}">{{$seoption}}</option>
															@endforeach
														</select>
													@endif
													@if($customfield->fieldtypes == 'radio')
													@php
														$roptions = explode(',', $customfield->fieldoptions)
													@endphp
													@foreach($roptions as $roption)
													<label class="custom-control custom-radio d-inline-block me-3">
														<input type="{{$customfield->fieldtypes}}" class="custom-control-input" name="custom_{{$customfield->id}}" value="{{$roption}}" {{$customfield->fieldrequired == '1' ? 'required' : ''}}>
														<span class="custom-control-label">{{$roption}}</span>
													</label>


													@endforeach

													@endif

												</div>
											</div>
										</div>
										@endforeach
									@endif
									<div class="form-group ticket-summernote ">
										<div class="row">
											<div class="col-md-2">
												<label class="form-label mb-0 mt-2">{{lang('Description')}}<span class="text-red">*</span></label>
											</div>
											<div class="col-md-10">
												<textarea class="summernote form-control @error('message') is-invalid @enderror" rows="7" name="message">{{old('message')}}</textarea>
												<span id="MessageError" class="text-danger alert-message"></span>
												@error('message')

													<span class="invalid-feedback" role="alert">
														<strong>{{ lang($message) }}</strong>
													</span>
												@enderror

											</div>
										</div>
									</div>

									<div class="form-group">
										<div class="row">
											<div class="col-md-2">
												<label class="form-label mb-0 mt-2">{{lang('Upload File')}}</label>
											</div>
											<div class="col-md-10">
												<div class="form-group mb-0">
													<div class="needsclick dropzone" id="document-dropzone"></div>
												</div>
												<small class="text-muted"><i>{{lang('The file size should not be more than', 'filesetting')}} {{setting('FILE_UPLOAD_MAX')}}{{lang('MB', 'filesetting')}}</i></small>
											</div>
										</div>
									</div>
								</div>
								<div class="card-footer">
									<div class="form-group float-end">
										<button type="submit" id="createticketbtn"  class="btn btn-secondary btn-lg">{{lang('Create Complaint', 'menu')}}</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!--End Create Complaint List-->
					@endsection

		@section('scripts')

		<!-- INTERNAL Vertical-scroll js-->
		<script src="{{asset('assets/plugins/vertical-scroll/jquery.bootstrap.newsbox.js')}}?v=<?php echo time(); ?>"></script>

		<!-- INTERNAL Summernote js  -->
		<script src="{{asset('assets/plugins/summernote/summernote.js')}}?v=<?php echo time(); ?>"></script>

		<!-- INTERNAL Index js-->
		<script src="{{asset('assets/js/support/support-sidemenu.js')}}?v=<?php echo time(); ?>"></script>
		<script src="{{asset('assets/js/support/support-createticket.js')}}?v=<?php echo time(); ?>"></script>
		<script src="{{asset('assets/js/select2.js')}}?v=<?php echo time(); ?>"></script>

		<!-- INTERNAL Dropzone js-->
		<script src="{{asset('assets/plugins/dropzone/dropzone.js')}}?v=<?php echo time(); ?>"></script>

		<!-- INTERNAL Bootstrap-MaxLength js-->
		<script src="{{asset('assets/plugins/bootstrapmaxlength/bootstrap-maxlength.min.js')}}?v=<?php echo time(); ?>"></script>



		<script type="text/javascript">

			"use strict";

            

			// $('#subject').maxlength({
			// 	alwaysShow: true,
			// });


			// Image Upload
			var uploadedDocumentMap = {}
			Dropzone.options.documentDropzone = {
				url: '{{route('imageuploadadmin')}}',
				maxFilesize: '{{setting('FILE_UPLOAD_MAX')}}', // MB
				addRemoveLinks: true,
				acceptedFiles: '{{setting('FILE_UPLOAD_TYPES')}}',
					headers: {
						'X-CSRF-TOKEN': "{{ csrf_token() }}"
					},
				success: function (file, response) {
					$('form').append('<input type="hidden" name="ticket[]" value="' + response.name + '">')
					uploadedDocumentMap[file.name] = response.name
				},
				removedfile: function (file) {
					file.previewElement.remove()
					var name = ''
					if (typeof file.file_name !== 'undefined') {
					name = file.file_name
					}
					else {
					name = uploadedDocumentMap[file.name]
					}
					$('form').find('input[name="ticket[]"][value="' + name + '"]').remove()
				},
				init: function () {
					@if(isset($project) && $project->document)
					var files =
						{!! json_encode($project->document) !!}
					for (var i in files) {
						var file = files[i]
						this.options.addedfile.call(this, file)
						file.previewElement.classList.add('dz-complete')
						$('form').append('<input type="hidden" name="ticket[]" value="' + file.file_name + '">')
					}
					@endif

					this.on('error', function(file, errorMessage) {
						if (errorMessage.message) {

							var errorDisplay = document.querySelectorAll('[data-dz-errormessage]');
							errorDisplay[errorDisplay.length - 1].innerHTML = errorMessage.message;
						}
					});
				}
			}

			// Csrf field
			$.ajaxSetup({
				headers: {
				'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
				}
			});

			// when category change its get the subcat list
			$(document).ready(function() {
				$('input[name="category[]"]').on('change', function() {
					let selectedCategories = [];
					$('input[name="category[]"]:checked').each(function() {
						selectedCategories.push($(this).val());
					});

					$('#subcategoryDiv').empty(); // Clear previous subcategories
					if (selectedCategories.length > 0) {
						selectedCategories.forEach(cat_id => {
							fetchSubcategories(cat_id);
						});
					}
				});

				function fetchSubcategories(cat_id) {
					$.ajax({
						url: "{{ route('guest.subcategoryWithCategorylist') }}",
						type: "POST",
						data: {
							cat_id: cat_id
						},
						cache: false,
						async: true,
						success: function(data) {
							if (data.subcategoriess) {
								let subcategorySection = `
								<div class="form-group subcategory-group mt-3">
									<div class="row">
										<div class="col-md-2">
											<label class="form-label mb-0 mt-2">{{ lang('Subcategories for') }} ${data.category}</label>
										</div>
										<div class="col-md-10">
											<select class="form-control select2-show-search" name="subscategory_${cat_id}[]" multiple data-placeholder="Select Subcategories for ${data.category}">
												${data.subcategoriess}
											</select>
										</div>
									</div>
								</div>`;
								$('#subcategoryDiv').append(subcategorySection);
								$('.select2-show-search').select2(); // Initialize select2 for the new elements
							}
						},
						error: function(data) {
							console.error("Error fetching subcategories:", data);
						}
					});
				}
			});





			// $('#subject').maxlength({
			// 	alwaysShow: true,
			// 	warningClass: "badge badge-xs bg-warning",
			// 	limitReachedClass: "badge badge-xs bg-danger"

			// });

			// summernote
			$('.note-editable').on('keyup', function(e){
				localStorage.setItem('adminmessage', e.target.innerHTML)
			})

			$('#subject').on('keyup', function(e){
				if(e.target.value.length == {{setting('TICKET_CHARACTER')}}){
					$('#subjectmaxtext').removeClass('text-muted')
					$('#subjectmaxtext').addClass('text-red');
				}else{
					$('#subjectmaxtext').removeClass('text-red')
					$('#subjectmaxtext').addClass('text-muted');
				}
				localStorage.setItem('adminsubject', e.target.value)
			})
			$('#email').on('keyup', function(e){
				localStorage.setItem('adminemail', e.target.value)
			})

			$(window).on('load', function(){
				if(localStorage.getItem('adminsubject') || localStorage.getItem('adminmessage') || localStorage.getItem('adminemail')){


                    if(localStorage.getItem('adminsubject')){
                        document.querySelector('#subject').value = localStorage.getItem('adminsubject').slice(0,{{setting('TICKET_CHARACTER')}});
                    }
					document.querySelector('#email').value = localStorage.getItem('adminemail');
					document.querySelector('.summernote').innerHTML = localStorage.getItem('adminmessage');
					document.querySelector('.note-editable').innerHTML = localStorage.getItem('adminmessage');
				}
			})



			$('body').on('submit', '#admin_form', function (e) {
				e.preventDefault();
				$('#SubjectError').html('');
				$('#MessageError').html('');
				$('#EmailError').html('');
				$('#CategoryError').html('');
				$('#verifyotpError').html('');
				var actionType = $('#createticketbtn').val();
				var fewSeconds = 2;
				$('#createticketbtn').html(`Loading.. <i class="fa fa-spinner fa-spin"></i>`);
				$('#createticketbtn').prop('disabled', true);
				var formData = new FormData(this);
                

				let checked  = document.querySelectorAll('.required:checked').length;
				var isValid = checked > 0;
				if(document.querySelectorAll('.required').length == '0'){
					ajax(formData);
				}else{

					if(isValid){
						ajax(formData);
					}else{
						toastr.error('{{lang('Check the all field(*) required', 'alerts')}}')
					}
				}


			});

			function ajax(formData){
				$.ajax({
					type:'post',
					url: '{{url('/admin/createticket')}}',
					data: formData,
					cache:false,
					contentType: false,
					processData: false,

					success: (data) => {

						
						if(data.message == 'domainblock')
						{
							$('#EmailError').html(data.error);
						}
						if(data.message == 'createticket')
						{
							$('#SubjectError').html('');
							$('#MessageError').html('');
							$('#EmailError').html('');
							$('#CategoryError').html('');
							$('#verifyotpError').html('');
							toastr.success(data.success);
							if(localStorage.getItem('adminsubject') || localStorage.getItem('adminmessage') || localStorage.getItem('adminemail')){
								localStorage.removeItem("adminsubject");
								localStorage.removeItem("adminmessage");
								localStorage.removeItem("adminemail");
							}
							window.location.replace('{{url('admin/')}}');
						}

					},
					error: function(data){

						$('#SubjectError').html(data.responseJSON.errors.subject);
						$('#MessageError').html(data.responseJSON.errors.message);
						$('#EmailError').html(data.responseJSON.errors.email);
						$('#CategoryError').html(data.responseJSON.errors.category);
						$('#verifyotpError').html(data.responseJSON.errors.verifyotp);

					}
				});
			}

		</script>

		@endsection
