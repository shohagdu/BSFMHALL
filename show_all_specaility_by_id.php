<?php
    extract($_POST);
    if(!empty($search_specality)) {
        include "content/db_config.php";
        $sql = "SELECT employees.employee_id, employees.emp_name, employees.image , employees.degree_details,visiting_info,employees.speciality FROM  employees    where employees.speciality='$search_specality'  and employees.show_website=1 and  employees.is_active=1 order by id DESC ";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $all_data = [];
            while ($doctor = mysqli_fetch_assoc($result)) {
       ?>
                <div class="col-sm-6 col-xs-6 col-md-3"  >
                    <div class="col-sm-12" style="background: #eee;margin-bottom: 20px;">
                    <a data-pjax="false" href="doctor_details.php?doctor_id=<?php echo $doctor['employee_id']
                    ?>&name=<?php
                    echo str_replace
                    (' ', '-', $doctor['emp_name'])?>">
                        <div style="margin-top: 15px;" >
                            <?php
                            if(file_exists("medilife_admin/images/employee_image/".$doctor['image']) && !empty($doctor['image'])){
                                ?>
                               <img src="<?php echo "medilife_admin/images/employee_image/".$doctor['image'] ?>" style="height: 150px;">
                            <?php }else{ ?>
                                 <img src="resources/images/default/default.png" class="img-thumbnail" style="height: 150px;">
                             <?php } ?>
                         </div>
                        <div class="consultants-text-container">
                            <div style="padding-bottom:5px;color:#333;padding-top: 20px;font-weight: bold;
"><?php
                                echo
                                $doctor['emp_name']
                                ?></div>
                            <div style="font-size:14px;color:#333;"><?php echo
                                $doctor['degree_details']
                                ?></div>
                              <?php
                                if(!empty($doctor['visiting_info'])){
                              ?>
                                <div style="font-size:12px;padding-top: 10px;color:#333">
                                    <b>Visiting Hours:</b>
                                    <div class="clearfix"></div>
                                    <?php echo
                                    !empty($doctor['visiting_info'])?$doctor['visiting_info']:''
                                    ?>
                                </div>
                           <?php } ?>

                       </div>

                    </a>
                        <a class="btn btn-primary btn-xs"
                           href="doctor_details.php?doctor_id=<?php echo
                           $doctor['employee_id'] ?>&name=<?php echo
                           str_replace(' ', '-', $doctor['emp_name'])?>" style="margin-top:10px;"><i
                                    class="glyphicon    glyphicon-share-alt"></i> Doctor  Details</a>
                </div>
                </div>


        <?php
            }

        } else {
            echo "No data Found";exit;
        }
    }else{
        echo "No data Found";exit;
    }
    ?>

<style>
    .consultants-name{
        font-size:15px;
        font-weight: bold;
        padding-top:8px!important;
        padding-bottom:5px!important;
    }
    .consultants-degree{
        font-size:13px;
        padding-bottom:15px!important;
    }

    </style>