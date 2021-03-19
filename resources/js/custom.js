(function($){
    jQuery(window).load(function(){

        /*home post masonry starts*/
        //var gutter = parseInt(jQuery('.post').css('marginBottom'));
        var container = jQuery('#posts');

        // Creates an instance of Masonry on #posts

        container.masonry({
            gutter: 0,
            itemSelector: '.post',
            columnWidth: '.post'
        });

        var consultants_container = jQuery('#consultants');

        // Creates an instance of Masonry on #posts

        consultants_container.masonry({
            gutter: 0,
            itemSelector: '.consultant',
            columnWidth: '.consultant'
        });

        /*home post masonry ends*/

        var testimonial_container = jQuery('#testimonials_id');

        // Creates an instance of Masonry on #posts

        testimonial_container.masonry({
            gutter: 0,
            itemSelector: '.testimonials_class',
            columnWidth: '.testimonials_class'
        });


        /*home post masonry ends*/



    });
    jQuery(document).ready(function($){

        resize();
       // calling_wow();
        /*For sub menu tab functionality*/
        
        /*For sub menu tab functionality*/
        jQuery('.has-sub-menu').on('click', function (e) {


            e.stopPropagation();
            e.preventDefault();

            var parent = jQuery(this).parent();
            jQuery('.tab-linkers').removeClass('active');
            parent.toggleClass('active');
            var tobeShow = jQuery(this).attr('aria-controls');

            var position_left = jQuery(this).offset().left;

            // jQuery('.hover-white-fixed-div').css('left',position_left);
            
            if(tobeShow == 'submenu-56' || tobeShow =='submenu-57'){
               jQuery('#main-submenu-container').css('width','100%');
               jQuery('.main-submenu-bg').css({'position':'absolute','width':'100%'});
            }else{
                jQuery('#main-submenu-container').css('width','auto');
               jQuery('.main-submenu-bg').css({'position':'relative','width':'auto'});
            }
            jQuery('#main-submenu-container').show();
            jQuery('.menutab').hide();
            jQuery('#'+tobeShow).show();

            jQuery('#'+tobeShow).css('left',position_left);

        })

        
        jQuery('.mobile-submit-btn').click(function(){
            jQuery('#searchContainer').slideToggle('slow');
            jQuery('#mobile-menu-container').css({'display':'none'});
        });

        jQuery('.mobile-menu-btn').click(function () {
            jQuery('#searchContainer').css({'display':'none'});

        });
           
        jQuery('.onhover_class').click(function(){
            $('#search-result').html('');
        });

        jQuery('.sub-menu-closer').on('click', function (e) {
            e.preventDefault();
            closeMenuTab();
        })

        jQuery("#main-submenu-container").click(function(e){
            e.stopPropagation();
        });

        jQuery(document).click(function(){

            $('#search-result').html('');
            closeMenuTab();

        });

        function closeMenuTab(){
            jQuery('#main-submenu-container').hide();
            jQuery('.tab-linkers').removeClass('active');
            jQuery('.menutab').hide();
        }

        jQuery('.tab-linkers a').mouseover(function(){

            jQuery( this ).click();

        });

               

       
        jQuery('.tab-linkers a').mouseout(function(){
            

            jQuery(document).click(function(){
                closeMenuTab();
            });
        });



        jQuery( ".main-submenu-bg" ).mouseleave(function() {
            jQuery('#main-submenu-container').hide();
            jQuery('.tab-linkers').removeClass('active');
            jQuery('.menutab').hide();
        });

        jQuery('.ask_a_question').on('click', function (e) {

            e.stopPropagation();
            $('#open_ask_a_question').modal('show');
        });

        jQuery('.experience-link').on('click', function (e) {

            e.stopPropagation();
            $('#share_your_experience').modal('show');
        });

        jQuery('.make_a_appoinment_button').on('click', function (e) {

            e.stopPropagation();
            $('#make_a_appoinment').modal('show');
        });

        

        /*home slider ends*/

        /*For home box tab*/
        jQuery('.box-item').on('click', function (e) {
            e.stopPropagation();
            jQuery(this).removeClass('active');
            jQuery(this).addClass('active');
            var tobeShow = jQuery(this).attr('aria-controls');

            jQuery('.three-box-tab-container').show();
            jQuery('.box-tab').hide();
            jQuery('#'+tobeShow).show();

        });
        jQuery('.box-closer').on('click', function (e) {
            e.stopPropagation();
            e.preventDefault();
            jQuery('.three-box-tab-container').hide();
            jQuery('.box-item').removeClass('active');
            jQuery('.box-tab').hide();
        })
        /*home box tab ends*/
        /*for pulications share button*/

        jQuery('.post-buttons-container-publications').on('click', function (e) {
            e.stopPropagation();
            e.preventDefault();
            var parent = jQuery(this).parent();
            jQuery('.share-pop').show();

        })

        /*window.addEventListener('mouseup', function(event){
            var box = document.getElementsByClassName('share-pop');
            if(event.target!= box){
                box.style.display='none';
            }
        })*/

        /*for pulications share button ends*/
        /* create new account starts*/

        jQuery('.registration-btn').on('click', function (e) {
            e.stopPropagation();
            e.preventDefault();
            var parent = jQuery(this).parent();
            jQuery('.registration-row').show();

        })

        /* create new account ends*/
        /*for promo tab*/
        jQuery('.promo-tab-linker').on('click', function (e) {
            e.stopPropagation();
            e.preventDefault();
            jQuery('.promo-tab-linker').removeClass('active');
            jQuery(this).addClass('active');
            var tobeShow = jQuery(this).attr('aria-controls');

            jQuery('.promo-tab').removeClass('promo-active');
            jQuery('#'+tobeShow).addClass('promo-active');

        });
        /*for promo tab ends*/

        /*application form tab starts*/
        jQuery('.apply-tab-linker').on('click', function (e) {
            e.stopPropagation();
            e.preventDefault();
            jQuery('.apply-tab-linker').removeClass('active');
            jQuery(this).addClass('active');
            var tobeShow = jQuery(this).attr('aria-controls');

            jQuery('.apply-tab').removeClass('promo-active');
            jQuery('#'+tobeShow).addClass('promo-active');

        });
        /*application form tab ends*/

        /*adding same height in footer section starts*/
        footerSameHeight();
        /*adding same height in footer section ends*/

        /*sidebar category list starts*/
        jQuery('.open-cat-list').on('click', function (e) {
            e.preventDefault();
            jQuery('#cat-arrow').toggleClass('fa-angle-down fa-angle-up');
            jQuery(this).toggleClass('open-cat-list close-cat-list');
            jQuery('.category-list').toggleClass('show-category-list');

        });
        /*sidebar category list ends*/
        /* home slider orange tab starts*/
        //jQuery('#open-appointment').on('click', function (e) {
        //	e.stopPropagation();
        //	e.preventDefault();
        //	var parent = jQuery(this).parent();
        //	jQuery('#tab-box-2-yellow').show();
        //
        //})
        /* home slider orange tab ends*/
        /*for mobile menu*/
        jQuery('.mobile-menu-btn').on('click', function (e) {
            e.preventDefault();
            jQuery(this).toggleClass('bar-closer');
            jQuery('#mobile-menu-container').toggleClass('show-mob-menu');
            jQuery('html').toggleClass('overflow-hidden');

        });
        /*mobile menu ends*/


    });



    jQuery(window).resize(function(){
        resize();
        footerSameHeight();
    });



    function callingCustomWow(){
        jQuery('.banner-caption-container').css('display','block');
        var wow = new WOW(
            {
                boxClass:     'custom-wow',      // animated element css class (default is wow)
                animateClass: 'animated', // animation css class (default is animated)
                live:         true,       // act on asynchronously loaded content (default is true)
                callback:     function(box) {
                    // the callback is fired every time an animation is started
                    // the argument that is passed in is the DOM node being animated
                },
                scrollContainer: null // optional scroll container selector, otherwise use window
            }
        );
        wow.init();
    }

    function calling_wow(){
        wow = new WOW(
            {
                animateClass: 'animated',
                //offset:       100,
                callback:     function(box) {
                    //console.log("WOW: animating <" + box.tagName.toLowerCase() + ">")
                }
            }
        );
        wow.init();

    }

    function resize(){
        var window_height = parseInt($(window).height());
        var window_width = parseInt($(window).width());
        var document_height = parseInt($(document).height());

        jQuery('#mobile-menu-container').css('height',window_height-60);

        jQuery('select').selectbox();

       
        var nowDate = new Date();
        var today = new Date(nowDate.getFullYear(), nowDate.getMonth(), nowDate.getDate(), 0, 0, 0, 0);
        jQuery("#from_date").datepicker({
            format: "yyyy-mm-dd",
            autoclose: true,
            startDate: today 
        });


        //search open


        


    }

    function footerSameHeight(){
        var heights =jQuery('div.footer-section-container').map(function (){
            return jQuery(this).height();
        }).get();

        var maxHeight = Math.max.apply(null, heights);
        if(maxHeight>400){
            jQuery('.footer-section-container').css('height',450);
        }else{
            jQuery('.footer-section-container').css('height',maxHeight+30);
        }

    }

})(jQuery);




