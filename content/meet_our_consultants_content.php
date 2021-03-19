
<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="div-only-mobile" ></div>
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <div class="post_content_right_bar width100">
                <h3 class="font-family-gotham specialist-sec-title">Meet Our Doctors</h3>
                <div class="post_content_description col-sm-12 col-md-12">
                    <div class="post_content_right_bar width100">
                        <div class="row">
                            <div class="post_content_description">
                                <?php
                                    $data_info=$class_info->all_speciallity_docotr_info();
                                ?>
                                <div class="panel panel-default">
                                    <?php
                                        if(!empty($data_info)){
                                            foreach ($data_info as $speciality_key=>$speciality_info){
                                                ?>
                                                    <div class="panel-heading" style='background-color:#eee;'><b><?php echo $speciality_key;
                                                    ?></b></div>
                                                    <div class="panel-body" style="background-color:#d0d0d0;">
                                                        <?php
                                                        if(!empty($speciality_info)){
                                                            foreach ($speciality_info as $doctor){
                                                                ?>
                                                                <div class="col-sm-4">
                                                                    <a  href="doctor_details.php?doctor_id=<?php echo $doctor['employee_id']
                                                                    ?>&name=<?php echo str_replace(' ', '-', $doctor['emp_name'])?>">
                                                                        <?php
                                                                        if(file_exists("medilife_admin/images/employee_image/".$doctor['image']) && !empty($doctor['image'])){
                                                                            ?>
                                                                            <img src="<?php echo "medilife_admin/images/employee_image/".$doctor['image'] ?>" style="height: 150px;">
                                                                        <?php }else{ ?>
                                                                            <img src="resources/images/default/default.png" class="img-thumbnail" style="height: 150px;">
                                                                        <?php } ?>
                                                                        <div class="consultants-text-container">
                                                                            <div style="padding-bottom:5px;
                                                                            padding-top:10px;
                                                                            color:#333;font-weight: bold;"><?php
                                                                                echo
                                                                                $doctor['emp_name']
                                                                                ?></div>
                                                                            <div style="font-size:14px;
                                                                            color:black"><?php echo
                                                                                $doctor['degree_details']
                                                                                ?></div>
                                                                            <div style="font-size:14px;color:black"> <?php echo
                                                                                $doctor['speciality_title']
                                                                                ?></div>

                                                                        </div>
                                                                    </a>
                                                                    <a class="btn btn-primary btn-xs"
                                                                       href="doctor_details.php?doctor_id=<?php echo
                                                                       $doctor['employee_id'] ?>&name=<?php echo
                                                                       str_replace(' ', '-', $doctor['emp_name'])?>"
                                                                       style="margin-top:10px;"><i
                                                                                class="glyphicon
                                                                                glyphicon-share-alt"></i> Doctor
                                                                                                   Details</a>

                                                                </div>
                                                                <?php
                                                            }
                                                            ?>
                                                            <div class="col-sm-12" style="margin-bottom:20px;"></div>
                                                            <?php
                                                        }else{
                                                            echo "<div style='color:red;text-align:center'>No Data Found.</div>";
                                                        }
                                                        ?>
                                                    </div>
                                                    
                                                <?php
                                            }
                                        }
                                    ?>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>


</div>
</div>

