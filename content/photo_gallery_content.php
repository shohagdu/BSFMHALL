<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="div-only-mobile" ></div>
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <div class="post_content_right_bar width100">
                <h3 class="font-family-gotham specialist-sec-title">PHOTO GALLERY</h3>
                <div >
                    <?php
                        $gallary_info = $class_info->get_all_gallary_info(1);
                    ?>
                    <div class="post_gallery tripple"  >
                        <div class="lightgallery">
                            <?php
                                if(!empty($gallary_info)){
                                    foreach ($gallary_info as $info){
                                        ?>
                                             <div class="col-sm-12 col-md-3">
                                                <a data-sub-html="<h4></h4><p></p>" href="<?php echo $getImgPath."/gallary/".$info['source_info']; ?>"
                                                   data-src="<?php echo $getImgPath."/gallary/".$info['source_info']; ?>" style="background-image:url
                                               ('<?php echo $getImgPath."/gallary/".$info['source_info']; ?>');">
                                                    <img src=" <?php echo $getImgPath."/gallary/".$info['source_info']; ?>" alt=""
                                                         style="width: 100%;height:
                                                    180px;">
                                                </a>
                                                <div class="image_title">
                                                    <?php echo $info['content_info']; ?>
                                                </div>
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

<style>
    .image_title{
        background: #d0d0d0;height: 40px;padding: 8px;font-size:13px;text-align:
            center
    }
</style>