<!DOCTYPE html>
<html lang="en">
<?php
    include_once "content/website_manage_class.php";
    $class_info= new website_manage_class();
    $organization_info = $class_info->get_organization_info();
    $getImgPath=$class_info->getImgPath();
?>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="resources/images/favicon.ico" type="image/x-icon"/>
    <title>:: <?php echo (!empty($organization_info['com_name'])?$organization_info['com_name']:'') ?>  </title>
    <link href="assets/d39fb751/css/bootstrap.css" rel="stylesheet">
    <link href="resources/bootstrap-3.3.5/css/bootstrap.min.css" rel="stylesheet" media="all">
    <link href="resources/css/bootstrap-datepicker.css" rel="stylesheet" media="all">
    <link href="resources/css/custom.css" rel="stylesheet" media="all">
    <link href="resources/css/layerslider.css" rel="stylesheet" media="all">
    <link href="resources/css/sinister.css" rel="stylesheet" media="all">
    <link href="resources/css/responsive.css" rel="stylesheet" media="all">
    <link href="resources/css/jquery.selectbox.css" rel="stylesheet" media="all">
    <link href="resources/css/hover.css" rel="stylesheet" media="all">
    <link href="resources/css/mega_menu.min.css" rel="stylesheet" media="all">
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
    <meta name="description" content="<?php echo (!empty($organization_info['meta_description'])?$organization_info['meta_description']:$organization_info['com_name']) ?>">
    <meta name="Subject"  content="<?php echo (!empty($organization_info['meta_subject'])?$organization_info['meta_subject']:$organization_info['com_name']) ?>"/>

    <meta name="Abstract" content="<?php echo (!empty($organization_info['abstract'])?$organization_info['abstract']:'') ?>"/>
    <meta name="Googlebot" content="all"/>
    <meta http-equiv="imagetoolbar" content="no"/>
    <meta name="robots" content="index, follow"/>
    <meta name="copyright" content="Copyright &copy; <?php echo (!empty($organization_info['apps_name'])?$organization_info['apps_name']:'') ?>"/>
    <meta name="owner" content="<?php echo (!empty($organization_info['com_name'])?$organization_info['com_name']:'') ?>"/>
    <meta name="author" content="<?php echo (!empty($organization_info['author'])?$organization_info['author']:'') ?>"/>
    <meta name="Rating" content="General"/>
    <meta name="distribution" content="Global"/>
    <meta name="classification"
          content="<?php echo (!empty($organization_info['meta_description'])?$organization_info['meta_description']:'') ?>"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta names="apple-mobile-web-app-status-bar-style" content="black-translucent"/>

</head>
<body class="onhover_class">
<div id="loading">
    <div class="loading-div">
        <div id="fountainG">
            <div id="fountainG_1" class="fountainG"></div>
            <div id="fountainG_2" class="fountainG"></div>
            <div id="fountainG_3" class="fountainG"></div>
            <div id="fountainG_4" class="fountainG"></div>
            <div id="fountainG_5" class="fountainG"></div>
            <div id="fountainG_6" class="fountainG"></div>
            <div id="fountainG_7" class="fountainG"></div>
            <div id="fountainG_8" class="fountainG"></div>
        </div>
    </div>
</div>

<style>
    #loading {
        width: 100%;
        height: 100%;
        top: 0px;
        left: 0px;
        position: fixed;
        display: block;
        background-color: rgba(0, 0, 0, .9);
        z-index: 9999999;
        text-align: center;
    }

    #fountainG {
        position: relative;
        width: 66px;
        height: 12px;
        margin: auto;
        float: left;
    }

    .fountainG {
        position: absolute;
        top: 0;
        background-color: #fe5722;
        width: 12px;
        height: 12px;
        animation-name: bounce_fountainG;
        -o-animation-name: bounce_fountainG;
        -ms-animation-name: bounce_fountainG;
        -webkit-animation-name: bounce_fountainG;
        -moz-animation-name: bounce_fountainG;
        animation-duration: 0.975s;
        -o-animation-duration: 0.975s;
        -ms-animation-duration: 0.975s;
        -webkit-animation-duration: 0.975s;
        -moz-animation-duration: 0.975s;
        animation-iteration-count: infinite;
        -o-animation-iteration-count: infinite;
        -ms-animation-iteration-count: infinite;
        -webkit-animation-iteration-count: infinite;
        -moz-animation-iteration-count: infinite;
        animation-direction: normal;
        -o-animation-direction: normal;
        -ms-animation-direction: normal;
        -webkit-animation-direction: normal;
        -moz-animation-direction: normal;
        transform: scale(.3);
        -o-transform: scale(.3);
        -ms-transform: scale(.3);
        -webkit-transform: scale(.3);
        -moz-transform: scale(.3);
        border-radius: 5px;
        -o-border-radius: 5px;
        -ms-border-radius: 5px;
        -webkit-border-radius: 5px;
        -moz-border-radius: 5px;
    }

    #fountainG_1 {
        left: 0;
        animation-delay: 0.386s;
        -o-animation-delay: 0.386s;
        -ms-animation-delay: 0.386s;
        -webkit-animation-delay: 0.386s;
        -moz-animation-delay: 0.386s;
    }

    #fountainG_2 {
        left: 8px;
        animation-delay: 0.4825s;
        -o-animation-delay: 0.4825s;
        -ms-animation-delay: 0.4825s;
        -webkit-animation-delay: 0.4825s;
        -moz-animation-delay: 0.4825s;
    }

    #fountainG_3 {
        left: 16px;
        animation-delay: 0.589s;
        -o-animation-delay: 0.589s;
        -ms-animation-delay: 0.589s;
        -webkit-animation-delay: 0.589s;
        -moz-animation-delay: 0.589s;
    }

    #fountainG_4 {
        left: 25px;
        animation-delay: 0.6855s;
        -o-animation-delay: 0.6855s;
        -ms-animation-delay: 0.6855s;
        -webkit-animation-delay: 0.6855s;
        -moz-animation-delay: 0.6855s;
    }

    #fountainG_5 {
        left: 33px;
        animation-delay: 0.782s;
        -o-animation-delay: 0.782s;
        -ms-animation-delay: 0.782s;
        -webkit-animation-delay: 0.782s;
        -moz-animation-delay: 0.782s;
    }

    #fountainG_6 {
        left: 41px;
        animation-delay: 0.8785s;
        -o-animation-delay: 0.8785s;
        -ms-animation-delay: 0.8785s;
        -webkit-animation-delay: 0.8785s;
        -moz-animation-delay: 0.8785s;
    }

    #fountainG_7 {
        left: 49px;
        animation-delay: 0.975s;
        -o-animation-delay: 0.975s;
        -ms-animation-delay: 0.975s;
        -webkit-animation-delay: 0.975s;
        -moz-animation-delay: 0.975s;
    }

    #fountainG_8 {
        left: 58px;
        animation-delay: 1.0715s;
        -o-animation-delay: 1.0715s;
        -ms-animation-delay: 1.0715s;
        -webkit-animation-delay: 1.0715s;
        -moz-animation-delay: 1.0715s;
    }


    @keyframes bounce_fountainG {
        0% {
            transform: scale(1);
            background-color: #fe5722;
        }

        100% {
            transform: scale(.3);
            background-color: #fe5722);
        }
    }

    @-o-keyframes bounce_fountainG {
        0% {
            -o-transform: scale(1);
            background-color: #fe5722;
        }

        100% {
            -o-transform: scale(.3);
            background-color: #fe5722;
        }
    }

    @-ms-keyframes bounce_fountainG {
        0% {
            -ms-transform: scale(1);
            background-color: #fe5722;
        }

        100% {
            -ms-transform: scale(.3);
            background-color: #fe5722;
        }
    }

    @-webkit-keyframes bounce_fountainG {
        0% {
            -webkit-transform: scale(1);
            background-color: #fe5722;
        }

        100% {
            -webkit-transform: scale(.3);
            background-color: #fe5722;
        }
    }

    @-moz-keyframes bounce_fountainG {
        0% {
            -moz-transform: scale(1);
            background-color: #fe5722;
        }

        100% {
            -moz-transform: scale(.3);
            background-color: #fe5722;
        }
    }

    /*Loader animation*/
    .loading-div {
        width: 100px;
        position: absolute;
        left: 0;
        right: 0;
        margin-left: auto;
        margin-right: auto;
        top: 50%;
    }
</style>

<div id="header-top-container" class="container hide-on-1024 header-top header-top-container1">
    <div class="row">
        <div id="logo-container" class="col-md-2 col-sm-3 col-xs-4" >
            <div class="row">
                <a href="index.php"><img style="height: 80px;" src="<?php echo (!empty($organization_info['company_logo'])?$getImgPath.'logo/'.$organization_info['company_logo']:'resources/images/logo.png') ?>"/></a>
            </div>
        </div>
        <div id="top-right-container" class="col-md-10 col-sm-9 col-xs-8" >
            <div class="top-right-menu-container">
                    <span class="lan-switcher pull-right font-family-gotham">
                    </span>
                <ul class="list-unstyled top-right-menu-list pull-right font-family-gotham">
                    <li><a href="index.php">Home</a></li>
                    <li><a href="about.php">About</a></li>
                    <li><a href="faq.php">FAQ</a></li>
                    <li><a href="contact.php">Contact</a></li>
                    <li><a target="_blank" href="https://mail.google.com/">Webmail</a></li>

                </ul>

            </div>
            <div class="top-right-phone-container" style="font-size:16px !important">
                <span class=" pull-right no-color-bold"><?php echo (!empty($organization_info['helpline'])?$organization_info['helpline']:'') ?></span>
                <span class="orange-phn-number phn-no-small pull-right">Phone:</span>

            </div>
        </div>
    </div>
</div>

<div id="mobile-header-container" class="container-fluid hide-above-1024 header-top-container2">
    <div class="container">
        <div class="row">
            <div id="logo-container" class="col-sm-6 col-xs-6 padding-left-0 padding-right-0">
                <a href="index.php">
                    <img style="height: 40px;width:120%;margin-top:20px" class="img-responsive"
                         src="<?php echo (!empty($organization_info['company_logo'])?$getImgPath.$organization_info['company_logo']:'resources/images/logo.png') ?>"/></a>

            </div>
            <div id="top-right-container" class="col-sm-6 col-xs-6 padding-left-0 padding-right-0">
                <div class="top-right-menu-container">
                      <span class="lan-switcher pull-right font-family-gotham">
                      </span>
                    <div class="mobile-top-right-phone-container">
                        <span class="orange-phn-number phn-no-small pull-right"><?php echo (!empty($organization_info['helpline'])?$organization_info['helpline']:'') ?></span>
                        <i class="fa fa-phone pull-right"></i>
                    </div>
                </div>
                <div class="mobile-menu-and-search-container">
                    <a href="#" class="pull-right mobile-menu-btn">
                        <span id="bar-1" class="icon-bar"></span>
                        <span id="bar-2" class="icon-bar"></span>
                        <span id="bar-3" class="icon-bar"></span>
                    </a>
                    <div class="mobile-submit-btn pull-right"><a href="#"><i class="fa fa-search"></i></a></div>


                </div>
            </div>
        </div>
    </div>
</div>
