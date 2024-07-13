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
                                    
                                        <div class="row d-flex align-items-center">
                                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
                                                <label class="form-label d-flex align-items-center">{{lang('Upload Icon')}} <span class="text-red ms-1">*</span> </label>
                                            </div>
                                            <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-9">
                                                <div class="@error('image') is-invalid @enderror ">
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
                                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col-3">
                                                
                                            </div>
                                            <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9 col-9">
                                                <div id="image-preview" class="file-image-1 d-flex justify-content-end" style="display: none;">
                                                    <div class="product-image custom-ul">
                                                        <a href="#">
                                                            <img id="edit-image" src="" class="br-5" alt="">
                                                        </a>
                                                        <ul class="icons">
                                                            <li>
                                                                <a href="javascript:void(0);" class="bg-danger delete-image" data-id="">
                                                                    <i class="fe fe-trash"></i>
                                                                </a>
                                                            </li>
                                                        </ul>
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
