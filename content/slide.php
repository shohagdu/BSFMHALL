<div id="home-banner-container" class="container-fluid font-family-gotham">
    <div class="row">
        <div class="col-md-12 padding-left-0 padding-right-0 position-relative">


            <div id="slider-wrapper">
                <div id="layerslider" class="ls-wp-container" style="width:100%;">
                    <?php
                        $gallary_info = $class_info->get_all_gallary_info(3);
                        if(!empty($gallary_info)){
                        foreach ($gallary_info as $info){
                    ?>
                    <div class="ls-slide" data-ls="slidedelay:5000;transition2d:92;timeshift:-1000;">
                        <img src="<?php  echo $getImgPath."gallary/".$info['source_info'];  ?>" class="ls-bg img-responsive" alt=""/>
                        <h1 class="ls-l"
                            style="text-transform:uppercase;font-family:'gotham-medium'; color:#FFFFFF;white-space: nowrap;"
                            data-ls="offsetxin:0;durationin:3000;delayin:2000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;">
                        </h1>
                        <div class="ls-l" style="text-transform:uppercase;font-family:'gotham-bold';color:#ffffff;"
                             data-ls="offsetxin:-150;durationin:2000;delayin:500;easingin:easeInOutQuart;rotateyin:-40;offsetxout:-150;durationout:1000;rotateyout:-40;">
                        </div>
                    </div>
                    <?php } }?>

                </div>
            </div>



            <div class="home-social-container hide-on-1024">
                <ul class="list-unstyled home-social-list">
                    <li class="home-social-text">
                        CONNECT WITH US
                    </li>
                    <li><a class="facebook-upper" href="<?php echo (!empty($organization_info['facebook'])?$organization_info['facebook']:'') ?>" target="_blank"></a></li>
                    <li><a class="twitter-upper" target="_blank" href="<?php echo (!empty($organization_info['twitter'])?$organization_info['twitter']:'') ?>"></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>