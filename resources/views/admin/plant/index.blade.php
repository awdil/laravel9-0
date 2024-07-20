@extends('layouts.adminmaster')

@section('styles')


    <!-- INTERNAL Data table css -->
    <link href="{{asset('assets/plugins/datatable/css/dataTables.bootstrap5.min.css')}}?v=<?php echo time(); ?>" rel="stylesheet" />
    <link href="{{asset('assets/plugins/datatable/responsive.bootstrap5.css')}}?v=<?php echo time(); ?>" rel="stylesheet" />

    <!-- INTERNAL Sweet-Alert css -->
    <link href="{{asset('assets/plugins/sweet-alert/sweetalert.css')}}?v=<?php echo time(); ?>" rel="stylesheet" />
		@endsection

@section('content')

		<!--Page header-->
		<div class="page-header d-xl-flex d-block">
			<div class="page-leftheader">
				<h4 class="page-title"><span class="font-weight-normal text-muted ms-2">{{lang('Plants', 'menu')}}</span></h4>
			</div>
		</div>
		<!--End Page header-->

		<div class="col-xl-12 col-lg-12 col-md-12">
			<div class="card ">
				<div class="card-header border-0 d-sm-max-flex">
					<h4 class="card-title">{{lang('Plants', 'menu')}}</h4>
					<div class="card-options mt-sm-max-2">
						@can('Department Create')

						<a href="javascript:void(0)" class="btn btn-secondary me-3" id="create-new-department" onclick="adddplant()">{{lang('Add Plants')}}</a>
						@endcan

					</div>
				</div>
				<div class="card-body" >
					<div class="table-responsive spruko-delete">
						@can('Department Delete')

						<button id="massdeletenotify" class="btn btn-outline-light btn-sm mb-4 data-table-btn"><i class="fe fe-trash"></i> {{lang('Delete')}}</button>
						@endcan

						<table class="table table-bordered border-bottom text-nowrap ticketdeleterow w-100" id="support-articlelists">
							<thead>
								<tr>
									@can('Department Delete')

									<th width="10" >
										<input type="checkbox"  id="customCheckAll">
										<label  for="customCheckAll"></label>
									</th>
									@endcan
									@cannot('Department Delete')

									<th width="10" >
										<input type="checkbox"  id="customCheckAll" disabled>
										<label  for="customCheckAll"></label>
									</th>
									@endcannot

									<th >{{lang('Plant ID')}}</th>
									<th class="w-5">{{lang('Address')}}</th>
									<th class="w-5">{{lang('Installation Date')}}</th>
									<th class="w-5">{{lang('Status')}}</th>
									<th class="w-5">{{lang('Actions')}}</th>
								</tr>
							</thead>
							<tbody>
								@php $i = 1; @endphp
									@foreach($plants as $plant)
									<tr>
										<td>
											@if(Auth::user()->can('Department Delete'))
												<input type="checkbox" name="spruko_checkbox[]" class="checkall" value="{{$plant->id}}" />
											@else
												<input type="checkbox" name="spruko_checkbox[]" class="checkall" value="{{$plant->id}}" disabled />
											@endif
										</td>
										<td>{{Str::limit($plant->plant_id)}}</td>
										<td>{{Str::limit($plant->address)}}</td>
										<td>{{$plant->installation_date}}</td>
										<td>
											@if(Auth::user()->can('Department Edit'))
												@if($plant->status == '1')

													<label class="custom-switch form-switch mb-0">
														<input type="checkbox" name="status" data-id="{{$plant->id}}" id="myonoffswitch{{$department->id}}" value="1" class="custom-switch-input tswitch" checked>
														<span class="custom-switch-indicator"></span>
													</label>
												@else

													<label class="custom-switch form-switch mb-0">
														<input type="checkbox" name="status" data-id="{{$plant->id}}" id="myonoffswitch{{$plant->id}}" value="1" class="custom-switch-input tswitch">
														<span class="custom-switch-indicator"></span>
													</label>
												@endif
											@else
												~
											@endif
										</td>
										<td>
											<div class = "d-flex">
												@if(Auth::user()->can('Department Edit'))

													<a href="javascript:void(0)" data-id="{{$plant->id}}" onclick="editplant(event.target)" class="action-btns1">
														<i class="feather feather-edit text-primary" data-id="{{$plant->id}} " data-bs-toggle="tooltip" data-bs-placement="top" title="{{lang('Edit')}}"></i>
													</a>
												@else
													~
												@endif
												@if(Auth::user()->can('Department Delete'))
													<a href="javascript:void(0)" data-id="{{$plant->id}}" class="action-btns1"  onclick="deleteplant(event.target)">
														<i class="feather feather-trash-2 text-danger" data-id="{{$plant->id}} " data-bs-toggle="tooltip" data-bs-placement="top" title="{{lang('Delete')}}"></i>
													</a>
												@else
													~
												@endif

											</div>
										</td>
									</tr>
								@endforeach
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		@endsection


		@section('scripts')

		<!-- INTERNAL Vertical-scroll js-->
		<script src="{{asset('assets/plugins/vertical-scroll/jquery.bootstrap.newsbox.js')}}"></script>

		<!-- INTERNAL Data tables -->
		<script src="{{asset('assets/plugins/datatable/js/jquery.dataTables.min.js')}}"></script>
		<script src="{{asset('assets/plugins/datatable/js/dataTables.bootstrap5.js')}}"></script>
		<script src="{{asset('assets/plugins/datatable/dataTables.responsive.min.js')}}"></script>
		<script src="{{asset('assets/plugins/datatable/responsive.bootstrap5.min.js')}}"></script>

		<!-- INTERNAL Sweet-Alert js-->
		<script src="{{asset('assets/plugins/sweet-alert/sweetalert.min.js')}}"></script>

		<script type="text/javascript">

			"use strict";

			(function($)  {

				// Variables
				var SITEURL = '{{url('')}}';

				// Csrf Field
				$.ajaxSetup({
					headers: {
						'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
					}
				});

				// Datatable
				// $('#support-articlelists').DataTable({
				// 	language: {
				// 		searchPlaceholder: search,
				// 		scrollX: "100%",
				// 		sSearch: '',
				// 	},
				// 	order:[],
				// 	columnDefs: [
				// 		{ "orderable": false, "targets":[ 1,3,4] }
				// 	],
				// });

                let prev = {!! json_encode(lang("Previous")) !!};
                let next = {!! json_encode(lang("Next")) !!};
                let nodata = {!! json_encode(lang("No data available in table")) !!};
                let noentries = {!! json_encode(lang("No entries to show")) !!};
                let showing = {!! json_encode(lang("showing page")) !!};
                let ofval = {!! json_encode(lang("of")) !!};
                let maxRecordfilter = {!! json_encode(lang("- filtered from ")) !!};
                let maxRecords = {!! json_encode(lang("records")) !!};
                let entries = {!! json_encode(lang("entries")) !!};
                let show = {!! json_encode(lang("Show")) !!};
                let search = {!! json_encode(lang("Search...")) !!};
                // Datatable
                $('#support-articlelists').dataTable({
                    language: {
                        searchPlaceholder: search,
                        scrollX: "100%",
                        sSearch: '',
                        paginate: {
                        previous: prev,
                        next: next
                        },
                        emptyTable : nodata,
                        infoFiltered: `${maxRecordfilter} _MAX_ ${maxRecords}`,
                        info: `${showing} _PAGE_ ${ofval} _PAGES_`,
                        infoEmpty: noentries,
                        lengthMenu: `${show} _MENU_ ${entries} `,
                    },
                    order:[],
                    columnDefs: [
                        { "orderable": false, "targets":[ 0,1,4] }
                    ],
                });

				//Mass Delete
				$('body').on('click', '#massdeletenotify', function () {
					var id = [];
					$('.checkall:checked').each(function(){
						id.push($(this).val());
					});
					if(id.length > 0){
						swal({
							title: `{{lang('Are you sure you want to continue?', 'alerts')}}`,
							text: "{{lang('This might erase your records permanently', 'alerts')}}",
							icon: "warning",
							buttons: true,
							dangerMode: true,
						})
						.then((willDelete) => {
							if (willDelete) {
								$.ajax({
									url:"{{ route('department.deleteall')}}",
									method:"post",
									data:{id:id},
									success:function(data)
									{
										toastr.success(data.success);
										location.reload();

									},
									error:function(data){
										console.log(data);
									}
								});
							}
						});
					}else{
						toastr.error('{{lang('Please select at least one check box.', 'alerts')}}');
					}

				});
				//Mass Delete

				// checkbox check all
				$('#customCheckAll').on('click', function() {
					$('.checkall').prop('checked', this.checked);
				});

				$('.form-select').select2({
					minimumResultsForSearch: Infinity,
					width: '100%'
				});
				$('#customCheckAll').prop('checked', false);

				$('.checkall').on('click', function(){
					if($('.checkall:checked').length == $('.checkall').length){
						$('#customCheckAll').prop('checked', true);
					}else{
						$('#customCheckAll').prop('checked', false);
					}
				});

				// Status change department
				$('body').on('click', '.tswitch', function () {
					var _id = $(this).data("id");
					var status = $(this).prop('checked') == true ? '1' : '0';
					$.ajax({
						type: "post",
						url: SITEURL + "/admin/department/status"+'/'+_id,
						data: {'status': status},
						success: function (data) {
							toastr.success(data.success);
						},
						error: function (data) {
							console.log('Error:', data);
						}
					});
				});



			})(jQuery);

			// Add palnt
			function adddplant() {
                $("#p_id").val(''); // Clear the hidden plant ID
				$(".modal-title").text('{{lang('Add New Plant')}}'); // Set the modal title for adding a new plant
				$('#project_id').val('');
				$('#latitude').val('');
				$('#longitude').val('');
				$('#installation_date').val('');
				$('#zone').val('');
				$('#plant_type').val('');
				$('#address').val('');
				$('#plant_form').trigger("reset");
				$('#adddplant').modal('show'); 
            }

			// edit plant
            function editplant0old(event) {
				var id = $(event).data("id");
				let _url = `{{url('/admin/plants/edit/${id}')}}`; // URL constructed dynamically based on the plant ID

				$(".modal-title").text('{{lang('Edit Plant')}}'); // Set the modal title for editing
				$.ajax({
					url: _url,
					type: "GET",
					success: function(response) {
						if(response) {
							// Reset error messages
							$('.alert-message').text('');

							// Populate form fields with response data
							$("#p_id").val(response.id);
							$("#plant_id").val(response.plant_id);
							$("#project_id").val(response.project_id);
							$("#latitude").val(response.latitude);
							$("#longitude").val(response.longitude);
							$("#installation_date").val(response.installation_date);
							$("#zone").val(response.zone);
							$("#plant_type").val(response.plant_type);
							$("#address").val(response.address);

							// Check the status checkbox based on the response
							if (response.status === "1" || response.status === true) {
								$('#status').prop('checked', true);
							} else {
								$('#status').prop('checked', false);
							}

							// Show the modal window
							$('#adddplant').modal('show');
						}
					},
					error: function(err) {
						// Log errors or show an error message
						console.log(err);
						alert('Error retrieving plant data. Please try again.');
					}
				});
			}

			function editplant(event) {
				var id = $(event).data("id");
				let _url = `{{url('/admin/plants/edit/${id}')}}`; // URL constructed dynamically based on the plant ID

				$(".modal-title").text('{{lang('Edit Plant')}}'); // Set the modal title for editing
				$.ajax({
					url: _url,
					type: "GET",
					success: function(response) {
						if(response) {
							// Reset error messages
							$('.alert-message').text('');

							// Populate form fields with response data
							$("#p_id").val(response.id);
							$("#plant_id").val(response.plant_id);
							$("#latitude").val(response.latitude);
							$("#longitude").val(response.longitude);
							$("#installation_date").val(response.installation_date);
							$("#zone").val(response.zone);
							$("#plant_type").val(response.plant_type);
							$("#address").val(response.address);

							// Check the status checkbox based on the response
							$('#status').prop('checked', response.status === "1" || response.status === true);

							// Set the selected option for the project dropdown
							$('#project_id').val(response.project_id).trigger('change'); // Ensure to trigger change event if using plugins like Select2

							// Show the modal window
							$('#adddplant').modal('show');
						}
					},
					error: function(err) {
						// Log errors or show an error message
						console.log(err);
						alert('Error retrieving plant data. Please try again.');
					}
				});
			}



			// Delete plant
            function deleteplant(event) {
                var id  = $(event).data("id");
                let _url = `{{url('/admin/plants/delete/${id}')}}`;
                let _token   = $('meta[name="csrf-token"]').attr('content');
				swal({
					title: `{{lang('Are you sure you want to continue?', 'alerts')}}`,
					text: "{{lang('This might erase your records permanently', 'alerts')}}",
					icon: "warning",
					buttons: true,
					dangerMode: true,
				})
				.then((willDelete) => {
					if (willDelete) {
						$.ajax({
							url: _url,
							type: 'DELETE',
							data: {
								_token: _token
							},
							success: function(response) {
								toastr.success(response.success);
								location.reload();
							},
							error: function (data) {
								console.log('Error:', data);
							}
						});
					}
				});
            }

			// create the plant
            function createplant() {
				console.log('Creating new plant...');
				// Reset error messages
				$('.alert-message').text('');

				// Collect form data
				var id = $('#p_id').val();
				var plant_id = $('#plant_id').val();
				var project_id = $('#project_id').val();
				var latitude = $('#latitude').val();
				var longitude = $('#longitude').val();
				var installation_date = $('#installation_date').val();
				var zone = $('#zone').val();
				var plant_type = $('#plant_type').val();
				var address = $('#address').val();
				var status = $('#status').prop('checked') ? '1' : '0'; // Checkbox value

				// Formulate request URL and CSRF token
				let _url = `{{route('plants.create')}}`;
				let _token = $('meta[name="csrf-token"]').attr('content');

				// Button delay logic
				$('#btnsave').prop('disabled', true);
				setTimeout(function(){
					$('#btnsave').prop('disabled', false);
				}, 2000); // Re-enable after 2 seconds

				// AJAX request to server
				$.ajax({
					url: _url,
					type: "POST",
					data: {
						id: id,
						plant_id: plant_id,
						project_id: project_id,
						latitude: latitude,
						longitude: longitude,
						installation_date: installation_date,
						zone: zone,
						plant_type: plant_type,
						address: address,
						status: status,
						_token: _token
					},
					success: function(response) {
						if(response.code == 200) {
							$('#plant_form').trigger("reset"); // Reset form
							$('#adddplant').modal('hide'); // Hide modal
							toastr.success(response.message); // Show success message
							location.reload(); // Reload the page to update the list
						}
					},
					error: function(response) {
						// Show error messages for specific fields
						if(response.responseJSON.errors) {
							Object.keys(response.responseJSON.errors).forEach(function(key) {
								$(`#${key}Error`).text(response.responseJSON.errors[key][0]);
							});
						}
					}
				});
			}


			// cancel plant
			function canceldepartment() {
				$('#plant_form').trigger("reset");
			}

		</script>

		@endsection


        @section('modal')

   	@include('admin.plant.model')

	@endsection
