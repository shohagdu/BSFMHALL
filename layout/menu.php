<?php
    $data_info_first=$class_info->show_all_web_content('department',1,0,5);
    $data_info_second=$class_info->show_all_web_content('department',1,5,5);
    $data_info_third=$class_info->show_all_web_content('department',1,10,5);
    $data_info_fourth=$class_info->show_all_web_content('department',1,15,5);
    $all_dept=$class_info->show_all_web_content('department',1,0,40);

    $service_first=$class_info->show_all_web_content('services',31,0,5);
    $service_second=$class_info->show_all_web_content('services',31,5,5);
    $service_third=$class_info->show_all_web_content('services',31,10,5);
    $all_service=$class_info->show_all_web_content('services',31,0,30);
?>
<div id="mobile-menu-container" class="container-fluid hide-above-1024 font-family-gotham"
     >
    <div class="row mob-orange-bg">
        <div class="col-md-12 col-sm-12 col-xs-12 padding-left-0 padding-right-0 mobile-menu-wrapper">

            <div class="panel-group mob-panel-wrap" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel mob-panel">
                    <div class="panel-heading container" role="tab" id="">
                        <h4 class="panel-title">
                            <a href="index.php" class="has-submenu" >
                               Home
                            </a>
                        </h4>
                    </div>
                    <div class="panel-heading container" role="tab" id="">
                        <h4 class="panel-title">
                            <a href="find_doctors.php" class="has-submenu" >
                                Provost
                            </a>
                        </h4>
                    </div>

                    <div class="panel-heading container" role="tab" id="">
                        <h4 class="panel-title">
                            <a class="has-submenu" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapse-54" aria-expanded="true"
                               aria-controls="collapse-1">
                                Patient info <i class="mob-down-arrow pull-right fa fa-sort-desc"></i>
                            </a>
                        </h4>
                    </div>


                    <div id="collapse-54" class="panel-collapse collapse"
                         role="tabpanel" aria-labelledby="">
                        <div class="panel-body">
                            <div class="container">
                                <ul class="list-unstyled mob-sub-item">
                                    <li>
                                        <a href="admission_payment.php">Admission & Payment</a>
                                    </li>
                                    <li>
                                        <a href="appointments.php">Appointments </a>
                                    </li>
                                    <!--<li>
                                        <a href="consultant.php">Consultants</a>
                                    </li>-->
                                    <li>
                                        <a href="health_check.php">Health Check </a>
                                    </li>
                                    <li>
                                        <a href="in_patient_facilities.php">In Patient Facilities </a>
                                    </li>
                                    <!-- <li>
                                         <a href="#">Patient Education</a>
                                     </li>
                                     <li>
                                         <a href="#">Patient Registration </a>
                                     </li>
                                     <li>
                                         <a href="#">Registration form</a>
                                     </li>-->
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>




                <div class="panel mob-panel">
                    <div class="panel-heading container" role="tab" id="">
                        <h4 class="panel-title">

                            <a class="has-submenu" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapse-56" aria-expanded="true"
                               aria-controls="collapse-1">
                                Departments <i class="mob-down-arrow pull-right fa fa-sort-desc"></i>
                            </a>
                        </h4>
                    </div>

                    <div id="collapse-56" class="panel-collapse collapse"
                         role="tabpanel" aria-labelledby="">
                        <div class="panel-body">
                            <div class="container">
                                <ul class="list-unstyled mob-sub-item">
                                    <?php
                                    if(!empty($all_dept)){
                                        foreach ($all_dept as $row){
                                            ?>
                                            <li>
                                                <a href="department.php?id=<?php echo $row['id'].'&title='.str_replace
                                                    (' ', '-', $row['title_info'])
                                                ?>"><?php
                                                    echo $row['title_info'] ?></a>
                                            </li>
                                        <?php } }?>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="panel mob-panel">
                    <div class="panel-heading container" role="tab" >
                        <h4 class="panel-title">

                            <a class="has-submenu" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapse-57" aria-expanded="true"
                               aria-controls="collapse-1">
                                Services <i class="mob-down-arrow pull-right fa fa-sort-desc"></i>
                            </a>
                        </h4>
                    </div>

                    <div id="collapse-57" class="panel-collapse collapse"
                         role="tabpanel" aria-labelledby="">
                        <div class="panel-body">
                            <div class="container">
                                <ul class="list-unstyled mob-sub-item">
                                    <?php
                                    if(!empty($all_service)){
                                        foreach ($all_service as $row){
                                            ?>
                                            <li>
                                                <a href="services.php?id=<?php echo $row['id'].'&title='.str_replace
                                                    (' ', '-', $row['title_info'])
                                                ?>"><?php
                                                    echo $row['title_info'] ?></a>
                                            </li>
                                        <?php } }?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="panel mob-panel">
                    <div class="panel-heading container" role="tab" id="">
                        <h4 class="panel-title">

                            <a class="has-submenu" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapse-58" aria-expanded="true"
                               aria-controls="collapse-1">
                                Gallery <i class="mob-down-arrow pull-right fa fa-sort-desc"></i>
                            </a>
                        </h4>
                    </div>

                    <div id="collapse-58" class="panel-collapse collapse"
                         role="tabpanel" aria-labelledby="">
                        <div class="panel-body">
                            <div class="container">
                                <ul class="list-unstyled mob-sub-item">
                                    <li>
                                        <a href="photo_gallery.php">Photo Gallery</a>
                                    </li>
                                    <li>
                                        <a href="exclusive_video.php">Video gallery</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <div class="col-md-12 col-sm-12 col-xs-12 padding-left-0 padding-right-0 mob-menu-footer-wrapper">
            <p class="text-center mob-social-title">social pages</p>
            <ul class="list-unstyled home-social-list mobile-social-list text-center">
                <li><a target="_blank" href="#" class="facebook-upper"></a></li>
                <li><a target="_blank" href="#" class="twitter-upper"></a></li>
                <li><a href="#" class="google-upper"></a></li>
                <li><a href="#" class="flickr-upper"></a></li>
            </ul>
        </div>
        <div class="col-md-12 col-sm-12 col-xs-12 mob-footer-copy">
            <div class="mob-copy-text container">
                &copy; 2017 Medilife Specialized Hospital Limited. All Rights Reserved.<br/>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid back-color">
    <div class="container">
        <div class="row">
            <nav id="menu-1" class="mega-menu desktop-menu" data-color="color-0">
                <section class="menu-list-items">
                    <ul class="menu-logo">

                    </ul>
                    <ul class="menu-links">
                        <li><a href="index.php" > Home </a></li>
                        <li><a href="provost.php" > Provost </a></li>
                        <li>
                            <a href="#">Authorities</a>
                            <div class="drop-down-multilevel">
                                <div class="pattern-color">

                                    <ul class="pattern single">
                                        <li>
                                            <a href="houseTutors.php">House Tutors</a>
                                        </li>
                                        <li>
                                            <a href="officers_staff.php"> Officers & Staff </a>
                                        </li>
                                        <li>
                                            <a href="listOfProvosts.php"> list of Provosts </a>
                                        </li>


                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="#">Students</a>
                            <div class="drop-down-multilevel">
                                <div class="pattern-color">

                                    <ul class="pattern single">
                                        <li>
                                            <a href="facilites.php">Facilities</a>
                                        </li>
                                        <li>
                                            <a href="scholarship.php"> Scholarship Info </a>
                                        </li>
                                        <li>
                                            <a href="hallSangsod.php">Hall sangsod </a>
                                        </li>
                                        <li>
                                            <a href="admission_payment.php">Admission & Payment Process </a>
                                        </li>


                                    </ul>
                                </div>
                            </div>
                        </li>

                        <li>
                            <a href="#">Hall Activities</a>


                            <div class="drop-down grid-col-12">
                                <div class="back-black-color"></div>
                                <div class="grid-row">
                                    <div class="pattern-color">
                                        <div class="pattern double">

                                            <div class="grid-col-4 right-border">
                                                <ul>
                                                    <?php
                                                         if(!empty($service_first)){
                                                        foreach ($service_first as $row){
                                                            ?>
                                                            <li>
                                                                <a href="services.php?id=<?php echo $row['id'].'&title='.str_replace
                                                                    (' ', '-', $row['title_info'])
                                                                ?>"><?php
                                                                    echo $row['title_info'] ?></a>
                                                            </li>
                                                        <?php } }?>



                                                </ul>
                                            </div>
                                            <div class="grid-col-4 right-border">
                                                <ul>
                                                    <?php
                                                    if(!empty($service_second)){
                                                        foreach ($service_second as $row){
                                                            ?>
                                                            <li>
                                                                <a href="services.php?id=<?php echo $row['id'].'&title='.str_replace
                                                                    (' ', '-', $row['title_info'])
                                                                ?>"><?php
                                                                    echo $row['title_info'] ?></a>
                                                            </li>
                                                        <?php } }?>


                                                </ul>
                                            </div>
                                            <div class="grid-col-4 right-border">
                                                <ul>

                                                    <?php
                                                    if(!empty($service_third)){
                                                        foreach ($service_third as $row){
                                                            ?>
                                                            <li>
                                                                <a href="services.php?id=<?php echo $row['id'].'&title='.str_replace
                                                                    (' ', '-', $row['title_info'])
                                                                ?>"><?php
                                                                    echo $row['title_info'] ?></a>
                                                            </li>
                                                        <?php } }?>



                                                </ul>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </li>
                        <li>
                            <a href="#">Gallery</a>


                            <div class="drop-down-multilevel">
                                <div class="pattern-color">

                                    <ul class="pattern single">
                                        <li>
                                            <a href="photo_gallery.php">Photo Gallery</a>
                                        </li>
                                        <li>
                                            <a href="exclusive_video.php">Video gallery</a>
                                        </li>

                                    </ul>
                                </div>
                            </div>

                        </li>
                    </ul>

                    <ul class="menu-search-bar">
                        <li>
                            <form method="get"
                                  action="#">
                                <div class="col-md-8 search-form">

                                    <input autocomple="off" type="text"
                                           data-link="/search/global_search" id="search_input"
                                           name="keyword" class="search-input" value="Search"
                                           onfocus="(this.value == 'Search') && (this.value = '')"
                                           onblur="(this.value == '') && (this.value = 'Search')">

                                </div>
                                <div class="col-md-4 search-icon">
                                    <button type="submit" class="submit-btn-header"></button>
                                </div>
                            </form>
                        </li>
                    </ul>
                </section>
            </nav>
        </div>
    </div>
</div>