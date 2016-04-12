$(document).ready(function(){

    // INICIO

    //$('.second_other_user_photo_area').hover(
    //    function () {
    //        var height = $('.second_other_user_photo_area img').height();
    //        $(this).find('.other_user_info').stop().animate({ 'bottom': height+'px' }, 300);
    //    },
    //    function () {
    //        $(this).find('.other_user_info').stop().animate({'bottom': '29px'}, 300);
    //    }
    //);

    $('#arrow_up').click(function(){
        $('body').animate({
            scrollTop: 0
        },2000);
        return false;
    });

    $('#start_page_sign_up').hover(function(){
        $('#start_page_sign_up a').css({
            'color': '#ffffff'
        });
    },function(){
        $('#start_page_sign_up a').css({
            'color': '#B23B2E'
        });
    });
       $('img').error(function(){
                $(this).attr('src', 'img/mascarita.png');
            });

    // PERFIL

    $('.other_user_photo_area').hover(
        function () {
            var height = $('.other_user_photo_area img').height();
            $(this).find('.other_user_info').stop().animate({ 'bottom': height+'px' }, 300);
        },
        function () {
                $(this).find('.other_user_info').stop().animate({'bottom': '29px'}, 300);
        }
    );

    $(window).on('scroll',function(){
        if($(window).scrollTop() > 55){
            $('#user_info').addClass('scroll_class');
            $('#line_header').addClass('scroll_class_header')
        }else{
            $('#user_info').removeClass('scroll_class');
            $('#line_header').removeClass('scroll_class_header')
        }
    });

    var i = 0;
    $('#filter').click(function(){
        /*if(i == 0) {
            $('.filter').animate({opacity: '1'}, 300);
            i = 1;
        }else if( i == 1){
            $('.filter').animate({opacity: '0'}, 300);
            i = 0;
        }*/
        $('.filter').toggleClass('isHidden');
    });

    //var config = 0;
    //$('.change_info').hide();
    $('#profile_config').click(function(){
        //if(config == 0){
            $('.user_info').toggleClass('isHidden');
            $('.change_info').toggleClass('isHidden');
            config = 1;
        //}else if( config == 1 ){
           // $('.user_info').show();
            //$('.change_info').hide();
            //config = 0;
       // }
    });

    // INICIO

    $('#sign_up_popup > img, #fade').click(function(){
        $('#sign_up_popup').fadeOut();
        $('#fade').fadeOut();
    });

    $('.sign_choice div').click(function(){
        if(!$(this).hasClass("sign_choice_active")){
            $('.sign_choice div').removeClass("sign_choice_active");
            $(this).addClass("sign_choice_active")
        }

        if($(this).hasClass('login')){
            $("#login").removeClass('hidden_class');
            $($("#create_account")).addClass("hidden_class")
        }else if($(this).hasClass('create_account')){
            $("#create_account").removeClass('hidden_class');
            $($("#login")).addClass("hidden_class")
        }
    });

    $('#start_page_sign_up').click(function(){
        $('#sign_up_popup').fadeIn();
        $('body').append('<div id="fade"></div>');
        $('#fade').css({'filter' : 'alpha(opacity=80)'}).fadeIn();
    });

    // PERFIL 

    $('.user_main_content > div').hide();
    $('#comments').show();

    $('.teg_photo').hover(function(){
        $('.teg_photo .masca_foto p').stop().fadeIn(300);
    },function(){
        $('.teg_photo .masca_foto p').stop().fadeOut(300);
    });

    /* Navegacion para agregar posts
    $('.content_navigation ul li').first().addClass('content_navigation_active');

    $('.content_navigation ul li').click(function(){
        $('.content_navigation ul li').removeClass('content_navigation_active');
        var fade_part = $(this).attr('class');
        $(this).addClass('content_navigation_active');
        $('.user_main_content > div').hide();
        $("#"+fade_part).show();
    });
*/
    $('.slide_comment').hide();
    $('.slide_click').click(function(){
        $(this).next().slideToggle();
    });

    $('#lapiz').on('click',function(e){
                //e.preventDefault();
                $('.add_comment').removeClass("Hidden");
                $('#conCampo').removeClass("Hidden");
                $('#botCampo').removeClass("Hidden");
                $('#eviCampo').addClass("Hidden");
                $('#videoCampo').addClass("Hidden");
                $('#linkCampo').addClass("Hidden");

                opcion = 1;
            });
            $('#fotosP').on('click',function(){
                $('.add_comment').removeClass("Hidden");
                $('#eviCampo').removeClass("Hidden");
                $('#conCampo' ).addClass("Hidden");
                $('#videoCampo').addClass("Hidden");
                $('#botCampo').removeClass("Hidden");
                $('#linkCampo').addClass("Hidden");
                opcion = 2;
            });
            $('#secre').on('click',function(){
                $('.add_comment').removeClass("Hidden");
                $('#videoCampo').removeClass("Hidden");
                $('#conCampo' ).addClass("Hidden");
                $('#eviCampo').addClass("Hidden");
                $('#botCampo').removeClass("Hidden");
                $('#linkCampo').addClass("Hidden");
                opcion = 3;
            });
            $('#linkear').on('click',function(){
                $('.add_comment').removeClass("Hidden");
                $('#videoCampo').addClass("Hidden");
                $('#conCampo' ).addClass("Hidden");
                $('#eviCampo').addClass("Hidden");
                $('#linkCampo').removeClass("Hidden");
                $('#botCampo').removeClass("Hidden");
                opcion = 4;
            });
                $('#fotosAddPost').on('click',function(){
                $("#campoFotosPost").toggleClass('isHidden');
                
            });

            $('.confSec').on('click',function(e){
                //e.preventDefault();
                $('.btn_sub_ev').removeClass("Hidden");
                $('.conSec').removeClass("Hidden");
                $('.btnSec').removeClass("Hidden");
                $('.viSec').addClass("Hidden");
                $('.fotSec').addClass("Hidden");
                $('.linkerSec').addClass("Hidden");
                opcion = 1;
            });
            $('.fotoSec').on('click',function(){
                $('.btn_sub_ev').removeClass("Hidden");
                $('.fotSec').removeClass("Hidden");
                $('.btnSec').removeClass("Hidden");
                $('.conSec').addClass("Hidden");
                $('.viSec').addClass("Hidden");
                $('.linkerSec').addClass("Hidden");

                opcion = 2;
            });
            $('.vidSec').on('click',function(){
                $('.btn_sub_ev').removeClass("Hidden");
                $('.viSec').removeClass("Hidden");
                $('.conSec' ).addClass("Hidden");
                $('.fotSec').addClass("Hidden");
                $('.linkerSec').addClass("Hidden");
                $('.btnSec').removeClass("Hidden");

                opcion = 3;
            });
            $('.linkSec').on('click',function(){
                $('.btn_sub_ev').removeClass("Hidden");
                $('.linkerSec').removeClass("Hidden");
                $('.conSec' ).addClass("Hidden");
                $('.fotSec').addClass("Hidden");
                $('.btnSec').removeClass("Hidden");
                $('.viSec').addClass("Hidden");
                

                opcion = 4;
            });

//    GALERIA

   /* $('.gallery_popup').hide();

    $('.gallery_img').click(function(){
        $('.gallery_popup').css({top: $('.gallery_popup').offset().top});
        $('.gallery_popup').fadeIn();
        $('body').append('<div id="fade"></div>');
        $('#fade').css({'filter' : 'alpha(opacity=80)'}).fadeIn();
        var img_popup = $(this).children('img').attr('src');
        $('.img_container > img').attr('src',img_popup);
        $('#full_size').attr('href', img_popup);
    });

    $('.prev').click(function(){
        var img_popup = $('.img_container > img').attr('src');
        var prev_img_popup = $('.gallery_img img[src="'+img_popup+'"]').parent().prev().children('img').attr('src');
        $('.img_container > img').attr('src',prev_img_popup);
        $('#full_size').attr('href', prev_img_popup);
        if(prev_img_popup === undefined){
            var img_popup = $('.gallery_img').last().children('img').attr('src');
            $('.img_container > img').attr('src',img_popup);
            $('#full_size').attr('href', img_popup);
        }
    });

    $('.next, .img_container > img').click(function(){
        var img_popup = $('.img_container > img').attr('src');
        var next_img_popup = $('.gallery_img img[src="'+img_popup+'"]').parent().next().children('img').attr('src');
        $('.img_container > img').attr('src',next_img_popup);
        $('#full_size').attr('href', next_img_popup);
        if(next_img_popup === undefined){
            var img_popup = $('.gallery_img').first().children('img').attr('src');
            $('.img_container > img').attr('src',img_popup);
            $('#full_size').attr('href', img_popup);
        }
    });

    $('.close, #fade').click(function(){
        $('.gallery_popup').fadeOut();
        $('#fade').fadeOut();
    });


});*/
$('.gallery_popup').hide();
 $('.gallery_img').click(function(){
        $('.gallery_popup').css({top: $('.gallery_popup').offset().top});
        $('.gallery_popup').fadeIn();
        $('body').append('<div id="fade"></div>');
         $('#fade').css({'filter' : 'alpha(opacity=80)'}).fadeIn();
        var img_popup = $(this).children('img').attr('src');
        $('.gallery_popup img').attr('src',img_popup);
    });

    $('.prev').click(function(){
        var img_popup = $('.gallery_popup img').attr('src');
        var prev_img_popup = $('.gallery_img img[src="'+img_popup+'"]').parent().prev().children('img').attr('src');
        $('.gallery_popup img').attr('src',prev_img_popup);
        if(prev_img_popup === undefined){
            console.log(11111);
            var img_popup = $('.gallery_img').last().children('img').attr('src');
            console.log(img_popup);
            $('.gallery_popup img').attr('src',img_popup);
        }
    })
    $('.next').click(function(){
        var img_popup = $('.gallery_popup img').attr('src');
        var prev_img_popup = $('.gallery_img img[src="'+img_popup+'"]').parent().next().children('img').attr('src');
        $('.gallery_popup img').attr('src',prev_img_popup);
        if(prev_img_popup === undefined){
            console.log(11111);
            var img_popup = $('.gallery_img').first().children('img').attr('src');
            console.log(img_popup);
            $('.gallery_popup img').attr('src',img_popup);
        }
    })

});