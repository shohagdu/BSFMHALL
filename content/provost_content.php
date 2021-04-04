<?php
$home_page_message = $class_info->get_single_info_query('Provost','33');
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
                        <img src="https://ssl.du.ac.bd/fontView/assets//hall_provost_image/hall_provost_HFM-1577794949.jpg" style="height: 150px;">
                    </div>
                    <div class="col-sm-8 col-xs-7">
                        <div style="padding-bottom:5px;color:#333;padding-top: 10px;font-weight: bold;
"> Dr. (Mrs.) Zakia Parveen</div>
                        <div style="font-size:14px;color:#333;">(Professor)</div>
                        <div style="font-size:14px;color:#333;">Department of Soil, Water & Environment</div>



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
