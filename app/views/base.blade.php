<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Unmask</title>
    <!--STYLES-->
        <link href="{{ URL::asset('css/reset.css') }}" rel="stylesheet" media="screen">
        <link href="{{ URL::asset('foundation/css/foundation.css') }}" rel="stylesheet">
        <link href="{{ URL::asset('css/style.css') }}" rel="stylesheet" media="screen">
        <link href="{{ URL::asset('css/fonts.css') }}" rel="stylesheet" media="screen">
        <link href="{{ URL::asset('css/typeahead.css') }}" rel="stylesheet">
        <link rel="shortcut icon" href="{{ URL::asset('img/ico.png') }}" />

    
        <script type="text/javascript" src="{{ URL::asset('js/jquery-2.0.3.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/typeahead.jquery.min.js') }}"></script> 
        <script type="text/javascript" src="{{ URL::asset('js/main_app.js') }}"></script> 
        <script type="text/javascript" src="{{ URL::asset('js/lodash.underscore.min.js') }}"></script> 
        <script type="text/javascript" src="{{ URL::asset('js/backbone-min.js') }}"></script> 
 
        <style type="text/css">
            .busqueda-resultado {
                background-color: #282C30;
                border: 1px solid blue;
                position: absolute;
                top: 30px;
                right: 220px;
                z-index: 2000;
            }
            .busqueda-resultado a {
                text-align: left;
                border-bottom: 1px solid #AAA;
                display: block;
                width: 100%;
                padding: 0.5em;
                text-align: left;
            }
            .busqueda-resultado img {
                float: left;
                border: 1px solid #AAA;
                margin: 0;
                height: 50px;
                width: 50px;
            }
            .busqueda-resultado span {
                float: left;
                color: #EEE;
                text-align: left;
            }
        </style>
</head>
<body>
                        <!-- data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.')}}" -->
    <div id="wrap">
        <div id="line_header" >
            <div class="content">
                <a href="{{ URL::to('principal') }}"><img src="{{ URL::asset('img/logo.png') }}" width="60" height="22" title="Main page"></a>
                <ul>
                    <li><a href="{{ URL::to('principal') }}">{{Lang::get('messages.baseOptLblMuro')}}</a></li>
                    <li><a href="{{ URL::to('crear_perfil') }}">{{Lang::get('messages.baseOptLblCrearPerfil')}}</a></li>
                    <li><a href="{{ URL::to('rank') }}">{{Lang::get('messages.baseOptLblClasificaciones')}}</a></li>
                    <li><a href="{{ URL::to('madison') }}">Ashley DB</a></li>
                </ul>
                <form method="post" action="">
                    <input type="text" class="base-busqueda txt-buscar buscador"name="search" placeholder="{{Lang::get('messages.basePlhBusca')}}" />
                    <button type="submit" class="base-button btn_buscar" title="Search!"></button>
                    <img id="filter" src="{{ URL::asset('img/filter.png') }}" width="13" height="14" title="Filter"/>
                </form>
                   
                    <div class="filter isHidden">

                        <div>
                            <p>{{Lang::get('messages.baseBsaLblPerfilId')}}</p>
                            <!--select size="1" name="country">
                                <option value="usa">USA</option>
                                <option value="great_britain">Great Britain</option>
                                <option value="canada">Canada</option>
                            </select-->
                            <input type="text"name="id" id="buav_id" placeholder="{{Lang::get('messages.basePlhBaId')}}" >
                        </div>
                        <div>
                            <p>{{Lang::get('messages.baseBsaLblNombrePerfil')}}</p>
                            <!--select size="1" name="city">
                                <option value="usa">New York</option>
                                <option value="great_britain">London</option>
                                <option value="canada">Toronto</option>
                            </select-->
                            <input type="text" name="id" id="buav_nom" placeholder="{{Lang::get('messages.basePlhBaNo')}} ">
                        </div>
                        <div>
                            <p>{{Lang::get('messages.baseBsaLblApellido')}}</p>
                            <input type="text" name="id" id="buav_apa" placeholder="{{Lang::get('messages.basePlhBaApe')}} ">


                            <!--div class="sex">
                                <select size="1" name="age_from">
                                    <option selected disabled>from</option>
                                    <option value="1">1</option>
                                </select>
                                <select size="1" name="age_to">
                                    <option selected disabled>to</option>
                                    <option value="1">1</option>
                                </select>
                            </div-->
                        </div>
                        <div>
                            <p>{{Lang::get('messages.baseBsaLblApodo')}}</p>
                            <input type="text" name="id" id="buav_ama" placeholder="{{Lang::get('messages.basePlhBaApo')}} ">
                        </div>
                         <div>
                            <p>{{Lang::get('messages.baseBsaLblPais')}}</p>
                            <input type="text" name="id" id="buav_apa" placeholder="{{Lang::get('messages.basePlhBaApe')}} ">
                        </div>
                        <div>
                            <p>{{Lang::get('messages.baseBsaLblCiudad')}}</p>
                            <input type="text" name="id" id="buav_cid" placeholder="{{Lang::get('messages.basePlhBaCiu')}} ">
                        </div>

                      
                        <button class="use_filter btn-buscar-avanzado">
                           {{Lang::get('messages.baseBsaBtnBuscar')}}
                        </button>
                    </div>

                <div class="clear"></div>

            </div>
        </div>

        <div class="content content_margin">
                <!--div id="modalBa" class="oculto">
                    <div class="modal-content">
                        <div class="header">
                            <h2>Results</h2>
                        </div>
                        <div class="copy"style="text-align:center">
                          
                        </div>
                        <div class="cf footer_modal"> <a href="#">Close</a></div>
                    </div>
                        <div class="overlay"></div>
                </div-->
            <div id="user_info">
                <img id="profile_config" src="{{ URL::asset('img/profile_config.png') }}" width="9" height="10">
                <div class="user_info">
                    <div id="photo_block">
                        <img id="profile_photo" src="{{ URL::asset('img/db_imgs/alias/'.Session::get('usuario')->foto) }}" width="50" height="50">
                        <span id="user_name">{{Session::get('usuario')->nombre}}</span>
                        <!-- <span id="id" class="nombre-perfil" style="border:5px solid blue;">{{Session::get('usuario')->nombre}}</span> -->
                    </div>

                    <div class="clear"></div>

                    <ul class="info_list">
                        <!--li><a href="{{ URL::to('principal') }}"><span class="profile_info_left">{{Lang::get('messages.baseLogLblMuro')}}</span></a> <span class="profile_info_right">231231</span></li>
                                        <li><span class="profile_info_left">{{Lang::get('messages.baseLogLblClasificaciones')}}</span> <span class="profile_info_right">3</span></li>
                        <li><span class="profile_info_left">Ashley Madison Search</span> <span class="profile_info_right">128</span></li>
                        <li><span class="profile_info_left">{{Lang::get('messages.baseLogLblPoliticasPrivacidad')}}</span> </li-->
                        <li><a href="{{ URL::to('perfiles') }}"><span class="profile_info_left"style="font-size:18px">{{Lang::get('messages.baseLogLblPerfilesCreados')}}</span></a> <!--span class="profile_info_right">6</span--></li>
                        <!--li><a href=""id=""><span class="profile_info_left"style="font-size:18px">Change Password & Photo</span></a> </li-->
                      
                        
                    </ul>

                    <button onclick="window.location.href='{{ URL::to('/logout')}}'"value="Sign_Out"><img src="{{ URL::asset('img/sign_out.png') }}" /><span>{{Lang::get('messages.baseLogLblCerrarSesion')}}</span></button>
                </div>
                <div class="change_info isHidden">
                    <form action="{{ URL::to('update_pass') }}" class="form-change-pass" method="post" enctype="multipart/form-data" data-abide>    
                        <p>{{Lang::get('messages.cuenHedLblUsuario')}}</p>
                        <input type="file" class="hidden_class img-user-photo" name="photo" id="photo" accept="image/jpeg,image/png">
                        <label for="photo">
                            <img src="{{ URL::asset('img/add_photo.jpg') }}" class="tmp_img" width="155" height="140" />
                            <p>Drag&Drop <br> your new photo</p>
                        </label>
                        <p>User: MIke Johan</p>
                        <p>{{Lang::get('messages.cuenHedLblCambiarContra')}}</p>
                        <input type="text" name="contrasenia_act"  placeholder="{{Lang::get('messages.cuenHedLblContrasenia')}}"required/>
                        <input type="text" id="contrasenia" name="contrasenia" required placeholder="{{Lang::get('messages.cuenHedLblNuevaContrasenia')}}"/>
                        <!--small class="error">{{Lang::get('messages.cuenHedLblNuevaContraseniaVal')}}</small-->
                        <input type="text" id="contrasenia_rep" name="contrasenia_sec" data-equalto="contrasenia"placeholder="{{Lang::get('messages.cuenHedLblNuevaContraseniaConf')}}" required/>
                        <!--small class="error">{{Lang::get('messages.cuenHedLblNuevaContraseniaConfVal')}}</small-->
                        @if($errors->any())
                            <br/><br/>
                            @foreach ($errors->all() as $error)
                            <span>** {{ Lang::get($error) }}</span>
                            @endforeach
                        @endif
                        <div class="change_button">
                            <div>
                                <button type="submit" class="btn-change-pass" value="change">{{Lang::get('messages.cuenHedBtnCambiarcontrasenia')}}</button>
                                <!--button value="delete">{{Lang::get('messages.cuenHedLblBorrarCuenta')}}</button-->
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="busqueda-resultado"></div>
            <div id="users">
                @yield('content')
            </div>
            <div class="clear"></div>
        </div>
        
    </div>

<!--SCRIPTS-->
        <!--script src="{{ URL::asset('scripts/jquery-2.1.4.min.js') }}"></script-->
        <script src="{{ URL::asset('foundation/js/vendor/jquery.js') }}"></script>
        <script src="{{ URL::asset('foundation/js/foundation/foundation.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('foundation/js/vendor/modernizr.js') }}"></script>
        <script src="{{ URL::asset('foundation/js/foundation.min.js') }}"></script>
        <script src="{{ URL::asset('foundation/js/foundation/foundation.reveal.js') }}"></script>
        <script src="{{ URL::asset('foundation/js/foundation/foundation.orbit.js') }}"></script>
        <script src="{{ URL::asset('foundation/js/foundation/foundation.tooltip.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('foundation/js/foundation/foundation.abide.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('foundation/js/foundation/foundation.offcanvas.js') }}"></script>
        <script src="{{ URL::asset('scripts/script.js') }}"></script>
        <script src="{{ URL::asset('js/typeahead.bundle.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/bloodhound.min.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/main_app.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/app.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/classie.js') }}"></script>
        <script type="text/javascript" src="{{ URL::asset('js/handlebars.js') }}"></script>
        <script src="{{ URL::asset('js/lodash.underscore.min.js') }}"></script>
        <script type="text/javascript">
            /**
            * change the delimiter tags of Handlebars
            * @author Francesco Delacqua
            * @param string start a single character for the starting delimiter tag
            * @param string end a single character for the ending delimiter tag
            */
            Handlebars.setDelimiter = function(start,end){
                //save a reference to the original compile function
                if(!Handlebars.original_compile) Handlebars.original_compile = Handlebars.compile;

                Handlebars.compile = function(source){
                    var s = "\\"+start,
                        e = "\\"+end,
                        RE = new RegExp('('+s+'{2,3})(.*?)('+e+'{2,3})','ig');

                        replacedSource = source.replace(RE,function(match, startTags, text, endTags, offset, string){
                            var startRE = new RegExp(s,'ig'), endRE = new RegExp(e,'ig');

                            startTags = startTags.replace(startRE,'\{');
                            endTags = endTags.replace(endRE,'\}');

                            return startTags+text+endTags;
                        });

                    return Handlebars.original_compile(replacedSource);
                };
            };

            //EXAMPLE to change the delimiters to [:
            Handlebars.setDelimiter('[',']');
        </script>
        <script>
            var url = window.location.origin + '/public/';
            //var url = window.location.origin + '/';//::EOF-URL
         
            
            $(document).foundation();
            $(document).foundation('tooltip', 'reflow');
            $(document).ready(function(){ //creacion de perfiles

                $('#addPerfil').click('reveal', 'open');
                $('#addPerfil').click('reveal','close');

                debugger
                // $('form.form-change-pass').on('submit', function() {
                //     debugger
                // })

                $('.btn-change-pass').on('click', function(e) {
                    var pass_a = $("#contrasenia").val();
                    var pass_b = $("#contrasenia_rep").val();

                    if(pass_a != pass_b) {
                        e.preventDefault();
                        alert('Las contraseñas no coinciden.');
                    }
                });

                $('.img-user-photo').change(function (e) {
                    debugger
                    var tmppath = URL.createObjectURL(this.files[0]);
                    $('.tmp_img').attr('src', tmppath);

                    var file = $(e.currentTarget);
                    var form = file.parents('form');

                    var formData = new FormData(form[0]);
                
                    $('.loading').removeClass('isHidden');
                    var xhr = $.ajax({
                        url: url + 'update_image',  //Server script to process data
                        type: 'POST',
                        success: function (argument) {
                            window.location.reload();
                        },
                        error: function(xhr){
                            debugger
                            form[0].reset();
                        },
                        data: formData,
                        dataType: "json",
                        cache: false,
                        contentType: false,
                        processData: false
                    });

                    xhr.always(function() {
                        $('.loading').addClass('isHidden');
                    });
                })

                $('.click-image').on('click', function(e) { //url de la imagen
                    debugger
                    var img = $(e.currentTarget);
                    var form = img.parents('form');
                    var file = form.find('.' + img.data('ref'));

                    file.off('change').on('change', function() {
                        readURL(file[0], img);
                    });

                    file.click();
                });

                $('.base-busqueda.txt-buscar').on('blur', function (e) { //busquedas
                    if($(e.currentTarget).val().length == 0)
                        $('.busqueda-resultado').addClass('isHidden')
                });

                $('.base-busqueda.txt-buscar').on('keypress', function (e) { //busquedas
                    if(e.which == 32) {
                        e.preventDefault();
                        $('.btn-buscar-avanzado').click();
                    }
                });

                $('.btn-buscar-avanzado').on('click', function() {
                    debugger //ABRIR MODALBA
                    
                    var data = {
                        buav_id: $('#buav_id').val() || '',
                        buav_nom: $('#buav_nom').val() || '',
                        buav_apa: $('#buav_apa').val() || '',
                        buav_ama: $('#buav_ama').val() || '',
                        buav_pai: $('#buav_pai').val() || '',
                        buav_cid: $('#buav_cid').val() || '',
                    }
                    $.post(url + 'principal/avanzada', data).done(done);
                    //window.location.href = window.location.origin + url + 'principal/' + busqueda;
                    function done (data) {
                        debugger
                        var perfiles = '';
                        for (var i = 0; i < data.length; i++) {
                            var item = data[i];
                            perfiles += '<div class="perfil"> \
                                            <a href="' + url + 'perfil/' + item.idPerfil + '"> \
                                                <img src="' + url + 'img/db_imgs/' + item.foto + '" /> \
                                                <span>'+ item.perfil +  ' / ' + item.mascaras + ' / ' + item.pais +  '</span> \
                                            </a> \
                                        </div>';
                        }
                        $('.busqueda-resultado').removeClass('isHidden').html(perfiles);
                        $('#busquedaAva').foundation('reveal', 'close');

                        $('#buav_id').val('');
                        $('#buav_nom').val('');
                        $('#buav_apa').val('');
                        $('#buav_ama').val('');
                        $('#buav_pai').val('');
                        $('#buav_cid').val('');
                    }
                });
                

                $('.base-button.btn_buscar').on('click', function(e) { //evento click en busqueda
                    debugger
                    e.preventDefault();
                    var busqueda = $('.base-busqueda.txt-buscar').val();
                    if(busqueda.length > 0) {
                        $.get(url + 'principal/custom/' + busqueda).done(done);
                        //window.location.href = window.location.origin + url + 'principal/' + busqueda;
                        function done (data) {
                            debugger
                            var perfiles = '';
                            for (var i = 0; i < data.length; i++) {
                                var item = data[i];
                                perfiles += '<div class="perfil"> \
                                                <a href="' + url + 'perfil/' + item.idPerfil + '"> \
                                                    <img src="' + url + 'img/db_imgs/' + item.foto + '" /> \
                                                    <span>'+ item.perfil +  ' / ' + item.mascaras + ' / ' + item.pais +  '</span> \
                                                </a> \
                                            </div>';
                            }
                            $('.busqueda-resultado').removeClass('isHidden').html(perfiles); //mostrar los resultados quitar la clase ocultar
                        }
                    }
                });
            });

            function readURL(input, image) {
                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        image.attr('src', e.target.result);
                    }

                    reader.readAsDataURL(input.files[0]);
                }
            }
            $('img').error(function(){
                $(this).attr('src', "'{{ URL::asset('img/mascarita.png') }}'");
            });
            
            /*$('.').on('click',function(e){
                //e.preventDefault();
                $('.').removeClass("Hidden");
                

                opcion = 1;
            });*/            
        </script>
</body>
</html>