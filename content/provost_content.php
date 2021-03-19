<?php
$home_page_message = $class_info->get_single_info_query('Home Page','33');
?>
<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <div class="div-only-mobile" ></div>
            <div class="col-sm-12">
                <h3 class="font-family-gotham specialist-sec-title"><?php echo !empty
                    ($home_page_message['content_title'])?$home_page_message['content_title']:''; ?></h3>
                <div class="specialist-sec-desc" style="text-align:justify;font-size:15px;letter-spacing: :1px;line-height:
                     25px;">
                    <div class="col-sm-2 col-xs-5">
                        <?php
                        if(file_exists("medilife_admin/images/employee_image/".$doctor_details_info['image']) && !empty($doctor_details_info['image'])){
                            ?>
                            <img src="<?php echo "medilife_admin/images/employee_image/".$doctor_details_info['image'] ?>" style="height: 150px;">
                        <?php }else{ ?>
                            <img src="resources/images/default/default.png" class="img-thumbnail" style="height: 150px;">
                        <?php } ?>
                    </div>
                    <div class="col-sm-8 col-xs-7">
                        <div style="padding-bottom:5px;color:#333;padding-top: 10px;font-weight: bold;
"><?php
                            echo
                            !empty($doctor_details_info['emp_name'])?$doctor_details_info['emp_name']:'Name of Provost'
                            ?></div>
                        <div style="font-size:14px;color:#333;"><?php echo
                            (!empty($doctor_details_info['degree_details'])?$doctor_details_info['degree_details']:'Degree Details');
                            ?></div>
                        <div style="font-size:14px;color:#333;margin-top:10px;"> <?php echo
                            (!empty($doctor_details_info['speciality_title'])?$doctor_details_info['speciality_title']:'Speciality Title')
                            ?> </div>
                        <div style="font-size:14px;padding-top: 10px;"> <?php echo
                            !empty($doctor_details_info['visiting_info'])? "<b>Visiting Hours:</b> "
                                .$doctor_details_info['visiting_info']:'5PM to 10AM'
                            ?> </div>

                    </div>
                    <div class="clearfix"></div>
                    <div class="col-sm-12" style="margin-top:10px;">
                        <?php echo !empty ($home_page_message['content'])?$home_page_message['content']:''; ?>
                    </div>

                 </div>
            </div>
        </div>
    </div>
</div>
