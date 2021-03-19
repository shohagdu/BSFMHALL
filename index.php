<?php
    //echo "<div style='font-size:38px!important;text-align:center;font-weight:bold;color:red;'>Your Domain is expired. Please renew as soon as possible. Please Contact Technical Team</div>";
   // exit;
    include ('layout/header.php');
    include ('layout/menu.php');
?>

<div class="container">
    <div class="row">
        <div style="position:relative;">
            <div class="main_search_result_page" id="search-result"></div>
        </div>
    </div>
</div>

<?php
    include ('content/slide.php');
    include ('content/home_page.php');
?>

<!--<div id="slider-bottom-border" class="container-fluid">&nbsp;</div>-->


<?php
    include ('layout/footer.php');
?>

<style>
    .domain-expired{
        
    }
</style>
