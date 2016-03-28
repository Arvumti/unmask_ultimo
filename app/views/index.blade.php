<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
<!--STYLES-->
    <link href="foundation/css/foundation.css" rel="stylesheet" media="screen">
    <link href="css/reset.css" rel="stylesheet" media="screen">
    <link href="css/slider.css" rel="stylesheet" media="screen">
    <link href="css/style.css" rel="stylesheet" media="screen">
    <link href="css/fonts.css" rel="stylesheet" media="screen">
    <link href="css/typeahead.css" rel="stylesheet" media="screen">

    <link rel="shortcut icon" href="img/ico.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!--SCRIPTS-->
    <title>UNMASK</title>
    <style type="text/css">
    .LBD_CaptchaImageDiv, .LBD_CaptchaIconsDiv

{
  display: inline-block !important;
  vertical-align: top !important;
}
#LoginCaptcha_CaptchaIconsDiv,
#LoginCaptcha_CaptchaImageDiv

{
  display: inline-block !important;
  vertical-align: top !important;
}
    </style>
</head>
<body class="">

    <div class="start_page_wrap">

        <div id="start_page_header">

                <a href="index.html" class="start_page_big_logo" ><img src="img/logo_new.png" width="152"></a>
                <ul class="start_page_navigation">
                    <li style="margin-right:0"><a href="http://www.unmask.wiki/about.html"target="_blank">{{Lang::get('messages.indxNavBtnInicio')}}</a></li>
                  <!--a href="#" style="top:1%;position:absolute"><img width="50px"src="img/logo_sl.png"></a-->

                    <li ><a href="http://www.unmask.wiki/why.html"target="_blank">{{Lang::get('messages.indxNavPor')}}</a></li>
                    <li><a href="http://www.unmask.wiki/how.html"target="_blank">{{Lang::get('messages.indxNavUnmask')}}</a></li>
                    <li ><a href="http://www.unmask.wiki/virtual.html"target="_blank">Virtual Life</a></li>

                    <li style="margin-left:0;border:none"><a href="http://www.unmask.wiki/dis.html"target="_blank">{{Lang::get('messages.indxNavLblPoliticasAvisos')}}</a></li>


                    <!--li><a href="#">Open Mask</a></li>
                    <li><a href="#">Find Someone</a></li-->
                    <li style="text-align:center;position:absolute;">

                        <a id="btnEng"href="{{ URL::to('/idioma/en') }}"><img width="30px"src="img/brit.png"></a>
                        <a id="btnRus"href="{{ URL::to('/idioma/rs') }}"><img width="30px"src="img/rusia.png"></a>
                        <a id="btnEsp"href="{{ URL::to('/idioma/es') }}"><img width="34px"src="img/espa.png"></a>
                    </li>
                </ul>

                <div id="start_page_sign_up"><a href="#">{{Lang::get('messages.indxHerBtnInicioSecion')}}</a></div>

            <div id="sign_up_popup" class="flex_box">

                <img src="img/close.png">
                <div class="flex_box sign_choice">
                    <div class="sign_choice_active login"><p>{{Lang::get('messages.indxModTitInicioSecion')}}</p></div>
                    <div class="create_account"><p>{{Lang::get('messages.indxModBtnCrearCuenta')}}</p></div>
                </div>

                <div id="login" class=" flex_box">
                    <div class="flex_box">
                    	{{ Form::open(array('url' => 'users/login', 'class'=>'flex_popup_login'))}}
                        
                            <div class="flex_popup flex_column_popup flex_popup_login">

                                <input type="text" id="username"name="username" placeholder="{{Lang::get('messages.indxModLblUsuario')}}">
                                <input type="password" style="width:40%;margin-bottom:10px;"id="password"name="password" placeholder="{{Lang::get('messages.indxModlblContrsenia')}}">
                                <!--small class="error"style="color:#B23B2E;font-size:25px;">{{Lang::get('messages.indxModLblUsuario')}} - {{Lang::get('messages.indxModlblContrsenia')}} {{Lang::get('messages.indxerror')}}</small-->

                                <div class="flex_popup flex_captcha_popup"style="text-align:center">
                                    {{ $captchaHtml }}
                                </div>

                                <input type="text" id="CaptchaCode" class="form-control" placeholder="{{Lang::get('messages.indxModLblCapcha')}}"name="CaptchaCode" type="text" style="text-transform: uppercase;margin-top:15px;"name="captcha_characters" class="" size="10" value="Type the characters below">

                            </div>

                            <div class="flex_box flex_form_control">
                                <input id="btnLogin" type="submit" value="{{Lang::get('messages.indxModBtnSesion')}}">
                            </div>
                      

                        {{ Form::close() }}
                    </div>
                </div>

                <div id="create_account" class="create_account flex_box hidden_class">
                    <div class="flex_box">
                        {{ Form::open(array('url' => '/crear_cuenta', 'enctype' => 'multipart/form-data', 'data-abide', 'class' => 'flex_popup')) }}

                            <div class="flex_popup flex_column_popup">

                                <input type="file" class="hidden_class" name="foto" id="photo" accept="image/jpeg,image/png"> 
                                <label for="photo">
                                <img src="img/add_photo.jpg" class="tmp_img" width="195" height="195" />
                                <p>Put here <br> your new photo</p></label>
                                <div class="flex_popup flex_captcha_popup"style="margin-left:50px">
                                     {{ $captchaHtml }}
                                    <div class="flex_button">
                                        <!--button name="reload"><img src="img/reload.png"></button>
                                        <button name="sound"><img src="img/sound.png"></button-->
                                    </div>
                                </div>

                                <input type="text" id="CaptchaCode" class="form-control" name="CaptchaCode" placeholder="{{Lang::get('messages.nologManLblCapcha')}}"type="text" style="text-transform: uppercase;margin-top:20px">

                            </div>

                            <div class="flex_popup flex_column_popup">
                                <input type="text" name="alias" value="{{Input::old('alias')}}" placeholder="{{Lang::get('messages.nologManLblAlias')}}" required/>
                                	<!--small class="error">{{Lang::get('messages.nologManLblCorreoErr')}}</small-->
										@if($errors->any())
											@foreach ($errors->get('nombre') as $error)
												<div class="label alert" role="alert">** {{ Lang::get($error) }}</div>
											@endforeach
										@endif
                                <input type="password" id="password" name="password" placeholder="{{Lang::get('messages.nologManLblContrasenia')}}" required/>
                                	<!--small class="error">{{Lang::get('messages.nologManLblContraseniaErr')}}</small-->
                                <input type="password" data-equalto="password" name="password_rep" placeholder="{{Lang::get('messages.nologManLblConfirmContrasenia')}}" required/>
                                	<!--small class="error">{{Lang::get('messages.nologManLblComfirmContraseniaErr')}}</small-->
										@if($errors->any())
											@foreach ($errors->get('pass') as $error)
												<div class="label alert" role="alert">** {{ $error }}</div>
											@endforeach
										@endif
                                <input type="text" style="width:298px;"name="pais" class="typeahead" placeholder="{{Lang::get('messages.nologManLblPais')}}"value="{{Input::old('pais')}}"/>
                                <input type="text" style="width:298px;"name="estado" class="typeahead" placeholder="{{Lang::get('messages.nologManLblCiudad')}}" value="{{Input::old('estado')}}"/>
                            </div>

                            <div id="terms_box">
                                <input type="checkbox" name="politicas" value="acepto" />{{Lang::get('messages.nologManLblTerminos')}} <a href="http://www.unmask.wiki/dis.html" target="_blank">{{Lang::get('messages.nologManLnkTerminos')}}</a>
                            </div>

                            <div class="flex_box flex_form_control">
                                <input type="submit" value="{{Lang::get('messages.nologManBtnGuardar')}}">
                                @if($errors->any())
									@foreach ($errors->all() as $error)
										@if($error != 'The Alias already exist.' && $error != 'Check your password')
											<!--div class="label alert" role="alert">** {{ $error }}</div-->
										@endif
									@endforeach
								@endif
                            </div>
                        {{ Form::close() }}   
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="start_page_video">

        <!--img src="img/marca.png" width="350"-->

        <video id="videoEng"  loop="loop" autoplay="autoplay"src="video/video.mp4"></video>

    </div>
    <div id="slider_bolas"style="margin-left:10%">
        <div class="cycle-slideshow"id="bolas"style="text-align:center">
            <img src="img/otro/1.jpg">
            <img src="img/otro/2.jpg">
            <img src="img/otro/3.jpg">
            <img src="img/otro/4.jpg">
            <img src="img/otro/5.jpg">
            <img src="img/otro/6.jpg">
            <!--div class="cycle-pager"style="width:70%;"></div-->
       </div>
        <div id="slider_text" style="top:8%">
            <h2 style="color:#B23B2E;font-size:25px">{{Lang::get('messages.indxBola1Tit')}} </h2>
            <p style="font-size:18px;margin-top:20px;text-align:justify;">{{Lang::get('messages.indxBola1pbr')}}<br>
                {{Lang::get('messages.indxBola1p')}} <span style="color:#B23B2E;font-family: Raleway_SemiBold;">{{Lang::get('messages.indxBola1sp')}} </span> {{Lang::get('messages.indxBola1p2')}}
                <span style="color:#B23B2E;font-family: Raleway_SemiBold;">{{Lang::get('messages.indxBola1sp2')}}</span> {{Lang::get('messages.indxBola1p3')}}  <span style="color:#B23B2E;font-family: Raleway_SemiBold;">{{Lang::get('messages.indxBola1sp3')}} </span>{{Lang::get('messages.indxBola1p4')}}   
              </p>
        </div>
    </div>
    <div id="slider_bolas"style="margin-left:15%">
        <div class="cycle-slideshow"id="bolas"style="text-align:center;left:0%;">
            <img src="img/otro/7.png">
            <img src="img/otro/8.jpg">
            <img src="img/otro/9.jpg">
            <img src="img/otro/10.jpg">
            <img src="img/otro/11.png">
            <img src="img/otro/12.jpg">
            <img src="img/otro/13.jpg">

            

            <!--div class="cycle-pager"style="width:70%;"></div-->
       </div>
        <div id="slider_text" style="top:10%;left:37%;">
            <h2 style="color:#B23B2E;font-size:25px">{{Lang::get('messages.indxBola2Tit')}} </h2>
            <p style="font-size:18px;margin-top:20px;text-align:justify;">{{Lang::get('messages.indxBola2p')}}   </p>
        </div>
    </div>
     <div id="slider_bolas"style="margin-left:10%">
        <div class="cycle-slideshow"id="bolas"style="text-align:center">
            <img src="img/otro/14.jpg">
            <img src="img/otro/15.jpg">
            <img src="img/otro/16.jpg">
            <img src="img/otro/17.jpg">
            <img src="img/otro/18.jpg">

          
            <!--div class="cycle-pager"style="width:70%;"></div-->
       </div>
        <div id="slider_text" style="top:8%">
            <h2 style="color:#B23B2E;font-size:25px">{{Lang::get('messages.indxBola3Tit')}}</h2>
            <p style="font-size:18px;margin-top:20px;text-align:justify;">{{Lang::get('messages.indxBola3p')}} </p>
        </div>
    </div>

    <p id="find">FIND & <span>UNMASK</span> SOMEONE FROM</p>

    <div id="start_page_search">

        <img src="img/ash.png" />
        <!--form method="get" action="">
            <input type="text" name="search" value="Enter First Name of nickname" onfocus="if (this.value == 'Enter First Name of nickname') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Enter First Name of nickname';}">
            <input type="submit" value="SEARCH">
        </form-->

    </div>

    <div class="clear"></div>

    <div id="everybody" >

        <img src="img/face.jpg" >

        <p><span class="title_umk">{{Lang::get('messages.indxMovLblDescripcion1')}}</span><span class="subtitle_umk">{{Lang::get('messages.indxMovLblDescripcionLife')}} </span>{{Lang::get('messages.indxMovLblDescripcion')}} <br>{{Lang::get('messages.indxMovLblSJ')}}   <span class="quote">{{Lang::get('messages.indxMovLblFrase')}} </span> <span class="actor">Oscar Wilde</span></p>

        <img src="img/man.png" >

    </div>

    <div id="small_videos">
        <div id="video_box">
            <div>
                <a href="#modal"><div class="play_block"></div></a>
                <video autoplay="autoplay" height="180" width="180" poster="img/cup.png"><source src=""></video>
            </div>
            <div>
                <a href="#modalDos"><div class="play_block"></div></a>
                <video autoplay="autoplay" height="180" width="180" poster="img/cup2.png"><source src=""></video>
            </div>
            <div>
                <a href="#modalTres"><div class="play_block"></div></a>
                <video autoplay="autoplay" height="180" width="180" poster="img/cup3.png"><source src=""></video>
            </div>
        </div>
    </div>
    <div id="modal">
        <div class="modal-content">
            <div class="header">
                <h2>Video</h2>
            </div>
            <div class="copy"style="text-align:center">
                <iframe class="videosYou"width="100%" height="315" src="https://www.youtube.com/embed/pLpl9qGAX-0" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="cf footer_modal"> <a href="#"class="btnCerrar">Close</a></div>
        </div>
            <div class="overlay"></div>
    </div>
    <div id="modalDos">
        <div class="modal-content">
            <div class="header">
                <h2>Video</h2>
            </div>
            <div class="copy">
                <iframe class="videosYou"width="100%" height="315" src="https://www.youtube.com/embed/LxtE6-3-UFk" frameborder="0" allowfullscreen></iframe>
                
            </div>
            <div class="cf footer_modal"> <a href="#"class="btnCerrar">Close</a></div>
        </div>
            <div class="overlay"></div>
    </div>
    <div id="modalTres">
        <div class="modal-content">
            <div class="header">
                <h2>Video</h2>
            </div>
            <div class="copy">
               <iframe class="videosYou"width="100%" height="315" src="https://www.youtube.com/embed/Utdd9jodoHg" frameborder="0" allowfullscreen></iframe>
            </div>
            <div class="cf footer_modal"> <a href="#"class="btnCerrar">Close</a></div>
        </div>
            <div class="overlay"></div>
    </div>

    <div id="all">
        <p >{{Lang::get('messages.indxtituloM')}}</p>

        <a href="#"><img src="img/big_logo.png" width="102"/></a>
    </div>

    <div id="slider">
        <div class="mask"style="border-bottom:solid 2px black;"></div>
        <div id="slider_text">
            <h1>{{Lang::get('messages.indxtituloEV')}}</h1>
            <p>{{Lang::get('messages.indxtextoSl')}}</p>
        </div>

        <div class="cycle-slideshow">

            <div class="cycle-pager"></div>

            <img src="img/slide1.jpg">
            <img src="img/slide2.jpg">
            <img src="img/slide3.jpg">
            <img src="img/slide4.jpg">
            <img src="img/slide5.jpg">
            <img src="img/slide6.jpg">
            <img src="img/slide7.jpg">
            <img src="img/slide8.jpg">
            <img src="img/slide9.jpg">
            <img src="img/slide10.jpg">
            <img src="img/slide11.jpg">
            <img src="img/slide12.jpg">
            <img src="img/slide13.jpg">
            <img src="img/slide14.jpg">
            <img src="img/slide15.jpg"> 
            <img src="img/slide16.jpg"> 
            <img src="img/slide17.jpg"> 
            <img src="img/slide18.jpg"> 
            <img src="img/slide19.jpg"> 
            <img src="img/slide20.jpg">
            <img src="img/slide21.jpg"> 


        </div>
    </div>

    <div id="knowledge">
        <p><span>{{Lang::get('messages.indxTitSome')}}</span> <br>{{Lang::get('messages.indxTitSome2')}}</p>
    </div>

    <div id="click_unmask">
        <p>{{Lang::get('messages.indxPonun')}}</p>
        <h1>{{Lang::get('messages.indxClick')}} “<span>unmask</span>”  {{Lang::get('messages.indxOpen')}}</h1>

        <img src="img/border.png" class="border_click">


        <div class="other_user click_other_user">
            <div class="other_user_photo_area">
                <img src="img/other_user.jpg" width="164" height="164" >

                <div class="clear"></div>

                <div class="other_user_info">
                    <a href="#" class="unmask_link click_unmask_link start_unmask_link">unmask</a>
                    <div class="other_user_info_central">
                        <span class="thief">Thief</span>
                        <div class="unmask_red">
                            <span>35</span>
                            <img src="img/anonymous.png" width="11" height="15"/>
                        </div>
                        <div class="unmask_grey">
                            <span>8</span>
                            <img src="img/anonymous_red.png" width="11" height="15"/>
                        </div>

                        <ul class="info_list">
                            <li><span class="profile_info_left other_list_info">ID:</span> <span class="profile_info_right other_list_info">231231</span></li>
                            <li><span class="profile_info_left other_list_info">posts:</span> <span class="profile_info_right other_list_info">1561</span></li>
                        </ul>
                    </div>
                    <button>Follow <img src="img/plus.png" /></button>
                </div>
            </div>
        </div>
     

        <!--<div class="click_other_user">-->
            <!--<div class="other_user_photo_area start_other_user_photo_area">-->
                <!--<img src="img/other_user.jpg" width="182" height="182" >-->

                <!--<div class="clear"></div>-->

                <!--<div class="other_user_info start_other_user_info">-->
                    <!--<a href="#" class="unmask_link start_unmask_link">unmask</a>-->
                    <!--<div class="other_user_info_central">-->
                        <!--<span class="thief">Thief</span>-->
                        <!--<div class="unmask_red">-->
                            <!--<span>35</span>-->
                            <!--<img src="img/anonymous.png" width="11" height="15"/>-->
                        <!--</div>-->
                        <!--<div class="unmask_grey">-->
                            <!--<span>8</span>-->
                            <!--<img src="img/anonymous_red.png" width="11" height="15"/>-->
                        <!--</div>-->

                        <!--<ul class="info_list">-->
                            <!--<li><span class="profile_info_left other_list_info">ID:</span> <span class="profile_info_right other_list_info">231231</span></li>-->
                            <!--<li><span class="profile_info_left other_list_info">posts:</span> <span class="profile_info_right other_list_info">1561</span></li>-->
                        <!--</ul>-->
                    <!--</div>-->
                    <!--<button class="start_other_user_photo_area">Follow <img src="img/plus.png" /></button>-->
                <!--</div>-->
            <!--</div>-->
        <!--</div>-->
        <img src="img/border_inv.png" class="border_click">

        <p class="click_p">{{Lang::get('messages.indxOr')}} </p>

        <a href="#" id="find_some">{{Lang::get('messages.indxFind')}}</a>

        <p class="click_p" style="margin-top: 66px">{{Lang::get('messages.indxBy')}}</p>

    </div>

    <div id="users_list" class="users_list_start">



    <!--<div class="click_other_user">-->
        <!--<div class="other_user_photo_area start_other_user_photo_area">-->
            <!--<img src="img/other_user.jpg" width="182" height="182" >-->

            <!--<div class="clear"></div>-->

            <!--<div class="other_user_info start_other_user_info">-->
                <!--<a href="#" class="unmask_link start_unmask_link start_unmask_link_black">unmask</a>-->
                <!--<div class="other_user_info_central">-->
                    <!--<span class="thief">Thief</span>-->
                    <!--<div class="unmask_red">-->
                        <!--<span>35</span>-->
                        <!--<img src="img/anonymous.png" width="11" height="15"/>-->
                    <!--</div>-->
                    <!--<div class="unmask_grey">-->
                        <!--<span>8</span>-->
                        <!--<img src="img/anonymous_red.png" width="11" height="15"/>-->
                    <!--</div>-->

                    <!--<ul class="info_list">-->
                        <!--<li><span class="profile_info_left other_list_info">ID:</span> <span class="profile_info_right other_list_info">231231</span></li>-->
                        <!--<li><span class="profile_info_left other_list_info">posts:</span> <span class="profile_info_right other_list_info">1561</span></li>-->
                    <!--</ul>-->
                <!--</div>-->
                <!--<button class="start_other_user_photo_area">Follow <img src="img/plus.png" /></button>-->
            <!--</div>-->
        <!--</div>-->
    <!--</div>-->

        <!--div class="other_user">
            <div class="other_user_photo_area">
                <img src="img/other_user.jpg" width="164" height="164" >

                <div class="clear"></div>

                <div class="other_user_info">
                    <a href="#" class="unmask_link click_unmask_link">unmask</a>
                    <div class="other_user_info_central">
                        <span class="thief">Thief</span>
                        <div class="unmask_red">
                            <span>35</span>
                            <img src="img/anonymous.png" width="11" height="15"/>
                        </div>
                        <div class="unmask_grey">
                            <span>8</span>
                            <img src="img/anonymous_red.png" width="11" height="15"/>
                        </div>

                        <ul class="info_list">
                            <li><span class="profile_info_left other_list_info">ID:</span> <span class="profile_info_right other_list_info">231231</span></li>
                            <li><span class="profile_info_left other_list_info">posts:</span> <span class="profile_info_right other_list_info">1561</span></li>
                        </ul>
                    </div>
                    <button>Follow <img src="img/plus.png" /></button>
                </div>
            </div>
        </div>

      

 

        <div class="other_user">
            <div class="other_user_photo_area">
                <img src="img/other_user.jpg" width="164" height="164" >

                <div class="clear"></div>

                <div class="other_user_info">
                    <a href="#" class="unmask_link click_unmask_link">unmask</a>
                    <div class="other_user_info_central">
                        <span class="thief">Thief</span>
                        <div class="unmask_red">
                            <span>35</span>
                            <img src="img/anonymous.png" width="11" height="15"/>
                        </div>
                        <div class="unmask_grey">
                            <span>8</span>
                            <img src="img/anonymous_red.png" width="11" height="15"/>
                        </div>

                        <ul class="info_list">
                            <li><span class="profile_info_left other_list_info">ID:</span> <span class="profile_info_right other_list_info">231231</span></li>
                            <li><span class="profile_info_left other_list_info">posts:</span> <span class="profile_info_right other_list_info">1561</span></li>
                        </ul>
                    </div>
                    <button>Follow <img src="img/plus.png" /></button>
                </div>
            </div>
        </div-->


    </div>
       <section>
            <div class="logotipos">
                <div class="logo_contenedor"><a href="http://itsonus.org"target="_blank"><img src="img/otro/itus.png"></a></div>
                <div class="logo_contenedor"><a href="https://ohl.rainn.org/online/"target="_blank"><img src="img/otro/rainn.jpg"></a></div>
                <div class="logo_contenedor"><a href="http://www.evawintl.org/"target="_blank"><img src="img/otro/ev.jpg"></a></div>
                <div class="logo_contenedor"><a href="https://cdt.org/"target="_blank"><img src="img/otro/cdt_logo.jpg"></a></div>
                <div class="logo_contenedor"><a href="https://www.eff.org/"target="_blank"><img src="img/otro/descarga.png"></a></div>
                <div class="logo_contenedor"><a href="http://anythingtosay.com/"target="_blank"><img src="img/otro/silla.png"></a></div>
                <div class="logo_contenedor"><a href="http://thefreethoughtproject.com/"target="_blank"><img src="img/otro/palomas.png"></a></div>



            </div>
        </section>

    <div id="footer">

            <a href="#" class="start_page_big_logo" style="margin: 1% 1.5% 0% 3.07%"><img src="img/logo_footer.png" width="80"></a>
            <ul class="start_page_navigation"style="">
                <li><a href="http://www.unmask.wiki/about.html"target="_blank">{{Lang::get('messages.indxNavBtnInicio')}}</a></li>
                <li><a href="http://www.unmask.wiki/why.html"target="_blank">{{Lang::get('messages.indxNavPor')}}</a></li>

                <li><a href="http://www.unmask.wiki/how.html"target="_blank">{{Lang::get('messages.indxNavUnmask')}}</a></li>
                <li><a href="http://www.unmask.wiki/virtual.html"target="_blank">Virtual Life</a></li>
                <li><a href="http://www.unmask.wiki/dis.html"target="_blank">{{Lang::get('messages.indxNavLblPoliticasAvisos')}}</a></li>
                <li style=""> help@unmask.wiki</li>
                
            </ul>

                <a href="#start_page_header" id="arrow_up"><img src="img/arrow_up.png" width="40"/><!--p>up</p--></a>
            <div style="text-align:center;width: 600px;margin-left: 365px;">Unmask Brand and Logos are registered in one or more countries <br>Unmask™®</div>


    </div>

    <script src="{{ URL::asset('scripts/jquery-2.1.4.min.js')}}" type="text/javascript"></script>
    <script type="text/javascript" src="{{ URL::asset('foundation/js/foundation/foundation.js') }}"></script>
    <script src="{{ URL::asset('scripts/cycle2.js') }}" type="text/javascript"></script>
    <script src="{{ URL::asset('scripts/script.js') }}" type="text/javascript"></script>
    
	<script type="text/javascript" src="{{ URL::asset('js/typeahead.jquery.min.js') }}"></script> 
	<script type="text/javascript" src="{{ URL::asset('js/main_app.js') }}"></script> 
	<script type="text/javascript" src="{{ URL::asset('js/lodash.underscore.min.js') }}"></script> 
	<script type="text/javascript" src="{{ URL::asset('js/backbone-min.js') }}"></script>  
    
    <script type="text/javascript" src="{{ URL::asset('js/app.js') }}"></script> 
    <script type="text/javascript">
        var url = window.location.origin + '/public/';//lara/
		//var url = window.location.origin + '/';//lara/::EOF-URL
	
	  //document.write('<script src=foundation/js/vendor/' + ('__proto__' in {} ? 'zepto' : 'jquery')  + '.js><\/script>');
		$(document).on('ready', inicio_nl);

		function inicio_nl () {
			$(document).foundation();
			var jsonPa = {
				elem: $('input.typeahead[name="pais"]'),
				dKey: 'nombre',
				modulo: 'paises',
			};
			typeahead(jsonPa);

			var jsonEs = {
				elem: $('input.typeahead[name="estado"]'),
				dKey: 'nombre',
				modulo: 'estadoz',
			};
			typeahead(jsonEs);

            $('#photo').on('change', function(e) {
                var tmppath = URL.createObjectURL(this.files[0]);
                $('.tmp_img').attr('src', tmppath);
            });
		}
	</script>
<script>

</script>
    <!--  
$(document).on('ready',function(){
        $('.btnCerrar').on('click',function(){
            $('.videosYou')= function stopVideo() {
        player.stopVideo();
      }
        });
    });

     <script>
$(function(){
 
var isMobile = {
    Android: function() {
        return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function() {
        return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function() {
        return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function() {
        return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function() {
        return navigator.userAgent.match(/IEMobile/i);
    },
 };
 
 if (isMobile.Android())
 {
 window.location.href = "http://www.unmask.wiki/respo.html"
 }
 else if (isMobile.BlackBerry())
 {
    window.location.href = "http://www.unmask.wiki/respo.html"
 }
 else if (isMobile.iOS())
 {
 window.location.href = "http://www.unmask.wiki/respo.html"
 }
 else if (isMobile.Opera())
 {
 window.location.href = "http://www.unmask.wiki/respo.html"
}
 else if (isMobile.Windows())
 {
window.location.href = "http://www.unmask.wiki/respo.html"
}


});-->

</script>
 <!--a title="Web Statistics" href="http://clicky.com/100930117"><img alt="Web Statistics" src="//static.getclicky.com/media/links/badge.gif" border="0" /></a-->
<script src="//static.getclicky.com/js" type="text/javascript"></script>
<script type="text/javascript">try{ clicky.init(100930117); }catch(e){}</script>
<noscript><p><img alt="Clicky" width="1" height="1" src="//in.getclicky.com/100930117ns.gif" /></p></noscript>

</body>
</html>
