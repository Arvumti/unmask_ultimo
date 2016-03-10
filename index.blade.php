<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
<!--STYLES-->
    <link href="css/reset.css" rel="stylesheet" media="screen">
    <link href="css/slider.css" rel="stylesheet" media="screen">
    <link href="css/style.css" rel="stylesheet" media="screen">
    <link href="css/fonts.css" rel="stylesheet" media="screen">
<!--SCRIPTS-->
    <title>UNMASK</title>
</head>
<body>

    <div class="start_page_wrap">

        <div id="start_page_header">

                <a href="index.html" class="start_page_big_logo" ><img src="img/big_logo.png" width="102"></a>
                <ul class="start_page_navigation">
                    <li><a href="#">About</a></li>
                    <li><a href="#">How It Works</a></li>
                    <li><a href="#">Open Mask</a></li>
                    <li><a href="wall.html">Find Someone</a></li>
                </ul>

                <div id="start_page_sign_up"><a href="#">sign up</a></div>

            <div id="sign_up_popup" class="flex_box">

                <img src="img/close.png">
                <div class="flex_box sign_choice">
                    <div class="sign_choice_active login"><p>{{Lang::get('messages.indxModTitInicioSecion')}}</p></div>
                    <div class="create_account"><p>Create account</p></div>
                </div>

                <div id="login" class=" flex_box">
                    <div class="flex_box">
                    	{{ Form::open(array('url' => 'users/login', 'class'=>'flex_popup_login'))}}
                        
                            <div class="flex_popup flex_column_popup flex_popup_login">

                                <input type="text" id="username"name="username" placeholder="{{Lang::get('messages.indxModLblUsuario')}}">
                                <input type="password" style="width:40%;"id="password"name="password" placeholder="{{Lang::get('messages.indxModlblContrsenia')}}">

                                <div class="flex_popup flex_captcha_popup">
                                    {{ $captchaHtml }}
                                </div>

                                <input type="text" id="CaptchaCode" class="form-control" placeholder="{{Lang::get('messages.indxModLblCapcha')}}"name="CaptchaCode" type="text" style="text-transform: uppercase;"name="captcha_characters" class="" size="10" value="Type the characters below">

                            </div>

                            <div class="flex_box flex_form_control">
                                <input id="btnLogin" type="submit" value="{{Lang::get('messages.indxModBtnSesion')}}">
                            </div>
                      

                        {{ Form::close() }}
                    </div>
                </div>

                <div id="create_account" class="create_account flex_box hidden_class">
                    <div class="flex_box">
                        {{ Form::open(array('url' => '/crear_cuenta', 'data-abide', 'class' => 'flex_popup')) }}

                            <div class="flex_popup flex_column_popup">

                                <input type="file" class="hidden_class" name="photo" id="photo" accept="image/jpeg,image/png"> <label for="photo"><img src="img/add_photo.jpg" width="195" /><p>Drag&Drop <br> your new photo</p></label>
                                <div class="flex_popup flex_captcha_popup">
                                     {{ $captchaHtml }}
                                    <div class="flex_button">
                                        <!--button name="reload"><img src="img/reload.png"></button>
                                        <button name="sound"><img src="img/sound.png"></button-->
                                    </div>
                                </div>

                                <input type="text" id="CaptchaCode" class="form-control" name="CaptchaCode" placeholder="{{Lang::get('messages.nologManLblCapcha')}}"type="text" style="text-transform: uppercase;">

                            </div>

                            <div class="flex_popup flex_column_popup">
                                <input type="text" name="alias" value="{{Input::old('alias')}}"placeholder="{{Lang::get('messages.nologManLblAlias')}}" required/>
                                	<!--small class="error">{{Lang::get('messages.nologManLblCorreoErr')}}</small-->
										@if($errors->any())
											@foreach ($errors->get('nombre') as $error)
												<div class="label alert" role="alert">** {{ $error }}</div>
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
                                <input type="text" name="pais" class="typeahead" placeholder="{{Lang::get('messages.nologManLblPais')}}"value="{{Input::old('pais')}}"/>
                                <input type="text" name="estado" class="typeahead" placeholder="{{Lang::get('messages.nologManLblCiudad')}}" value="{{Input::old('estado')}}"/>
                            </div>

                            <div id="terms_box">
                                <input type="checkbox" name="politicas" value="acepto" />{{Lang::get('messages.nologManLblTerminos')}} <a href="{{URL::to('unmask')}}" target="_blank">{{Lang::get('messages.nologManLnkTerminos')}}</a>
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

        <img src="img/big_logo_video.png" width="350" height="123">

        <video  poster="img/bigvideo.jpg" loop="loop" autoplay="autoplay"><source src="video/viqw.mp4"></video>
    </div>

    <p id="find">FIND & <span>UNMASK</span> SOMEONE FROM</p>

    <div id="start_page_search">

        <img src="img/ashley_madison.jpg" />
        <form method="get" action="">
            <input type="text" name="search" value="Enter First Name of nickname" onfocus="if (this.value == 'Enter First Name of nickname') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Enter First Name of nickname';}">
            <input type="submit" value="SEARCH">
        </form>

    </div>

    <div class="clear"></div>

    <div id="everybody" >

        <img src="img/face.jpg" >

        <p><span class="title">EVERYBODY USE MASKS</span><span class="subtitle"> IN REAL & VIRTUAL LIFE</span> In social media people don’t show who they are. Unmask is the first and only space where you can unmask anyone and show their real face to the world! Use our innovative and effective technology in an effort for social justice. <span class="quote">“Give him a mask, and he will tell you the truth”</span> <span class="actor">Oscar Wilde</span></p>

        <img src="img/man.png" >

    </div>

    <div id="small_videos">
        <div id="video_box">
            <div>
                <div class="play_block"></div>
                <video autoplay="autoplay" height="180" width="180" poster="img/smallvideo.jpg"><source src=""></video>
            </div>
            <div>
                <div class="play_block"></div>
                <video autoplay="autoplay" height="180" width="180" poster="img/smallvideo.jpg"><source src=""></video>
            </div>
            <div>
                <div class="play_block"></div>
                <video autoplay="autoplay" height="180" width="180" poster="img/smallvideo.jpg"><source src=""></video>
            </div>
        </div>
    </div>

    <div id="all">
        <p >all that you can find only on the</p>

        <a href="#"><img src="img/big_logo.png" width="102"/></a>
    </div>

    <div id="slider">
        <div class="mask"></div>
        <div id="slider_text">
            <h1>REVEALS THE truth ANONYMOUSLY</h1>
            <p>Create a profile of the person about whom you want to tell the truth. add photo, video and audio evidence. Tell the truth to world and stay anonymous.</p>
        </div>

        <div class="cycle-slideshow">

            <div class="cycle-pager"></div>

            <img src="img/slider1.jpg">
            <img src="img/slider2.jpg">
            <img src="img/slider3.jpg">
            <img src="img/slider4.jpg">

        </div>
    </div>

    <div id="knowledge">
        <p><span>you will know the truth</span> <br> ABOUT THE PEOPLE WHO SURROUND YOU</p>
    </div>

    <div id="click_unmask">
        <p>On <a href="#">UNMASK.life</a> you can see the truth about people from all over the world. Whether it's your friend, teachers, staff, boss,
            lovers or anyone else you've met. Also you can share info about anyone you know and unmask them!</p>
        <h1>CLICK “<span>unmask</span>”  TO OPEN THE TRUTH</h1>

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

        <p class="click_p">or</p>

        <a href="#" id="find_some">find someone</a>

        <p class="click_p" style="margin-top: 66px">and unmask them</p>

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
        </div>


    </div>

    <div id="footer">

            <a href="#" class="start_page_big_logo" ><img src="img/logo_footer.png" width="102"></a>
            <ul class="start_page_navigation">
                <li><a href="#">About</a></li>
                <li><a href="#">How It Works</a></li>
                <li><a href="#">Open Mask</a></li>
                <li><a href="#">Find Someone</a></li>
            </ul>

                <a href="#start_page_header" id="arrow_up"><img src="img/arrow_up.png" width="64"/><p>up</p></a>

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
		}
	</script>

</body>
</html>
