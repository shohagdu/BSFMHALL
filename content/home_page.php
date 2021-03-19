<?php
   if(!empty($class_info->get_single_info_query('Home Page','33'))) {
       $home_page_message = $class_info->get_single_info_query('Home Page','33');
   }else{
       $home_page_message=[];
   }
   if(!empty($class_info->get_single_info_query('Chairman Message','33'))) {
       $chairman_message = $class_info->get_single_info_query('Chairman Message','33');
   }else{
       $chairman_message=[];
   }

   $data_info=$class_info->show_all_doctor(5);

   //carefull_unit
$carefull_one = !empty($class_info->get_single_info_query('careful_one','32'))? $class_info->get_single_info_query('careful_one','32'):NULL;
$carefull_two = !empty($class_info->get_single_info_query('careful_two','32'))? $class_info->get_single_info_query('careful_two','32'):NULL;
$carefull_three = !empty($class_info->get_single_info_query('careful_three','32'))? $class_info->get_single_info_query('careful_three','32'):NULL;
$carefull_four = !empty($class_info->get_single_info_query('careful_four','32'))? $class_info->get_single_info_query('careful_four','32'):NULL;
$carefull_five = !empty($class_info->get_single_info_query('careful_five','32'))? $class_info->get_single_info_query('careful_five','32'):NULL;
$carefull_six = !empty($class_info->get_single_info_query('careful_six','32'))? $class_info->get_single_info_query('careful_six','32'):NULL;
?>
<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <h3 class="font-family-gotham specialist-sec-title"><?php echo !empty
                ($home_page_message['content_title'])?$home_page_message['content_title']:''; ?></h3>
                <div class="col-sm-12">
                    <div class="specialist-sec-desc" style="text-align:justify;font-size:15px;letter-spacing: :1px;line-height:
                     25px;"><?php echo !empty
                        ($home_page_message['content'])?$home_page_message['content']:''; ?></div>
                </div>
        </div>

    </div>
</div>

<div id="home-promotional-container" class="container-fluid">
    <div class="container">

        <div class="row" style="margin-top: 50px">
            <div id="promo-tab-1" class="col-md-12 promo-tab promo-active">
                <div class="row">

                    <div class="col-md-12 col-xs-12  promo-box promo-box-mobile-width promo-box 1" >
                        <div class="promo-box-bg testimonial-box home-testimonial-box ImageWrapper BackgroundS">

                            <div style="margin-bottom:20px;">
                                <h4 class="promo-title" style="color: #FF5722">
                                    <?php echo !empty
                                    ($chairman_message['content_title'])?$chairman_message['content_title']:''; ?> </h4>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-sm-2 col-xs-5 ">
                                
                                   <img src="<?php echo ' https://ssl.du.ac.bd/fontView/assets//hall_provost_image/hall_provost_HFM-1577794949.jpg' ?>" style="height:170px;">
                                
                            </div>
                            <div class="col-sm-10 col-xs-12 ">
                                <div>
                                    <div style="font-size: 14px;color: #333;text-align: justify;padding-top:10px;">
                                        <?php echo !empty
                                        ($chairman_message['content'])?$chairman_message['content']:''; ?>
                                    </div >
                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>

        </div>

    </div>
</div>
<div class="clearfix"></div>
<h3 class="font-family-gotham specialist-sec-title text-center">Events</h3>
<div class="clearfix"></div>
<div  class="container">
    <div class="row" style="border-bottom: 2px solid #d0d0d0;margin-bottom: 10px;">
        <div class="col-md-4 col-sm-4 col-xs-12 doc-sec-text-conteiner">
            <img src="<?php echo $getImgPath ?>/gallary/heading_1612503241.jpg" style="height:170px;width: 100%">
        </div>
        <div class="col-md-8 col-sm-8 col-xs-12 mobile-margin">
            <div >
                <div id="pjax_home_consultants_index">
                    <h3 class="font-family-gotham specialist-sec-title">Over 100 Multi-Disciplinary Specialists</h3>
                    <p class="specialist-sec-desc">State of the art technology and expertise combined with the support of our
                        friendly staff, we strive each day to be the top healthcare provider, not only in Bangladesh but within
                        the Asia-Pacific region. <a class="" href="meet_our_consulants.php">Read More..</a></p>

                </div>

            </div>
        </div>
    </div>

    <div class="row" style="border-bottom: 2px solid #d0d0d0;margin-bottom: 10px;">
        <div class="col-md-4 col-sm-4 col-xs-12 doc-sec-text-conteiner">
            <img src="<?php echo $getImgPath ?>//gallary/heading_1612503241.jpg" style="height:170px;width: 100%">
        </div>
        <div class="col-md-8 col-sm-8 col-xs-12 mobile-margin">
            <div >
                <div id="pjax_home_consultants_index">
                    <h3 class="font-family-gotham specialist-sec-title">Over 100 Multi-Disciplinary Specialists</h3>
                    <p class="specialist-sec-desc">State of the art technology and expertise combined with the support of our
                        friendly staff, we strive each day to be the top healthcare provider, not only in Bangladesh but within
                        the Asia-Pacific region. <a class="" href="meet_our_consulants.php">Read More..</a></p>

                </div>

            </div>
        </div>
    </div>


</div>


<div id="home-post-container" class="container-fluid">

    <div class="container" id="padding-left-right animated">
        <div class="clearfix"></div>
        <h3 class="font-family-gotham specialist-sec-title text-center">Notice Board</h3>
        <div class="clearfix"></div>
        <div id="posts" class="row animated">
            <div class="col-md-4 col-sm-6 col-xs-12 post ImageWrapper BackgroundS">
                <div class="post-wrapper">
                    <h4 class="post-title">Notice </h4>
                    <div class="post-featured-img-container ImageWrapper BackgroundS">
                        <img class="img-responsive" width="100%" height="auto"
                             src="<?php echo $getImgPath ?>/gallary/heading_1612503241.jpg" alt="">
                    </div>
                    <div class="post-ceontent">
                        <?php echo (!empty($carefull_one['content']))?$carefull_one['content']:NULL ?>
                    </div>
                     <div class="post-buttons-container">
                        <a class="post-action-link hvr-sweep-to-bottom" href="carefully.php?type=Involuntary-loss_of_urine">Read
                            more</a>

                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 post ImageWrapper BackgroundS">
                <div class="post-wrapper">
                    <h4 class="post-title">Notice 1</h4>

                    <div class="post-featured-img-container ImageWrapper BackgroundS">
                        <img class="img-responsive" width="100%" height="auto"
                             src="<?php echo $getImgPath ?>/gallary/heading_1612503241.jpg" alt="">
                    </div>
                    <div class="post-ceontent">
                        <?php echo (!empty($carefull_one['content']))?$carefull_one['content']:NULL ?></div>
                    <div class="post-buttons-container">
                        <a class="post-action-link hvr-sweep-to-bottom" href="carefully.php?type=Cancer">Read more</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-6 col-xs-12 post ImageWrapper BackgroundS">
                <div class="post-wrapper">
                    <h4 class="post-title">Notice 2</h4>

                    <div class="post-featured-img-container ImageWrapper BackgroundS">
                        <img class="img-responsive" width="100%" height="auto"
                             src="<?php echo $getImgPath ?>/gallary/heading_1612503241.jpg" alt="">
                    </div>
                    <div class="post-ceontent">
                        <?php echo (!empty($carefull_one['content']))?$carefull_one['content']:NULL
                        ?></div>

                    <div class="post-buttons-container">
                        <a class="post-action-link hvr-sweep-to-bottom" href="carefully.php?type=Cancer">Read more</a>
                    </div>

                </div>
            </div>

            




        </div>


<!--        <div class="health_archive_div">-->
<!--            <a class="hvr-sweep-to-bottom" href="#">Health Topic</a>-->
<!--        </div>-->

    </div>
</div>