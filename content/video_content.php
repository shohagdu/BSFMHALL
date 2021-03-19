
<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="div-only-mobile" ></div>
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <div class="post_content_right_bar width100">
                <h3 class="font-family-gotham specialist-sec-title">VIDEO GALLERY</h3>
                    <div class="post_content_description col-sm-12 col-md-12">

                        <div class="row">
                            <?php
                            $gallary_info = $class_info->get_all_gallary_info(2);
                            if(!empty($gallary_info)){
                            foreach ($gallary_info as $info){
                            ?>
                                <div class="post_content_description col-sm-12 col-md-6">


                                        <?php echo $info['source_info']; ?>
                                    <div style="text-align: justify;height: 80px;background-color: #d0d0d0;
                                    padding:10px;margin-bottom: 20px;font-size:13px;"><?php echo
                                        $info['content_info'];
                                        ?></div>
                                </div>
                            <?php } } ?>
                        </div>

                    </div>


            </div>
        </div>
    </div>


</div>
</div>

