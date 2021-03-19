<?php
class website_manage_class
{
    function get_single_info_query($item,$type_id){
        include "db_config.php";
        $sql = "SELECT content_info.id, content_info.content_title,content_info.content FROM  all_sttings inner join website_content_info as content_info on content_info.title_id=all_sttings.id  where all_sttings.type=$type_id and all_sttings.title='$item' and all_sttings.is_active=1 and content_info.is_active=1  ";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            return $row;
        } else {
            return false;
        }
    }
    function show_all_doctor($limit=10){
        include "db_config.php";
        $sql = "SELECT employees.employee_id,employees.image,employees.emp_name,degree_details,speciality.title as speciality_title FROM  employees inner join all_sttings as speciality on speciality.id=employees.speciality where employees.show_website=1 and employees.is_active=1 order by employees.display_position,employees.id limit $limit";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $all_data=[];
            while($row = mysqli_fetch_assoc($result)) {
                 $all_data[]=$row;
            }
            return $all_data;
        } else {
            return false;
        }
    }
    function show_all_web_content($item,$type_id,$limit_first=0,$limit_last=10){
        include "db_config.php";
        $sql = "SELECT content_info.id, all_sttings.title as title_info FROM  all_sttings inner join website_content_info as content_info on content_info.title_id=all_sttings.id  where all_sttings.type=$type_id and content_info.type='$item' and all_sttings.is_active=1 and content_info.is_active=1 LIMIT $limit_first, $limit_last ";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $all_data=[];
            while($row = mysqli_fetch_assoc($result)) {
                $all_data[]=$row;
            }
            return $all_data;
        } else {
            return false;
        }
    }
    function show_details_info($id){
        include "db_config.php";
        $sql = "SELECT content_info.id, content_info.content_title,content_info.content,all_sttings.title as title_info FROM website_content_info as content_info   inner join all_sttings on content_info.title_id=all_sttings.id  where content_info.id=$id limit 1 ";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            return $row;
        } else {
            return false;
        }
    }
    function all_setting_info($type_id){
        include "db_config.php";
        $sql = "SELECT all_sttings.id, all_sttings.title FROM  all_sttings  where all_sttings.type=$type_id order by id DESC ";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $all_data=[];
            while($row = mysqli_fetch_assoc($result)) {
                $all_data[]=$row;
            }
            return $all_data;
        } else {
            return false;
        }
    }
    function all_speciallity_docotr_info(){
        include "db_config.php";
        $sql = "SELECT id,type,title,is_active FROM  all_sttings as speciality  where speciality.type=30 and speciality.is_active=1 order by speciality.display_position,speciality.id ";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $all_data=[];
            while($row = mysqli_fetch_assoc($result)) {
                $all_data[$row['title']]=$this->department_wise_all_doctor($row['id']);
            }
            return $all_data;
        } else {
            return false;
        }
    }

    function department_wise_all_doctor($speciality_id){
        include "db_config.php";
        $sql = "SELECT employees.employee_id,employees.image,employees.emp_name,degree_details,speciality.title as speciality_title FROM  employees inner join all_sttings as speciality on speciality.id=employees.speciality where employees.show_website=1 and employees.is_active=1 and employees.speciality='$speciality_id' order by employees.display_position,employees.id";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $all_data=[];
            while($row = mysqli_fetch_assoc($result)) {
                $all_data[]=$row;
            }
            return $all_data;
        } else {
            return false;
        }
    }

    function get_doctor_details_info($doctor_id){
        include "db_config.php";
        $sql = "SELECT employees.employee_id,image,biography,visiting_info,degree_details,emp_name,speciality.title as speciality_title FROM  employees inner join all_sttings as speciality on speciality.id=employees.speciality where employees.employee_id='$doctor_id'";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            return $row;
        } else {
            return false;
        }
    }
    function get_all_gallary_info($type_id){
        include "db_config.php";
        $sql = "SELECT  website_gallary_info.id,website_gallary_info.type,website_gallary_info.source_info,website_gallary_info.content_info,website_gallary_info.display_position,website_gallary_info.is_active FROM   website_gallary_info  where website_gallary_info.type=$type_id and  website_gallary_info.is_active=1 order by display_position ASC, id DESC ";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $all_data=[];
            while($row = mysqli_fetch_assoc($result)) {
                $all_data[]=$row;
            }
            return $all_data;
        } else {
            return false;
        }
    }

    function get_organization_info(){
        include "db_config.php";
        $sql = "SELECT * FROM company_infos  where status=1 order  by id DESC limit 1 ";
        $result = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result) > 0) {
            $row = mysqli_fetch_assoc($result);
            return $row;
        } else {
            return false;
        }
    }
    function getImgPath(){
        return 'http://localhost/BSFMHALL/admin/images/';
    }


}