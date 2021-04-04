<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="div-only-mobile" ></div>
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <div class="post_content_right_bar width100">
                <h3 class="font-family-gotham specialist-sec-title">House Tutors</h3>
                <div class="post_content_description col-sm-12 col-md-8">
                    <div class="post_content_right_bar width100">
                        <div class="row">
                            <?php
                                $search_specality=561;
                                include "db_config.php";
                                $sql = "SELECT employees.employee_id, employees.emp_name, employees.image , employees.degree_details,visiting_info,employees.speciality FROM  employees    where employees.speciality='$search_specality'  and employees.show_website=1 and  employees.is_active=1 order by id DESC ";
                                $result = mysqli_query($conn, $sql);
                                if (mysqli_num_rows($result) > 0) {
                                    $all_data = [];
                                    while ($doctor = mysqli_fetch_assoc($result)) {
                                        ?>
                                        <div class="col-sm-6 col-xs-6 col-md-6"  >
                                            <div class="col-sm-12" style="background: #eee;margin-bottom: 20px;height: 350px;">
                                                <a data-pjax="false" href="doctor_details.php?doctor_id=<?php echo $doctor['employee_id']
                                                ?>&name=<?php
                                                echo str_replace
                                                (' ', '-', $doctor['emp_name'])?>">
                                                    <div style="margin-top: 15px;text-align: center" >
                                                        <?php
                                                        if(file_exists("medilife_admin/images/employee_image/".$doctor['image']) && !empty($doctor['image'])){
                                                            ?>
                                                            <img src="<?php echo "medilife_admin/images/employee_image/".$doctor['image'] ?>" style="height: 150px;">
                                                        <?php }else{ ?>
                                                            <img src="resources/images/default/default.png" class="img-thumbnail" style="height: 150px;">
                                                        <?php } ?>
                                                    </div>
                                                    <div class="consultants-text-container">
                                                        <div style="padding-bottom:5px;color:#333;padding-top: 20px;font-weight: bold;text-align: center;
"><?php
                                                            echo
                                                            $doctor['emp_name']
                                                            ?></div>
                                                        <div style="font-size:14px;color:#333;text-align: center;"><?php echo
                                                            $doctor['degree_details']
                                                            ?></div>


                                                    </div>

                                                </a>
                                                <div class="col-lg-offset-3 col-sm-4 " style="padding-bottom: 10px;">
                                                <a class="btn btn-info text-center"
                                                   href="doctor_details.php?doctor_id=<?php echo
                                                   $doctor['employee_id'] ?>&name=<?php echo
                                                   str_replace(' ', '-', $doctor['emp_name'])?>" style="margin-top:10px;"><i class="glyphicon    glyphicon-share-alt"></i>    Profile</a>
                                                </div>
                                            </div>
                                        </div>


                                        <?php
                                    }

                                } else {
                                    echo "No data Found";exit;
                                }

                            ?>
                        </div>
                    </div>

                </div>

                <div class="col-md-4 col-xs-12 sidebar-container inner-right-box-container">
                        <div id="sidebar-1" class="row sidebar patients-sidebar">
                            <div class="col-md-12 sidebar-item patient-info-sidebar font-family-gotham position-relative calegory-dropdown-container">
                                <?php
                                    include('content/right_bar_authorities.php');
                                ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>
