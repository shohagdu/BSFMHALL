<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="div-only-mobile"></div>
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <div class="post_content_right_bar width100">
                <h3 class="font-family-gotham specialist-sec-title"> Details of <?php
                    if (!empty($_GET['name'])) {
                        echo str_replace
                        ('-', ' ', $_GET['name']);
                    }

                    ?></h3>
                <div class="post_content_description col-sm-12 col-md-12">
                    <div class="post_content_right_bar width100">
                        <div class="row">
                            <div class="post_content_description">
                                <?php
                                $doctor_details_info = $class_info->get_doctor_details_info($_GET['doctor_id']);
                                // echo "<pre>";
                                // print_r($doctor_details_info);
                                ?>
                                <div class="col-sm-2">


                                    <?php
                                    if (file_exists("medilife_admin/images/employee_image/" . $doctor_details_info['image']) && !empty($doctor_details_info['image'])) {
                                        ?>
                                        <img src="<?php echo "medilife_admin/images/employee_image/" . $doctor_details_info['image'] ?>"
                                             style="height: 150px;">
                                    <?php } else { ?>
                                        <img src="resources/images/default/default.png" class="img-thumbnail"
                                             style="height: 150px;">
                                    <?php } ?>
                                </div>
                                <div class="col-sm-8">
                                    <div style="padding-bottom:5px;color:#333;padding-top: 10px;font-weight: bold;
"><?php
                                        echo
                                        $doctor_details_info['emp_name']
                                        ?></div>
                                    <div style="font-size:14px;color:#333;"><?php echo
                                        $doctor_details_info['degree_details']
                                        ?></div>

                                </div>
                                <?php
                                if (!empty($doctor_details_info['biography'])) {
                                    ?>
                                    <div class="col-sm-12">
                                        <div style="margin-bottom:20px;margin-top:20px; "><b>Biography</b></div>
                                        <div>
                                            <?php echo $doctor_details_info['biography'] ?>
                                        </div>
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


</div>
</div>


