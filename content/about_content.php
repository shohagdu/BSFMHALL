<?php
if(!empty($class_info->get_single_info_query('About','33'))) {
    $home_page_message = $class_info->get_single_info_query('About','33');
}else{
    $home_page_message=[];
}
?>
<div id="home-specialist-container" class="container">
    <div class="row">
        <div class="div-only-mobile" ></div>
        <div class="col-md-12 col-sm-12 col-xs-12 doc-sec-text-conteiner">
            <h3 class="font-family-gotham specialist-sec-title"><?php echo !empty
                ($home_page_message['content_title'])?$home_page_message['content_title']:''; ?></h3>
            <div class="specialist-sec-desc" style="text-align:justify;font-size:15px;letter-spacing: :1px;line-height:
             30px;"><?php echo !empty
                ($home_page_message['content'])?$home_page_message['content']:''; ?></div>
        </div>

    </div>
</div>

