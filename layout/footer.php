<div id="desktop-footer-container" class="container-fluid hidden-sm hidden-xs">
    <div id="main-footer-section" class="container">
        <div class="row">
            <div class="col-md-12 footer-section">
                <div class="footer-section-container section-1">
                    <div class="dhaka-office">
                        <h3><a class="text-uppercase" href="index.php"><?php echo (!empty($organization_info['com_name'])?$organization_info['com_name']:'') ?></a></h3>
                        <p><?php echo (!empty($organization_info['address'])?$organization_info['address']:'') ?></p>
                    </div>
                    <!--
                    <div class="about">
                        <ul class="list-unstyled common-status">
                            <h3><a class="">Social pages</a></h3>
                            <li><a href="#">Brief History</a></li>
                            <li><a href="#">Mission Statement</a></li>
                            <li><a href="#">Board Members</a></li>
                            <li><a href="#">People & Diversity</a></li>
                            <li><a href="#">Operation Team</a></li>
                        </ul>
                    </div>
                    -->


                </div>
                <div class="footer-section-container section-2">
                    <!--
                    <div class="media footer_media">
                        <ul class="list-unstyled common-status">
                            <h3><a class="#">media center</a></h3>
                            <li><a href="#">Latest News</a></li>
                            <li><a href="#">Publicationss</a></li>
                            <li><a href="#">Notice Board</a></li>
                        </ul>
                    </div>-->
                    <div class="gallery">
                        <ul class="list-unstyled common-status">
                            <h3><a class="#">gallery</a></h3>
                            <li><a href="photo_gallery.php">Photo Gallery</a></li>
                            <li><a href="exclusive_video.php">Video Gallery</a></li>
                            <!--<li><a href="page/life-at-uhl.html">Life at UHL</a></li>-->
                        </ul>
                    </div>

                </div>

                <div class="footer-section-container section-7">
                    <div class="footer-search-section">
                        <ul class="list-unstyled common-status">
                            <h3><a class="#">Phone</a></h3>
                            <li class="footer-phn-number"><a class="#"><i class="fa fa-phone"></i> <span
                                        class="emergency"><?php echo (!empty($organization_info['helpline'])?$organization_info['helpline']:'') ?></span></a></li>
                        </ul>

                        <!--
                        <ul class="dealing-section padding-left-0">
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">Disclaimer</a></li>
                            <li><a href="#">Sitemap</a></li>
                            <li><a target="_blank" href="#">Webmail</a></li>
                            <li><a target="_blank" href="#">Medilife Specialized Hospital
                                    Group</a></li>
                        </ul>
                        -->
                        <div class="footer-social-section">
                            <h3><a class="#">social pages</a></h3>
                            <ul class="list-unstyled social-icons">
                                <li><a class="footer-facebook" href="https://www.facebook.com/MedilifeHospital2016"
                                       target="_blank"></a></li>
                                <li><a class="footer-google" href="#"></a></li>
                                <li><a class="footer-twitter" href="#"></i></a></li>
                                <li><a class="footer-flickr" href="#"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="footer-section-container section-3">

                    <!-- MAP -->
                    <a class="footer_maps" href="https://www.google.com.bd/maps/@23.8043848,90.4154625,17.5z"
                       target="_blank"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14609.685640200396!2d90.381152!3d23.7323474!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0c72b81fffcca3f!2sBangamata%20Sheikh%20Fazilatunnesa%20Mujib%20Hall!5e0!3m2!1sen!2sbd!4v1616114484142!5m2!1sen!2sbd" width="500" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></a>




                </div>

            </div>
        </div>
    </div>
</div>
<div id="footer-bottom" class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-md-12 design-development">
                <div class="design">&copy; <?php echo date('Y'); ?> All Rights Reserved. Design &
                    Developed by <span class="dcastalia"><a href="<?php echo (!empty($organization_info['copyright_info'])?$organization_info['copyright_info']:'') ?>" target="_blank"><?php echo (!empty($organization_info['author'])?$organization_info['author']:'') ?></a></span></div>
            </div>
        </div>
    </div>
</div>


<script src="assets/42dd3ce7/jquery.js"></script>
<script src="assets/41420841/yii.js"></script>
<script src="assets/41420841/yii.activeForm.js"></script>
<script src="assets/5ce8b7ba/jquery.pjax.js"></script>
<script src="resources/bootstrap-3.3.5/js/bootstrap.min.js"></script>
<script src="resources/js/bootstrap-datepicker.js"></script>
<script src="resources/masonry/masonry.pkgd.min.js"></script>
<script src="resources/js/greensock.js"></script>
<script src="resources/js/html5.js"></script>
<script src="resources/js/layerslider.kreaturamedia.jquery.js"></script>
<script src="resources/js/layerslider.transition.gallery.js"></script>
<script src="resources/js/layerslider.transitions.js"></script>
<script src="resources/js/jquery.selectbox-0.2.js"></script>
<script src="resources/js/jquery.auto-complete.min.js"></script>
<script src="resources/js/menu.js"></script>
<script src="resources/js/custom.js"></script>
<script type="text/javascript">jQuery(document).ready(function () {
        jQuery('#w0').yiiActiveForm([], []);

        $(function () {
            $('#loading').hide();
            $('#search-name').autoComplete({
                minChars: 2,
                delay: 300,
                cache: true,
                source: function (term, response) {
                    $.getJSON('/site/doctorlist', {q: term}, function (data) {
                        response(data);
                    });
                }
            });

        });


        $(function () {
            $('#search-schedule-doctor').autoComplete({
                minChars: 2,
                delay: 300,
                cache: true,
                source: function (term, response) {
                    $.getJSON('/site/doctorlist', {q: term}, function (data) {
                        response(data);
                    });
                }
            });

        });


        $('#patient_message').on('keyup', function (e) {

            var message_val = $(this).val();

            var message_count = message_val.length;


            if (message_count > 501) {
                $('.schedule-error.doctorappinment').html('Sorry you can not provide more than 500 word.');
                $('.schedule-success.doctorappinment').html('');
            } else {
                var remainning_comment = 500 - message_count + ' words remaining';
                $('.schedule-success.doctorappinment').html(remainning_comment);
                $('.schedule-error.doctorappinment').html('');
            }
        });


        $('.appointement-submit').click(function () {

            var from_date = $('#from_date').val();
            var schedule_time = $('#schedule_time option:selected').attr('selected', 'selected').val();
            var schedule_department = $('#schedule_department option:selected').attr('selected', 'selected').val();
            var search_schedule_doctor = $('#search-schedule-doctor').val();

            var patient_name = $('#patient_name').val();
            var patient_phone = $('#patient_phone').val();
            var patient_email = $('#patient_email').val();
            var patient_message = $('#patient_message').val();


            if (from_date && search_schedule_doctor && patient_name && patient_phone && patient_email && patient_message) {
                $('.schedule-success.doctorappinment').html('');
                $('.schedule-loader').show();
                var base_url = $(this).attr('href');
                $('.schedule-error').html('');

                this.postData = {
                    from_date: from_date,
                    schedule_time: schedule_time,
                    schedule_department: schedule_department,
                    search_schedule_doctor: search_schedule_doctor,
                    patient_name: patient_name,
                    patient_phone: patient_phone,
                    patient_email: patient_email,
                    patient_message: patient_message
                }

                $.ajax({
                    type: 'post',
                    url: base_url + '/form/doctorschedule',
                    data: this.postData
                }).done(function (msg) {
                    this.reply = jQuery.parseJSON(msg);

                    if (this.reply.status == '1') {
                        $('.after_successfully_submit').html(this.reply.message);
                        //$('.schedule-success.doctorappinment').html(this.reply.message);
                    }

                    if (this.reply.status == '0') {
                        $('.schedule-success.doctorappinment').html(this.reply.message);
                    }

                    $('.schedule-loader').hide();
                    $('.schedule-error').hide();
                })

            } else {
                $('.schedule-success.doctorappinment').html('');
                $('.schedule-error.doctorappinment').html('Please provide all required fileds');
                $('.schedule-loader').hide();
            }
            return false;
        });


        $('#comment').on('keyup', function (e) {

            var comment_val = $(this).val();

            var comment_count = comment_val.length;


            if (comment_count > 501) {
                $('.submitquery.schedule-error').html('Sorry you can not provide more than 500 word.');
                $('.submitquery.schedule-success').html('');
            } else {
                var remainning_comment = 500 - comment_count + ' words remaining';
                $('.submitquery.schedule-success').html(remainning_comment);
                $('.submitquery.schedule-error').html('');
            }
        });


        $('.submit-query-btn').click(function () {

            var query_name = $('#query_name').val();
            var query_phone = $('#query_phone').val();
            var query_email = $('#query_email').val();
            var comment = $('#comment').val();

            var comment_count = comment.length;


            if (query_name && query_phone && query_email && comment && comment_count < 501) {
                $('.schedule-loader').show();
                $('.submitquery.schedule-error').html('');
                var base_url = $(this).attr('href');

                this.postData = {
                    query_name: query_name,
                    query_phone: query_phone,
                    query_email: query_email,
                    comment: comment
                }

                $.ajax({
                    type: 'post',
                    url: base_url + '/form/submitquery',
                    data: this.postData
                }).done(function (msg) {
                    this.reply = jQuery.parseJSON(msg);

                    if (this.reply.status == '1') {
                        $('.submitquery.schedule-success').html(this.reply.message);
                        $('.submitquery.schedule-error').hide();
                    }

                    if (this.reply.status == '0') {
                        $('.submitquery.schedule-success').html('');
                        $('.submitquery.schedule-error').html(this.reply.message);
                    }

                    $('.schedule-loader').hide();

                })

            } else {
                $('.submitquery.schedule-error').html('Please provide all required fileds');
                $('.schedule-loader').hide();
            }
            return false;
        });


        var heights_home_consultants = jQuery('div.home-consultants-box').map(function () {
            return jQuery(this).height();
        }).get();

        var maxHeight_consultants = Math.max.apply(null, heights_home_consultants);

        jQuery('.home-consultants-box').css('height', maxHeight_consultants);


        jQuery(document).pjax("#pjax_home_consultants_index a", "#pjax_home_consultants_index", {
            "push": false,
            "replace": false,
            "timeout": 50000,
            "scrollTo": false
        });
        jQuery(document).on('submit', "#pjax_home_consultants_index form[data-pjax]", function (event) {
            jQuery.pjax.submit(event, '#pjax_home_consultants_index', {
                "push": false,
                "replace": false,
                "timeout": 50000,
                "scrollTo": false
            });
        });


        $('#ask_message').on('keyup', function (e) {

            var message_val = $(this).val();

            var message_count = message_val.length;


            if (message_count > 501) {
                $('.asksubmit.schedule-error').html('Sorry you can not provide more than 500 word.');
                $('.asksubmit.schedule-success').html('');
            } else {

                var remainning_comment = 500 - message_count + ' words remaining';

                $('.asksubmit.schedule-success').html(remainning_comment);
                $('.asksubmit.schedule-error').html('');
            }


            return false;
        });


        $('.submit_ask_a_question').click(function () {

            var ask_name = $('#ask_name').val();
            var ask_phone_number = $('#ask_phone_number').val();
            var ask_email = $('#ask_email').val();
            var ask_postal_address = $('#ask_postal_address').val();
            var ask_message = $('#ask_message').val();

            var message_count = ask_message.length;

            if (ask_name && ask_phone_number && ask_email) {
                $('.schedule-loader').show();
                $('.asksubmit.schedule-error').html('');
                $('.asksubmit.schedule-success').html('');
                var base_url = $(this).attr('href');

                this.postData = {
                    ask_name: ask_name,
                    ask_phone_number: ask_phone_number,
                    ask_email: ask_email,
                    ask_postal_address: ask_postal_address,
                    ask_message: ask_message
                }

                $.ajax({
                    type: 'post',
                    url: base_url + '/form/submitquestion',
                    data: this.postData
                }).done(function (msg) {
                    this.reply = jQuery.parseJSON(msg);

                    if (this.reply.status == '1') {
                        $('.asksubmit.schedule-success').html(this.reply.message);
                    }

                    if (this.reply.status == '0') {
                        $('.asksubmit.schedule-success').html(this.reply.message);
                    }

                    $('.schedule-loader').hide();
                    $('.asksubmit.schedule-error').hide();
                })

            } else {

                $('.asksubmit.schedule-error').html('Please provide all required fileds');

                $('.schedule-loader').hide();
            }
            return false;
        });


        $('#experience_message').on('keyup', function (e) {

            var message_val = $(this).val();

            var message_count = message_val.length;

            if (message_count > 501) {
                $('.experiencesubmit.schedule-error').html('Sorry you can not provide more than 500 word.');
                $('.experiencesubmit.schedule-success').html('');
            } else {

                var remainning_comment = 500 - message_count + ' words remaining';

                $('.experiencesubmit.schedule-success').html(remainning_comment);
                $('.experiencesubmit.schedule-error').html('');
            }


            return false;
        });

        $('.submit_experience_btn').click(function () {

            var experience_name = $('#experience_name').val();
            var experience_phone_number = $('#experience_phone_number').val();
            var experience_email = $('#experience_email').val();
            var experience_postal_address = $('#experience_postal_address').val();
            var experience_about = $('input[name=experience_about]:checked').val();
            var experience_patient_name = $('#experience_patient_name').val();
            var experience_patient_id = $('#experience_patient_id').val();
            var experience_message = $('#experience_message').val();


            if (experience_name && experience_phone_number && experience_email && experience_about && experience_patient_name && experience_patient_id && experience_message) {

                $('.schedule-loader').show();
                $('.experiencesubmit.schedule-error').html('');
                $('.experiencesubmit.schedule-success').html('');
                var base_url = $(this).attr('href');

                this.postData = {
                    experience_name: experience_name,
                    experience_phone_number: experience_phone_number,
                    experience_email: experience_email,
                    experience_postal_address: experience_postal_address,
                    experience_about: experience_about,
                    experience_patient_name: experience_patient_name,
                    experience_patient_id: experience_patient_id,
                    experience_message: experience_message
                }

                $.ajax({
                    type: 'post',
                    url: base_url + '/form/submitexperiencenow',
                    data: this.postData
                }).done(function (msg) {
                    this.reply = jQuery.parseJSON(msg);

                    if (this.reply.status == '1') {
                        $('.experiencesubmit.schedule-success').html(this.reply.message);
                    }

                    if (this.reply.status == '0') {
                        $('.experiencesubmit.schedule-success').html(this.reply.message);
                    }

                    $('.schedule-loader').hide();
                    $('.experiencesubmit.schedule-error').hide();
                })

            } else {
                $('.experiencesubmit.schedule-error').html('Please provide all required fileds');
                $('.schedule-loader').hide();
            }
            return false;
        });


        $.pjax.defaults.timeout = 2000000


        $('#pjax_home_consultants_index')
            .on('pjax:start', function () {
                $('#pjax_home_consultants_index').fadeOut(500);
            })
            .on('pjax:end', function () {
                $('#pjax_home_consultants_index').fadeIn(700);
            })

        setInterval(function () {
            // $.pjax.reload({container:'#pjax_home_consultants_index'});;
        }, 8000);


        jQuery('#layerslider').layerSlider({
            skin: 'fullwidth',
            autoPlayVideos: false,
            skinsPath: '/medilife/css/skins/',
            navPrevNext: false,
            navStartStop: false,
            pauseOnHover: false
        });


        jQuery('.mobile_drop_box').change(function () {
            // var testimonial_drop = $('.mobile_drop_box option:selected').attr('selected','selected').val();
            var testimonial_drop = $('#mobile_drop_box').children('option').filter(':selected').text();
            // alert(testimonial_drop);
            if (testimonial_drop == 'testimonial') {
                $('#promo-tab-1').show();
                $('#promo-tab-2').hide();
                $('#promo-tab-3').hide();
            }

            if (testimonial_drop == 'happening') {
                $('#promo-tab-1').hide();
                $('#promo-tab-2').show();
                $('#promo-tab-3').hide();
            }

            if (testimonial_drop == 'publications') {
                $('#promo-tab-1').hide();
                $('#promo-tab-2').hide();
                $('#promo-tab-3').show();
            }


        });


        // $(window).load(function () {
        //     $('#loading').hide();
        // });


        $('#search_input').on('keyup', function (e) {

            var url = $(this).attr('data-link');

            var search_key = $(this).val();

            var key_length = search_key.length;

            if (key_length > 0) {

                $.ajax({

                    type: 'POST',
                    dataType: 'json',
                    url: url,
                    data: {search_key: search_key},
                    beforeSend: function (data) {

                    },
                    success: function (data) {

                        if (data.result == 'success') {
                            $('#search-result').html(data.rendered_data);

                        }

                    }

                })

            } else {

                console.log('no value');
                // $('#search-result').html('');
            }

            return false;
        });

        $('#search_input').on('blur', function (e) {

            var search_key = $(this).val();
            var key_length = search_key.length;
            if (key_length == 0) {
                setTimeout(function () {
                    $('#search-result').html('');
                    //$('#search_input').val('');
                }, 500)
            }
        });


        (function ($) {

            jQuery('#menu-1').megaMenu();


        })(jQuery);


    });
</script>
<script type="text/javascript">
    (function ($) {
        $("#accordion a").click(function () {
            $('.panel-collapse').collapse('hide');
            $($(this).attr('href')).collapse('show');
        });
    })(jQuery);
</script>
</body>

</html>