<?php
$data_info=$class_info->show_details_info($_GET['id']);
?>
<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="div-only-mobile" ></div>
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <div class="post_content_right_bar width100">
                <h3 class="font-family-gotham specialist-sec-title"><?php
                    echo !empty($data_info['title_info'])?$data_info['title_info']:'';
                    ?></h3>
                <div class="post_content_description col-sm-12 col-md-8">
                    <div class="post_content_right_bar width100">
                        <div class="row">
                            <h2><?php
                                echo !empty($data_info['content_title'])?$data_info['content_title']:'';
                                ?></h2>
                            <div class="post_content_description">
                                <div style="text-align: justify"><?php
                                    echo !empty($data_info['content'])?$data_info['content']:'';
                                    ?>.</div>

                            </div>
                        </div>
                    </div>

                </div>

                <div class="col-md-4 col-xs-12 sidebar-container inner-right-box-container">
                    <div id="sidebar-1" class="row sidebar patients-sidebar">
                        <div class="col-md-12 sidebar-item patient-info-sidebar font-family-gotham position-relative calegory-dropdown-container">
                            <a class="category-list-link open-cat-list">Department Info.</a>
                            <?php
                            include('content/right_bar_students.php');
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
</div>

<style>
    .post_content_description ul li{
        text-align: justify;
        padding: 3px;
        font-size:15px;
    }
</style>

