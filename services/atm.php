<?php
    include ('../layout/header_two.php');
    include ('../layout/menu.php');
?>




<div class="container">
    <div class="row">
        <div style="position:relative;">
            <div class="main_search_result_page" id="search-result"></div>
        </div>
    </div>
</div>


<div class="container">
    <div id="inner-banner-container" class="row">
        <div class="col-md-12 padding-left-0 padding-right-0">
            <div class="banner-image-container">
                <img class="img-responsive" height="auto" width="auto" src="../resources/images/inner/default-banner.jpg" alt="United Hospital banner image">

            </div>
            <div class="inner-customer-options-container font-family-gotham">
                <div class="three-boxes-inner-container two-res-box">
                    <div aria-controls="box-tab-1" class="box-item box-blue">
                        <span class="box-icon box-icon-doctor"></span>
                        <p class="box-text">I'M LOOKING FOR<br/> A CONSULTANT </p>
                    </div>
                    <div aria-controls="box-tab-2" class="box-item box-yellow">
                        <span class="box-icon box-icon-schedule"></span>
                        <p class="box-text">SCHEDULE<br/> APPOINTMENT </p>
                    </div>
                </div>
                <div class="three-box-tab-container inner-three-box-tab-container">
                    <div class="inner-sidetab-opener-blue">
                        <div id="box-tab-1" class="box-tab box-blue blue-box-inner">
                            <a class="box-closer" href="#">x</a>
                            <div class="box-tab-left box-form">


                                <form id="w0" action="http://uhlbd.com/search/byspeciality" method="post">        <label for="speciality">Search By speciality</label>

                                    <select name="by_speciality" class="country_class" tabindex="1">

                                    </select>
                                    <label for="search-name">Search by name</label>
                                    <!-- <input id="search-name" type="text" name="" class="box-form-input"> -->

                                    <input id="search-name" name="doctor_name" class="box-form-input">

                                    <br />
                                    <button class="box-submit-btn" type="submit">Find your doctor</button>
                                </form></div>



                        </div>
                    </div>
                    <div class="inner-sidetab-opener-orange">
                        <div id="box-tab-2" class="box-tab box-yellow orange-box-inner">



                            <a class="box-closer" href="#">x</a>
                            <div class="box-tab-appointment-left box-form after_successfully_submit" id="tab-box-1-yellow" stle="position:relative;">

                                <div class="left-appointment font-family-gotham">
                                    <label for="speciality">Date *</label>
                                    <input required id="from_date" name="from_date" type='text' class="form-control schedule-date" />

                                    <label for="speciality">Time *</label>
                                    <select name="schedule_time" class="country_class" id="schedule_time" tabindex="1">
                                        <option value="09:00 AM">09:00 AM</option>
                                        <option value="10:00 AM">10:00 AM</option>
                                        <option value="11:00 AM">11:00 AM</option>
                                        <option value="12:00 PM">12:00 PM</option>
                                        <option value="01:00 PM">01:00 PM</option>
                                        <option value="02:00 PM">02:00 PM</option>
                                        <option value="03:00 PM">03:00 PM</option>
                                        <option value="04:00 PM">04:00 PM</option>
                                        <option value="05:00 PM">05:00 PM</option>
                                        <option value="06:00 PM">06:00 PM</option>
                                        <option value="07:00 PM">07:00 PM</option>
                                        <option value="08:00 PM">08:00 PM</option>
                                        <option value="09:00 PM">09:00 PM</option>

                                    </select>

                                    <label>Department *</label>
                                    <select name="schedule_department" id="schedule_department" class="country_class" tabindex="1">
                                        <option value="">All Speciality</option>


                                    </select>

                                    <label>Doctor *</label><br>
                                    <input required id="search-schedule-doctor" name="search_schedule_doctor" class="box-form-input">




                                </div>
                                <div class="second-appointment">

                                    <label>Name *</label>
                                    <input required id="patient_name" name="patient_name" class="box-form-input">

                                    <label>Phone *</label><br>
                                    <input required id="patient_phone" name="patient_phone" class="box-form-input">

                                    <label>Email *</label><br>
                                    <input required id="patient_email" name="patient_email" class="box-form-input">

                                    <label for="comment">Type your message *</label>
                                    <textarea class="form-control schedule-patient-message font-family-gotham" name="patient_message" id="patient_message"></textarea>

                                    <div class="schedule-loader">
                                        <div class="spinner"></div>
                                    </div>
                                    <div class="schedule-success doctorappinment">
                                        <!-- Please fill up all required fields -->
                                    </div>
                                    <div class="schedule-error doctorappinment">
                                        <!-- Please fill up all required fields -->
                                    </div>

                                </div>
                                <div>
                                    <button href="#" class="btn btn-default-submit appointement-submit font-family-gotham" type="submit" id="open-appointment">Submit</button>
                                </div>



                            </div>

                        </div>
                        <div id="box-tab-3" class="box-tab box-pest">
                            <a class="box-closer" href="#"><i class="fa fa-times"></i></a>
                            <div class="box-tab-left box-form">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6 pull-right padding-right-0 hide-on-1024">
            <div class="inner-social-container">
                <ul class="list-unstyled home-social-list inner-social-list">
                    <li class="inner-social-text">CONNECT WITH US</li>
                    <li><a class="facebook-upper" href="https://www.facebook.com/uhlbd/" target="_blank"></a></li>
                    <li><a class="twitter-upper" target="_blank" href="https://twitter.com/uhlbd"></a></li>
                    <li><a class="google-upper"href="#"></a></li>
                    <li><a class="flickr-upper"href="#"></a></li>				</ul>
            </div>
        </div>
    </div>
</div>


<div id="inner-post-container" class="container-fluid">
    <div class="container inner-post-wrap-container">
        <div class="col-md-8 col-xs-12 padding-left-0 inner-left-box-container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 inner-post-box">


                    <div class="post_container_design heightauto">


                        <div class="post_content_right_bar width100">


                            <h2>Service Name</h2>
                            <div class="post_content_description">
                                <p>Service Description (Page is updating)..................</p>

                                <p>&nbsp;</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-4 col-xs-12 sidebar-container inner-right-box-container">
            <div id="sidebar-2" class="row sidebar patients-sidebar">

                <div class="col-md-12 sidebar-item font-family-gotham position-relative calegory-dropdown-container hide-for-mobile" >
                    <a class="category-list-link open-cat-list" href="#">select Services <i id="cat-arrow" class="fa fa-angle-down"></i></a>
                    <ul class="list-unstyled category-list patients-category-list" id="department-list-sidebar">
                        <li><a class="active" href="atm.html">ATM</a></li>
                        <li><a class="" href="birth-certificate.html">Birth Certificate</a></li>
                        <li><a class="" href="blood-bank.html">Blood Bank</a></li>
                        <li><a class="" href="cafeteria.html">Cafeteria</a></li>
                        <li><a class="" href="chemotherapy.html">Chemotherapy</a></li>
                        <li><a class="" href="corporate-client.html">Corporate Client</a></li>
                        <li><a class="" href="day-care.html">Day Care</a></li>
                        <li><a class="" href="death-certificate.html">Death Certificate</a></li>
                        <li><a class="" href="departments-services-location.html">Departments-Services-Location</a></li>
                        <li><a class="" href="dietician.html">Dietician</a></li>
                        <li><a class="" href="discharge-protocol.html">Discharge Protocol</a></li>
                        <li><a class="" href="emergency.html">Emergency </a></li>
                        <li><a class="" href="hospital-location-map.html">Hospital Location Map</a></li>
                        <li><a class="" href="investigation.html">Investigation</a></li>
                        <li><a class="" href="medical-records.html">Medical Records</a></li>
                        <li><a class="" href="mortuary.html">Mortuary</a></li>
                        <li><a class="" href="online-payment-information.html">Online payment Information</a></li>
                        <li><a class="" href="pharmacy.html">Pharmacy</a></li>
                        <li><a class="" href="physiotherapy.html">Physiotherapy</a></li>
                        <li><a class="" href="prayer-room.html">Prayer Room</a></li>
                        <li><a class="" href="psychosocial-counseling.html">Psychosocial Counseling</a></li>
                        <li><a class="" href="report-delivery.html">Report Delivery</a></li>
                        <li><a class="" href="room-category.html">Room Category</a></li>
                        <li><a class="" href="vaccination.html">Vaccination</a></li>
                        <li><a class="" href="visiting-hours-rules.html">Visiting Hours & Rules</a></li>
                        <li><a class="" href="../page/contact.html">Your Enquiry / Feedback</a></li>
                    </ul>
                </div>

                <div class="col-md-12 sidebar-item sidebar-promo-container">
                    <div class="promo-box-bg home-emergency">
                        <div class="promo-service-top">
                            <img class="img-responsive promo-service-img" height="auto" width="auto" src="../resources/images/emergency/ambulance.jpg">
                            <div class="emergency-rightsidebar">
                                <img class="phone-icon-circle" src="../resources/images/emergency/phone-icon-circle.png">
                                <p class="amb-caller"><a href="emergency.html">Emergency?</a></p>
                                <p class="amb-call-ambulance">Call Ambulance <br/><br/></p>
                                <p class="amb-call-number"><span style="font-family:'gotham-bold';">10666</span></p>
                                <p class="amb-call-number">+880 1914 001234</p>
                            </div>
                        </div>

                    </div>
                </div>



            </div>
        </div>
    </div>
</div>





<?php include ('../layout/footer.php');?>