@php
    $title = getAppTitle();
    $footerText = getFooterText();
    $seopage = getSeoSetting();
    $pages = getPages();
@endphp
<!--aside open-->
<aside class="app-sidebar">
    <div class="app-sidebar__logo">
        <a class="header-brand" href="{{url('admin')}}">
            {{--Logo--}}
            @if ($title->image == null)

            <img src="{{asset('uploads/logo/logo/logo-white.png')}}" class="header-brand-img dark-logo" alt="logo">
            @else

            <img src="{{asset('uploads/logo/logo/'.$title->image)}}" class="header-brand-img dark-logo" alt="logo">
            @endif

            {{--Dark-Logo--}}
            @if ($title->image1 == null)

            <img src="{{asset('uploads/logo/darklogo/logo.png')}}" class="header-brand-img desktop-lgo" alt="dark-logo">
            @else

            <img src="{{asset('uploads/logo/darklogo/'.$title->image1)}}" class="header-brand-img desktop-lgo"
                alt="dark-logo">
            @endif

            {{--Mobile-Logo--}}
            @if ($title->image2 == null)

            <img src="{{asset('uploads/logo/icon/icon.png')}}" class="header-brand-img mobile-logo" alt="mobile-logo">
            @else

            <img src="{{asset('uploads/logo/icon/'.$title->image2)}}" class="header-brand-img mobile-logo"
                alt="mobile-logo">
            @endif

            {{--Mobile-Dark-Logo--}}
            @if ($title->image3 == null)

            <img src="{{asset('uploads/logo/darkicon/icon-white.png')}}" class="header-brand-img darkmobile-logo"
                alt="mobile-dark-logo">
            @else

            <img src="{{asset('uploads/logo/darkicon/'.$title->image3)}}" class="header-brand-img darkmobile-logo"
                alt="mobile-dark-logo">
            @endif

        </a>
    </div>
    <div class="app-sidebar3">
        
        <ul class="side-menu custom-ul">

            <li class="slide">
                <a class="side-menu__item" href="{{url('admin/')}}">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24"
                        width="24px" fill="#000000">
                        <path d="M0 0h24v24H0V0z" fill="none" />
                        <path
                            d="M19 5v2h-4V5h4M9 5v6H5V5h4m10 8v6h-4v-6h4M9 17v2H5v-2h4M21 3h-8v6h8V3zM11 3H3v10h8V3zm10 8h-8v10h8V11zm-10 4H3v6h8v-6z" />
                    </svg>
                    <span class="side-menu__label">{{lang('Dashboard', 'Menu')}}</span>
                </a>
            </li>
        

           <!--- Employee menu tickets --->

           @if(Auth::user()->dashboard == 'Admin')

           <li class="slide">
               <a class="side-menu__item" data-bs-toggle="slide" href="#">
                   <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0z" fill="none"/><path d="M22 10V6c0-1.11-.9-2-2-2H4c-1.1 0-1.99.89-1.99 2v4c1.1 0 1.99.9 1.99 2s-.89 2-2 2v4c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-4c-1.1 0-2-.9-2-2s.9-2 2-2zm-2-1.46c-1.19.69-2 1.99-2 3.46s.81 2.77 2 3.46V18H4v-2.54c1.19-.69 2-1.99 2-3.46 0-1.48-.8-2.77-1.99-3.46L4 6h16v2.54zM11 15h2v2h-2zm0-4h2v2h-2zm0-4h2v2h-2z"/></svg>
                   <span class="side-menu__label">{{lang('Manage Complaints', 'Menu')}}</span><i class="angle fa fa-angle-right"></i>
               </a>
               <ul class="slide-menu custom-ul">
                   <li><a href="{{route('admin.recenttickets')}}" class="slide-item">{{lang('Recent Complaints', 'Menu')}}</a></li>
                   <li><a href="{{url('/admin/all-tickets')}}" class="slide-item">{{lang('All Complaints', 'Menu')}}</a></li>
                   <li><a href="{{url('/admin/activeticket')}}" class="slide-item">{{lang('Active Complaints', 'Menu')}}</a></li>
                   <!-- <li><a href="{{url('/admin/closedticket')}}" class="slide-item">{{lang('Closed Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.onholdticket')}}" class="slide-item">{{lang('On-Hold Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.overdueticket')}}" class="slide-item">{{lang('Overdue Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.allassignedtickets')}}" class="slide-item">{{lang('Assigned Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.suspendedtickets')}}" class="slide-item">{{lang('Suspended Complaints', 'Menu')}}</a></li> -->


               </ul>
           </li>

           <li class="slide">
               <a class="side-menu__item" data-bs-toggle="slide" href="#">
                   <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0z" fill="none"/><path d="M22 10V6c0-1.11-.9-2-2-2H4c-1.1 0-1.99.89-1.99 2v4c1.1 0 1.99.9 1.99 2s-.89 2-2 2v4c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-4c-1.1 0-2-.9-2-2s.9-2 2-2zm-2-1.46c-1.19.69-2 1.99-2 3.46s.81 2.77 2 3.46V18H4v-2.54c1.19-.69 2-1.99 2-3.46 0-1.48-.8-2.77-1.99-3.46L4 6h16v2.54zM11 15h2v2h-2zm0-4h2v2h-2zm0-4h2v2h-2z"/></svg>
                   <span class="side-menu__label">{{lang('Self Complaints', 'Menu')}}</span><i class="angle fa fa-angle-right"></i>
               </a>
               <ul class="slide-menu custom-ul">
                   <li><a href="{{route('admin.selfassignticketview')}}" class="slide-item">{{lang('Self Assigned Complaints', 'Menu')}}</a></li>
                   <li><a href="{{url('/admin/myassignedtickets')}}" class="slide-item">{{lang('My Assigned Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.myclosedtickets')}}" class="slide-item">{{lang('Closed Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.mysuspendtickets')}}" class="slide-item">{{lang('Suspend Complaints', 'Menu')}}</a></li>
               </ul>
           </li>
           @endif
           @if(Auth::user()->dashboard == 'Employee' || Auth::user()->dashboard == null)
           <li class="slide">
               <a class="side-menu__item" data-bs-toggle="slide" href="#">
                   <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000"><path d="M0 0h24v24H0z" fill="none"/><path d="M22 10V6c0-1.11-.9-2-2-2H4c-1.1 0-1.99.89-1.99 2v4c1.1 0 1.99.9 1.99 2s-.89 2-2 2v4c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2v-4c-1.1 0-2-.9-2-2s.9-2 2-2zm-2-1.46c-1.19.69-2 1.99-2 3.46s.81 2.77 2 3.46V18H4v-2.54c1.19-.69 2-1.99 2-3.46 0-1.48-.8-2.77-1.99-3.46L4 6h16v2.54zM11 15h2v2h-2zm0-4h2v2h-2zm0-4h2v2h-2z"/></svg>
                   <span class="side-menu__label">{{lang('Complaints', 'Menu')}}</span><i class="angle fa fa-angle-right"></i>
               </a>
               <ul class="slide-menu custom-ul">

                   <li><a href="{{route('admin.recenttickets')}}" class="slide-item">{{lang('Recent Complaints', 'Menu')}}</a></li>
                   <li><a href="{{url('/admin/activeticket')}}" class="slide-item">{{lang('Active Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.selfassignticketview')}}" class="slide-item">{{lang('Self Assigned Complaints', 'Menu')}}</a></li>
                   <li><a href="{{url('/admin/myassignedtickets')}}" class="slide-item">{{lang('My Assigned Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.myclosedtickets')}}" class="slide-item">{{lang('Closed Complaints', 'Menu')}}</a></li>
                   <li><a href="{{route('admin.mysuspendtickets')}}" class="slide-item">{{lang('Suspend Complaints', 'Menu')}}</a></li>

               </ul>
           </li>


           @endif

           <!--- Employee menu tickets --->

           <!-- Trashed Complaint For Admin -->
           @if(!empty(Auth::user()->getRoleNames()[0]) && Auth::user()->getRoleNames()[0] == 'superadmin')
           <li class="slide">
               <a class="side-menu__item"  href="{{route('admin.tickettrashed')}}">
                   <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="20" width="20"><path d="M6.5 17q-.625 0-1.062-.438Q5 16.125 5 15.5v-10H4V4h4V3h4v1h4v1.5h-1v10q0 .625-.438 1.062Q14.125 17 13.5 17Zm7-11.5h-7v10h7ZM8 14h1.5V7H8Zm2.5 0H12V7h-1.5Zm-4-8.5v10Z"/></svg>

                   <span class="side-menu__label">{{lang('Trashed Complaints', 'Menu')}}</span>
               </a>
           </li>
           @endif
           <!--- End Trashed Complaint For Admin -->




            @can('Categories Access')

            <li class="slide">
                <a class="side-menu__item" data-bs-toggle="slide" href="#">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24"
                        width="24px" fill="#000000">
                        <path d="M0 0h24v24H0V0z" fill="none"></path>
                        <path
                            d="M12 2l-5.5 9h11L12 2zm0 3.84L13.93 9h-3.87L12 5.84zM17.5 13c-2.49 0-4.5 2.01-4.5 4.5s2.01 4.5 4.5 4.5 4.5-2.01 4.5-4.5-2.01-4.5-4.5-4.5zm0 7c-1.38 0-2.5-1.12-2.5-2.5s1.12-2.5 2.5-2.5 2.5 1.12 2.5 2.5-1.12 2.5-2.5 2.5zM3 21.5h8v-8H3v8zm2-6h4v4H5v-4z">
                        </path>
                    </svg>
                    <span class="side-menu__label">{{lang('Categories', 'Menu')}}</span><i
                        class="angle fa fa-angle-right"></i>
                </a>
                <ul class="slide-menu custom-ul">
                    @can('Category Access')

                    <li><a href="{{url('/admin/categories')}}" class="slide-item">{{lang('Main Categories',
                            'Menu')}}</a></li>
                    @endcan

                    @can('Subcategory Access')

                    <li><a href="{{url('/admin/subcategories')}}" class="slide-item">{{lang('SubCategory', 'Menu')}}</a>
                    </li>
                    @endcan
                </ul>
            </li>

            @endcan
            
            @can('Project Access')

            <li class="slide">
                <a class="side-menu__item" href="{{url('/admin/projects')}}">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24"
                        height="24px" viewBox="0 0 24 24" width="24px" fill="#000000">
                        <g>
                            <rect fill="none" height="24" width="24" />
                            <g>
                                <path
                                    d="M19,5v14H5V5H19 M19,3H5C3.9,3,3,3.9,3,5v14c0,1.1,0.9,2,2,2h14c1.1,0,2-0.9,2-2V5C21,3.9,20.1,3,19,3L19,3z" />
                            </g>
                            <path d="M14,17H7v-2h7V17z M17,13H7v-2h10V13z M17,9H7V7h10V9z" />
                        </g>
                    </svg>
                    <span class="side-menu__label">{{lang('Projects', 'Menu')}}</span>
                </a>
            </li>
            @endcan

            @can('Department Access')

                <li class="slide">
                    <a class="side-menu__item"  href="{{route('department.index')}}">
                        <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="20" width="20"><path d="M3 18v-5h2.25V9.25h4V7H7V2h6v5h-2.25v2.25h4V13H17v5h-6v-5h2.25v-2.25h-6.5V13H9v5ZM8.5 5.5h3v-2h-3Zm-4 11h3v-2h-3Zm8 0h3v-2h-3ZM10 5.604ZM7.5 14.5Zm5 0Z"/></svg>
                        <span class="side-menu__label">{{lang('Department', 'Menu')}}</span>
                    </a>
                </li>

                <li class="slide">
                    <a class="side-menu__item"  href="{{route('plants.index')}}">
                        <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="20" width="20"><path d="M3 18v-5h2.25V9.25h4V7H7V2h6v5h-2.25v2.25h4V13H17v5h-6v-5h2.25v-2.25h-6.5V13H9v5ZM8.5 5.5h3v-2h-3Zm-4 11h3v-2h-3Zm8 0h3v-2h-3ZM10 5.604ZM7.5 14.5Zm5 0Z"/></svg>
                        <span class="side-menu__label">{{lang('Plants', 'Menu')}}</span>
                    </a>
                </li>

            @endcan

            @can('Managerole Access')

            <li class="slide">
                <a class="side-menu__item" data-bs-toggle="slide" href="#">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" enable-background="new 0 0 24 24"
                        height="24px" viewBox="0 0 24 24" width="24px" fill="#000000">
                        <g>
                            <path d="M0,0h24v24H0V0z" fill="none" />
                        </g>
                        <g>
                            <g>
                                <path
                                    d="M4,18v-0.65c0-0.34,0.16-0.66,0.41-0.81C6.1,15.53,8.03,15,10,15c0.03,0,0.05,0,0.08,0.01c0.1-0.7,0.3-1.37,0.59-1.98 C10.45,13.01,10.23,13,10,13c-2.42,0-4.68,0.67-6.61,1.82C2.51,15.34,2,16.32,2,17.35V20h9.26c-0.42-0.6-0.75-1.28-0.97-2H4z" />
                                <path
                                    d="M10,12c2.21,0,4-1.79,4-4s-1.79-4-4-4C7.79,4,6,5.79,6,8S7.79,12,10,12z M10,6c1.1,0,2,0.9,2,2s-0.9,2-2,2 c-1.1,0-2-0.9-2-2S8.9,6,10,6z" />
                                <path
                                    d="M20.75,16c0-0.22-0.03-0.42-0.06-0.63l1.14-1.01l-1-1.73l-1.45,0.49c-0.32-0.27-0.68-0.48-1.08-0.63L18,11h-2l-0.3,1.49 c-0.4,0.15-0.76,0.36-1.08,0.63l-1.45-0.49l-1,1.73l1.14,1.01c-0.03,0.21-0.06,0.41-0.06,0.63s0.03,0.42,0.06,0.63l-1.14,1.01 l1,1.73l1.45-0.49c0.32,0.27,0.68,0.48,1.08,0.63L16,21h2l0.3-1.49c0.4-0.15,0.76-0.36,1.08-0.63l1.45,0.49l1-1.73l-1.14-1.01 C20.72,16.42,20.75,16.22,20.75,16z M17,18c-1.1,0-2-0.9-2-2s0.9-2,2-2s2,0.9,2,2S18.1,18,17,18z" />
                            </g>
                        </g>
                    </svg>
                    <span class="side-menu__label">{{lang('Manage Roles', 'Menu')}}</span><i
                        class="angle fa fa-angle-right"></i>
                </a>
                <ul class="slide-menu custom-ul">
                    @can('Roles & Permission Access')

                    <li><a href="{{url('/admin/role')}}" class="slide-item">{{lang('Roles & Permissions', 'Menu')}}</a>
                    </li>
                    @endcan
                    @can('Roles & Permission Create')

                    <li><a href="{{url('/admin/employee/create')}}" class="slide-item">{{lang('Create Employee',
                            'Menu')}}</a></li>
                    @endcan
                    @can('Employee Access')

                    <li><a href="{{url('/admin/employee')}}" class="slide-item">{{lang('Employees List', 'Menu')}}</a>
                    </li>
                    @endcan

                </ul>
            </li>
            @endcan
            
            @can('Customers Access')

            <li class="slide">
                <a class="side-menu__item" href="{{url('/admin/customer')}}">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24"
                        width="24px" fill="#000000">
                        <path d="M0 0h24v24H0V0z" fill="none" />
                        <path
                            d="M9 13.75c-2.34 0-7 1.17-7 3.5V19h14v-1.75c0-2.33-4.66-3.5-7-3.5zM4.34 17c.84-.58 2.87-1.25 4.66-1.25s3.82.67 4.66 1.25H4.34zM9 12c1.93 0 3.5-1.57 3.5-3.5S10.93 5 9 5 5.5 6.57 5.5 8.5 7.07 12 9 12zm0-5c.83 0 1.5.67 1.5 1.5S9.83 10 9 10s-1.5-.67-1.5-1.5S8.17 7 9 7zm7.04 6.81c1.16.84 1.96 1.96 1.96 3.44V19h4v-1.75c0-2.02-3.5-3.17-5.96-3.44zM15 12c1.93 0 3.5-1.57 3.5-3.5S16.93 5 15 5c-.54 0-1.04.13-1.5.35.63.89 1 1.98 1 3.15s-.37 2.26-1 3.15c.46.22.96.35 1.5.35z" />
                    </svg>
                    <span class="side-menu__label">{{lang('Customers', 'Menu')}}</span>
                </a>
            </li>
            @endcan


            <li class="slide">
                <a class="side-menu__item" data-bs-toggle="slide" href="#">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24"
                        width="24px" fill="#000000">
                        <path d="M0 0h24v24H0V0z" fill="none" />
                        <path
                            d="M12 22c1.1 0 2-.9 2-2h-4c0 1.1.9 2 2 2zm6-6v-5c0-3.07-1.63-5.64-4.5-6.32V4c0-.83-.67-1.5-1.5-1.5s-1.5.67-1.5 1.5v.68C7.64 5.36 6 7.92 6 11v5l-2 2v1h16v-1l-2-2zm-2 1H8v-6c0-2.48 1.51-4.5 4-4.5s4 2.02 4 4.5v6z" />
                    </svg>
                    <span class="side-menu__label">{{lang('Notifications', 'Menu')}}</span><i
                        class="angle fa fa-angle-right"></i>
                </a>
                <ul class="slide-menu custom-ul">
                    <li><a href="{{route('notificationpage')}}" class="slide-item smark-all">{{lang('All Notifications',
                            'Menu')}}</a></li>

                    @can('Custom Notifications Access')

                    <li><a href="{{route('mail.index')}}" class="slide-item">{{lang('Custom Notifications',
                            'Menu')}}</a></li>
                    @endcan

                </ul>
            </li>
            

            @can('App Setting Access')

            <li class="slide">
                <a class="side-menu__item" data-bs-toggle="slide" href="#">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24"
                        width="24px" fill="#000000">
                        <path d="M0 0h24v24H0V0z" fill="none" />
                        <path
                            d="M19.43 12.98c.04-.32.07-.64.07-.98 0-.34-.03-.66-.07-.98l2.11-1.65c.19-.15.24-.42.12-.64l-2-3.46c-.09-.16-.26-.25-.44-.25-.06 0-.12.01-.17.03l-2.49 1c-.52-.4-1.08-.73-1.69-.98l-.38-2.65C14.46 2.18 14.25 2 14 2h-4c-.25 0-.46.18-.49.42l-.38 2.65c-.61.25-1.17.59-1.69.98l-2.49-1c-.06-.02-.12-.03-.18-.03-.17 0-.34.09-.43.25l-2 3.46c-.13.22-.07.49.12.64l2.11 1.65c-.04.32-.07.65-.07.98 0 .33.03.66.07.98l-2.11 1.65c-.19.15-.24.42-.12.64l2 3.46c.09.16.26.25.44.25.06 0 .12-.01.17-.03l2.49-1c.52.4 1.08.73 1.69.98l.38 2.65c.03.24.24.42.49.42h4c.25 0 .46-.18.49-.42l.38-2.65c.61-.25 1.17-.59 1.69-.98l2.49 1c.06.02.12.03.18.03.17 0 .34-.09.43-.25l2-3.46c.12-.22.07-.49-.12-.64l-2.11-1.65zm-1.98-1.71c.04.31.05.52.05.73 0 .21-.02.43-.05.73l-.14 1.13.89.7 1.08.84-.7 1.21-1.27-.51-1.04-.42-.9.68c-.43.32-.84.56-1.25.73l-1.06.43-.16 1.13-.2 1.35h-1.4l-.19-1.35-.16-1.13-1.06-.43c-.43-.18-.83-.41-1.23-.71l-.91-.7-1.06.43-1.27.51-.7-1.21 1.08-.84.89-.7-.14-1.13c-.03-.31-.05-.54-.05-.74s.02-.43.05-.73l.14-1.13-.89-.7-1.08-.84.7-1.21 1.27.51 1.04.42.9-.68c.43-.32.84-.56 1.25-.73l1.06-.43.16-1.13.2-1.35h1.39l.19 1.35.16 1.13 1.06.43c.43.18.83.41 1.23.71l.91.7 1.06-.43 1.27-.51.7 1.21-1.07.85-.89.7.14 1.13zM12 8c-2.21 0-4 1.79-4 4s1.79 4 4 4 4-1.79 4-4-1.79-4-4-4zm0 6c-1.1 0-2-.9-2-2s.9-2 2-2 2 .9 2 2-.9 2-2 2z" />
                    </svg>
                    <span class="side-menu__label">{{lang('App Setting', 'Menu')}}</span><i
                        class="angle fa fa-angle-right"></i>
                </a>
                <ul class="slide-menu custom-ul">
                    @can('General Setting Access')

                    <li><a href="{{url('/admin/general')}}" class="slide-item">{{lang('General Setting', 'Menu')}}</a>
                    </li>
                    @endcan
                    @can('Ticket Setting Access')

                    <li><a href="{{url('/admin/ticketsetting')}}" class="slide-item">{{lang('Complaint Setting',
                            'Menu')}}</a></li>
                    @endcan
                   
                    @can('Email Setting Access')

                    <li><a href="{{url('/admin/emailsetting')}}" class="slide-item">{{lang('Email Setting',
                            'Menu')}}</a></li>
                    @endcan
                   
                    @can('Emailtoticket Access')

                    <li><a href="{{route('admin.emailtoticket')}}" class="slide-item">{{lang('Email to Complaints',
                            'Menu')}}</a></li>
                    @endcan

                    @can('Email Template Access')

                    <li><a href="{{url('/admin/emailtemplates')}}" class="slide-item">{{lang('Email Templates',
                            'Menu')}}</a></li>
                    <li><a href="{{url('/admin/customfield')}}" class="slide-item">{{lang('Custom fields',
                            'Menu')}}</a></li>
                    @endcan

                </ul>
            </li>
            @endcan
            
            
            @can('Reports Access')

            <li class="slide">
                <a class="side-menu__item" href="{{url('/admin/reports')}}">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24" width="24"><path d="M7 17h2v-5H7Zm8 0h2V7h-2Zm-4 0h2v-3h-2Zm0-5h2v-2h-2Zm-6 9q-.825 0-1.413-.587Q3 19.825 3 19V5q0-.825.587-1.413Q4.175 3 5 3h14q.825 0 1.413.587Q21 4.175 21 5v14q0 .825-.587 1.413Q19.825 21 19 21Zm0-2h14V5H5v14ZM5 5v14V5Z"/></svg>
                    <span class="side-menu__label">{{lang('Reports', 'Menu')}}</span>
                </a>
            </li>
            @endcan


            <li class="slide">
                <a class="side-menu__item sprukoclearcache" href="javascript:void(0);">
                    <svg class="sidemenu_icon" xmlns="http://www.w3.org/2000/svg" height="24" width="24"><path d="M11 11h2V4q0-.425-.287-.713Q12.425 3 12 3t-.712.287Q11 3.575 11 4Zm-6 4h14v-2H5Zm-1.45 6H6v-2q0-.425.287-.712Q6.575 18 7 18t.713.288Q8 18.575 8 19v2h3v-2q0-.425.288-.712Q11.575 18 12 18t.713.288Q13 18.575 13 19v2h3v-2q0-.425.288-.712Q16.575 18 17 18t.712.288Q18 18.575 18 19v2h2.45l-1-4H4.55l-1 4Zm16.9 2H3.55q-.975 0-1.575-.775t-.35-1.725L3 15v-2q0-.825.587-1.413Q4.175 11 5 11h4V4q0-1.25.875-2.125T12 1q1.25 0 2.125.875T15 4v7h4q.825 0 1.413.587Q21 12.175 21 13v2l1.375 5.5q.325.95-.287 1.725-.613.775-1.638.775ZM19 13H5h14Zm-6-2h-2 2Z"/></svg>
                    <span class="side-menu__label">{{lang('Clear Cache', 'Menu')}}</span>
                </a>
            </li>

           
        </ul>

    </div>
</aside>
<!--aside closed-->
