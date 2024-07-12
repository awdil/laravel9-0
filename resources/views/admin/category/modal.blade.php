                <!-- Add testimonial-->
                <div class="modal fade sprukosubcat"  id="addcategory" aria-hidden="true">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" ></h5>
                                <button  class="close" data-bs-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <form method="POST" enctype="multipart/form-data" id="category_form" name="category_form">
                                <input type="hidden" name="category_id" id="category_id">
                                @csrf
                                @honeypot
                                <div class="modal-body">
                                    <!-- <div class="form-group">
                                        <div class="row">
                                            <div class="col-xl-2 col-lg-2 col-md-3 col-sm-3 col-3">
                                                <label class="form-label d-flex align-items-center">{{lang('Name')}} <span class="text-red ms-1">*</span> </label>
                                            </div>
                                            <div class="col-xl-10 col-lg-10 col-md-9 col-sm-9 col-9">
                                                <input type="text" class="form-control" name="name" id="name">
                                                <span id="nameError" class="text-danger alert-message"></span>
                                            </div>
                                        </div>
                                    </div> -->
                                    <div class="form-group">
                                        <div class="row d-flex align-items-center">
                                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
                                                <label class="form-label d-flex align-items-center">{{lang('Name')}} <span class="text-red ms-1">*</span> </label>
                                            </div>
                                            <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-9">
                                                <input type="text" class="form-control" name="name" id="name">
                                                <span id="nameError" class="text-danger alert-message"></span>
                                            </div>
                                    
                                        </div>
                                    </div>
                                    

                                    <div class="form-group">
                                    
                                        <div class="spfileupload">
                                            <div class="row">
                                                <div class="col-xl-7 col-lg-9 col-md-9 col-sm-9">
                                                    <div class="form-group">
                                                        <div class="@error('image') is-invalid @enderror ">
                                                            <label class="form-label fs-16">{{lang('Upload Icon', 'setting')}}</label>
                                                            <div class="input-group file-browser">
                                                                <input class="form-control " name="image" type="file" >

                                                            </div>
                                                            <small class="text-muted"><i>{{lang('The file size should not be more than 5MB', 'filesetting')}}</i></small>
                                                        </div>
                                                        @error('image')

                                                        <span class="invalid-feedback" role="alert">
                                                            <strong>{{ lang($message) }}</strong>
                                                        </span>
                                                        @enderror

                                                    </div>
                                                </div>
                                                <div class="col-xl-5 col-lg-3 col-md-3 col-sm-3">
                                                    <div class="file-image-1 ms-sm-auto sprukologoss ms-sm-auto">
                                                        <div class="product-image sprukologoimages">
                                                            @if($title->image == null)
                                                            <img src="{{asset('uploads/logo/logo/logo-white.png')}}" class="br-5" alt="logo">
                                                            @else

                                                            <button class="btn ticketnotedelete border-white text-gray logosdelete" value="logo1" data-id="">
                                                                <i class="feather feather-x" ></i>
                                                            </button>
                                                            <img src="" class="br-5" alt="">
                                                            @endif
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                                <div class="modal-footer">
                                    <a href="#" class="btn btn-outline-danger" data-bs-dismiss="modal">{{lang('Close')}}</a>
                                    <button type="submit" class="btn btn-secondary" id="btnsave"  >{{lang('Save')}}</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- End  Add testimonial  -->
