@extends('base')

@section('content')
    
<script type="text/javascript" src="{{ URL::asset('js/jquery-2.0.3.min.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('js/typeahead.jquery.min.js') }}"></script> 
<script type="text/javascript" src="{{ URL::asset('js/main_app.js') }}"></script> 
<script type="text/javascript" src="{{ URL::asset('js/lodash.underscore.min.js') }}"></script> 
<script type="text/javascript" src="{{ URL::asset('js/backbone-min.js') }}"></script> 

        
	   <!--div class="gallery_popup">
            <span class="prev"><</span>
            <img src=""/>
            <span class="next">></span>
            <div class="comenta_img">

            </div>
        </div-->
        <a href="{{ URL::previous() }}" class="arrow_back"><img src="{{ URL::asset('img/arrow_back.png') }}"> Back </a>

        <button id="create_profile" onclick="window.location.href='{{ URL::to('crear_perfil')}}'"> <span>create profile</span> <img src="{{ URL::asset('img/create_plus.png') }}" width="30"></button>

        <div class="clear"></div>
            <div class="other_users_container">

                <div class="edit_profile_main_info">
                    <div class="edit_profile_photo_block">
                        <div class="teg_photo">
                            <div class="mask">
                                <img src="{{ URL::asset('\\img\\db_imgs\\'.$data['perfil']->foto) }}">
                            </div>
                            <!-- ULTIMA MASCARA PUBLICADA -->
                            @foreach($data['mascaras'] as $mascara)

                            @if( strlen($mascara->nombre) > 0 )
                            <p>{{substr( $mascara->nombre, 0, 15) }}  </p>
                            @endif
                            @endforeach
                        </div>
                        <div class="box_miniatura">
                        
                        @foreach($data['fotos'] as $evidencia)
                            <a href="" style="width:20%;" data-reveal-id="sliderGaleria" class="open-modal">
                                <img src="{{ URL::asset('\\img\\db_imgs\\publicas\\'.$evidencia->foto) }}"/>
                            </a>
                        @endforeach
                        </div>

                        <div class="flex_box">
                            <a href="#" class="vote-perfil has-tip"data-tooltip aria-haspopup="true"title="{{Lang::get('messages.perfPostTltReputacionMala')}}" data-tipo="cake" data-id="{{ $data['perfil']->idPerfil }}">
                                <div class="unmask_red">
                                    <span class="num_rank"><!--{{ $data['perfil']->good }}-->{{ $data['perfil']->amor }}</span>
                                    <img src="{{ URL::asset('img/anonymous.png') }}" width="11" height="15">
                                </div>
                            </a> <!-- data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.')}}" -->

                            <div class="separation_edit"></div>

                            <a href="#" class="vote-perfil has-tip" data-tooltip aria-haspopup="true"title="{{Lang::get('messages.perfPostTltReputacionMala')}}"data-tipo="enojo" data-id="{{ $data['perfil']->idPerfil }}">
                                <div class="unmask_grey">
                                    <span class="num_rank"><!--{{ $data['perfil']->bad }}-->{{ $data['perfil']->odio }}</span>
                                    <img src="{{ URL::asset('img/anonymous_red.png') }}" width="11" height="15">
                                </div>
                            </a>
                        </div>
                        
                    </div>

                    <div class="info_block">
                        <!--a href="#" class="float_right">Follow <img src="{{ URL::asset('img/plus_red.png') }}"></a-->
                        <div class="clear"></div>
                        <!--div class="float_left"-->
                            <p class="long_name"style="text-transform: capitalize;">{{ $data['perfil']->perfil }}</p>
                            @foreach($data['apodos'] as $apodo)
                             @if( strlen($apodo->apodo) > 0 )
                                <p class="short_name"style="text-transform: capitalize;display:inline-block; vertical-align:top;">{{ $apodo->apodo }} </p>
                             @endif
                            @endforeach
                            <div class="place">
                                <p>{{Lang::get('messages.perfInfLblLugar')}}: <span>{{ $data['perfil']->pais }} {{ $data['perfil']->municipio }}</span></p>
                                <p>ID: <span>{{ $data['perfil']->idPerfil }}</span></p>
                            </div>
                            @foreach($data['nombres'] as $nombre)
                                <p class="short_name" style="text-transform: capitalize;display:inline-block; vertical-align:top;"><!--Extras:--> {{ $nombre->nombre }}</p>
                            @endforeach
                                <!-- PONER TODAS LAS MASCARAS SOBRE EL MISMO RENGLÓN NO UN PARRAFO POR CADA MASCARA-->
                            <div class="cien">
                            @if( strlen($mascara->nombre) > 0 )
                                <p class="short_name "style="display:inline-block; vertical-align:top;font-family: Raleway_bold;">{{Lang::get('messages.perfInfLblMascara')}}</p>
                            @endif
                            @foreach($data['mascaras'] as $mascara)

                                @if( strlen($mascara->nombre) > 0 )
                                    <p class="short_name mascara_perfil" style="text-transform: capitalize;display:inline-block; vertical-align:top;">{{ $mascara->nombre }}</p>
                                @endif
                            @endforeach
                            </div>
                                <img src="{{ URL::asset('img/fb.png') }}"width="30"height="30">
                                @if(strlen($data['perfil']->facebook) > 0)
                                    
                                    <a class="redes_icono"style="width:300px;font-size:12pt;"href="{{ $data['perfil']->facebook }}"target="_blank">{{ substr($data['perfil']->facebook, 0, 25) }}...</a>
                                @endif
                            
                                <img src="{{ URL::asset('img/tw.png') }}"width="30"height="30">
                            @if(strlen($data['perfil']->twitter) > 0)
                                <a class="redes_icono" style="color:black;width:300px;font-size:12pt;"href="{{ $data['perfil']->twitter }}"target="_blank">{{ substr($data['perfil']->twitter, 0, 25) }}...</a><br>
                            @endif
                         
                                <img src="{{ URL::asset('img/insta.png') }}"width="30"height="30">
                            @if(strlen($data['perfil']->instagram) > 0)
                                <a class="redes_icono"style="color:black;width:300px;font-size:12pt;"href="{{ $data['perfil']->instagram }}"target="_blank">{{ substr($data['perfil']->instagram, 0, 25) }}...</a><br>
                            @endif
                                <img src="{{ URL::asset('img/otra_red.png') }}"width="30"height="30">
                            @foreach($data['redes'] as $red)
                                <a style="color:black;width:300px;font-size:12pt;"href="{{ $red->nombre }}"target="_blank">{{ substr($red->nombre, 0, 25) }}...</a><br>
                            @endforeach

                            <div class=="btn_odio">                         <!-- data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.')}}" -->
                                <a style="display: inline-block;vertical-align: top; text-align: center"href="#" class="haters btn-voto-amor has-tip" data-tipo="1" data-id="{{ $data['perfil']->idPerfil }}" data-tooltip aria-haspopup="true"title="{{Lang::get('messages.perfPostTltVotarOtraVez')}}"><p class="amor-votes">{{Lang::get('messages.perfInfLblOdio')}} (<span class="total-lovehate">{{ $data['perfil']->odio }}</span>)</p></a>
                                <a style="display: inline-block;vertical-align: top; text-align: center"href="#" class="lovers btn-voto-amor has-tip"data-tipo="2" data-id="{{ $data['perfil']->idPerfil }}"data-tooltip aria-haspopup="true"title="{{Lang::get('messages.perfPostTltVotar')}}"><p class="amor-votes">{{Lang::get('messages.perfInfLblAmor')}} (<span class="total-lovehate">{{ $data['perfil']->amor }}</span>)</p></a>
                            </div>
                        <!--/div-->
                        <div class="box_relaciones">
                            <h5 data-tooltip aria-haspopup="true" class="has-tip titulo_relaciones" title="{{Lang::get('messages.perfPostTltComplices')}} ">{{Lang::get('messages.perfInfLblPerfiles')}} </h5>
                            @foreach($data['relaciones'] as $relacion)
                                <a href="{{ URL::to('perfil').'/'.$relacion->idPerfil }}">
                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltComplice')}}">
                                        <img src="{{ URL::asset('\\img\\db_imgs\\'.$relacion->foto) }}" style="border-radius:5px;height:50px"/>
                                    </span>
                                </a>
                            @endforeach

                        </div>
                    </div>

                    <div class="clear"></div>
                    
                  
                </div>
<!-- MODAL DE INFORMACION EXTRA -->
                <button class="add_btn_info" data-reveal-id="agregarPublico" data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfTAgregaTlt')}}"> <span>{{Lang::get('messages.perfInfLblAgregarInformacion')}}</span> <img src="{{ URL::asset('img/create_plus.png') }}" width="30"></button>

                <!--div class="add_info_extra"><a href=""></a></div-->
                <div id="agregarPublico" class="reveal-modal" data-reveal>
                    <div class="cien">
                        @if(count($data['nombres']) < 3)
                            <div id="nombresAdd"class="columna_datos pnl-nombres-publicos" data-id="{{ $data['perfil']->idPerfil }}">
                                <div class="entrada_datos">
                                    <label>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltNombresExtras')}}">{{Lang::get('messages.perfInfLblNombresAdicionales')}}</span>
                                        <input type="text" class="podos-publica" name="nombre" />
                                        <button type="button" class="button align-top tiny btn-nombre-publica "style="background-color:#ae3e34;"><!--{{Lang::get('messages.perfInfLblAgregar')}}-->Add</button>

                                    </label>
                                </div>
                                <div class="btn_entrada formulario_alinear">
                                    <label>
                                    </label>
                                </div>
                            </div>
                        @endif
                        @if(count($data['apodos']) < 3)
                            <div id="apodosAdd"class="columna_datos pnl-apodos-publicos  " data-id="{{ $data['perfil']->idPerfil }}">
                                <div class="entrada_datos">
                                    <label>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltApodosExtras')}}">{{Lang::get('messages.perfInfLblApodo')}}</span>
                                        <input type="text" class="podos-publica" name="apodo" />
                                        <button type="button" class="button align-top tiny btn-apodo-publica "style="background-color:#ae3e34;">Add</button>
                                        
                                    </label>
                                </div>
                                <div class="btn_entrada  formulario_alinear">
                                    <label>
                                    </label>
                                </div>
                            </div>
                        @endif
                        @if(count($data['mascaras']) < 10)
                            <div id="masca"class="columna_datos pnl-mascaras-publicas  " data-id="{{ $data['perfil']->idPerfil }}">
                                <div class="entrada_datos">
                                    <label>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltMascarasExtras')}}">{{Lang::get('messages.perfInfLblMascara')}}</span>
                                        <input type="text" class="mascara-publica typeahead" name="mascara" style="width:214px;"/>
                                        <button type="button" class="button align-top tiny btn-mascara-publica "style="background-color:#ae3e34;">Add</button>
                                        
                                    </label>
                                </div>
                            </div>
                        @endif
                        @if(count($data['fotos']) < 5)
                            <!--div class="cien"-->
                            <div id="fotosAdd"class="columna_datos  ">
                                <form action="{{ URL::to('fotos_publicas').'/'.$data['perfil']->idPerfil }}" method="post" id="frmEvidencia" enctype="multipart/form-data" class="multi-image" data-abide>
                                    <div class="entrada_datos">
                                        <label>
                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltFotosExtras')}}">
                                                {{Lang::get('messages.perfInfLblImagenExtra')}}
                                            </span>
                                            <input style="padding-top:2px;padding-bottom:2px;height:35px;"type="file" id="fotos" name="fotos[]" multiple="multiple" accept="image/*" required/>
                                            <button type="submit" class="button align-top tiny btn- "style="background-color:#ae3e34;">Add</button>
                                        </label>
                                            <!--small class="error">{{Lang::get('messages.indxModlblContrsenia')}} - {{Lang::get('messages.indxModlblContrsenia')}}</small-->
                                    </div>
                                </form>
                            </div>
                        @endif
                        @if(count($data['redes']) < 10)
                            <div id="social"class="columna_datos  pnl-redes-publicas " data-id="{{ $data['perfil']->idPerfil }}">
                                <div class="entrada_datos">
                                    <label>
                                        <span data-tooltip  aria-haspopup="true" class="has-tip" title="">{{Lang::get('messages.perfInfLblSocialMedia')}}</span>
                                        <input type="text" class="mascara-publica" />
                                        <button type="button" class="button align-top tiny btn-red-publica "style="background-color:#ae3e34;">Add</button>
                                    </label>
                                </div>
                                <!--div class="btn_entrada  formulario_alinear">
                                    <label>
                                            </label>
                                        </div-->
                            </div>
                        @endif
                        @if(count($data['relaciones']) < 5)
                            <div id="rela"class="columna_datos pnl-perfiles-publicos " data-id="{{ $data['perfil']->idPerfil }}">
                                <div class="entrada_datos">
                                    <label>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltCompliceExtra')}}">{{Lang::get('messages.perfInfLblIdPerfil')}}</span>
                                        <input type="text" class="perfil-publica" name="mascara" />
                                        <button type="button" class="button align-top tiny btn-perfil-publico "style="background-color:#ae3e34;">Add</button>
                                    </label>
                                </div>
                                        <!--div class="btn_entrada formulario_alinear">
                                            <label>
                                            </label>
                                        </div-->
                            </div>
                        @endif
                            <!--/div-->
                    </div>
                    <a class="close-reveal-modal">&#215;</a>
                </div>
                <a class="exit-off-canvas"></a>
            </div>
<!-- MODAL DE INFORMACION EXTRA TERMINA -->

            <div id="openExtra" class="modalDialog">
                <div>
                    <a href="#close" title="Close" class="close">X</a>
                   
                    @if(count($data['nombres']) < 3)
                    <div class="pnl-nombres-publicos" data-id="{{ $data['perfil']->idPerfil }}">
                        <div class="extra_inputs">
                            <label>
                                <span>{{Lang::get('messages.perfInfLblNombresAdicionales')}}</span>
                                <input type="text" class="podos-publica" name="nombre" />
                            </label>
                        
                            <label>
                                <button type="button" class="btnExtraInfo btn-nombre-publica ">Add</button>
                            </label>
                        </div>
                    </div>
                    @endif

                    @if(count($data['apodos']) < 3)
                    <div class=" pnl-apodos-publicos  " data-id="{{ $data['perfil']->idPerfil }}">
                        <div class="extra_inputs">
                            <label>
                                <span>{{Lang::get('messages.perfInfLblApodo')}}</span>
                                <input type="text" class="podos-publica" name="apodo" />
                            </label>
                     
                        
                            <label>
                                <button type="button" class="btnExtraInfo btn-apodo-publica "style="background-color:#ae3e34;">Add</button>
                            </label>
                        </div>
                    </div>
                    @endif
                    @if(count($data['mascaras']) < 10)
                    <div class="pnl-mascaras-publicas  " data-id="{{ $data['perfil']->idPerfil }}">
                        <div class="extra_inputs">
                            <label>
                                <p>{{Lang::get('messages.perfInfLblMascara')}}</p>
                                <input type="text" class="mascara-publica typeahead" name="mascara" />
                            </label>
                        
                        
                            <label>
                                <button type="button" class="btnExtraInfo btn-mascara-publica "style="background-color:#ae3e34;">Add</button>
                            </label>
                        </div>
                    </div>
                    @endif
                    @if(count($data['fotos']) < 5)
                        <form action="{{ URL::to('fotos_publicas').'/'.$data['perfil']->idPerfil }}" method="post" id="frmEvidencia" enctype="multipart/form-data" class="multi-image" data-abide>
                            <div class="extra_inputs">
                                <label>
                                    <span>
                                        {{Lang::get('messages.perfInfLblImagenExtra')}}
                                    </span>
                                    <input type="file" id="fotos" name="fotos[]" multiple="multiple" accept="image/*" required/>
                                </label>
                                <small class="error">{{Lang::get('messages.perfInfLblObligatorio')}}</small>
                                <p>
                                    <button type="submit" class="btnExtraInfo btn- "style="width:100%;">Add</button>
                                </p>
                            </div>
                        </form>
                    @endif
                    @if(count($data['redes']) < 10)
                        <div class=" pnl-redes-publicas " data-id="{{ $data['perfil']->idPerfil }}">
                            <div class="extra_inputs">
                                <label>
                                    <span data-tooltip  aria-haspopup="true" class="has-tip" title="">{{Lang::get('messages.perfInfLblSocialMedia')}}</span>
                                    <input type="text" class="mascara-publica" />
                                </label>
                                <label>
                                    <button type="button" class="btnExtraInfo  btn-red-publica "style="background-color:#ae3e34;">Add</button>
                                </label>
                            </div>
                        </div>
                    @endif
                    @if(count($data['relaciones']) < 5)
                        <div class="extra_inputs pnl-perfiles-publicos " data-id="{{ $data['perfil']->idPerfil }}">
                            <label>
                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltCompliceExtra')}}">Add</span>
                                <input type="text" class="perfil-publica" name="mascara" />
                            </label>
                            <label>
                                <button type="button" class="btnExtraInfo btn-perfil-publico "style="background-color:#ae3e34;">Add</button>
                            </label>
                        </div>
                    @endif
                </div>                  
            </div>
            <div class="user_content">
                <div style="text-align:center"><p>{{ count($data['posts']) }} Post</p></div>

                <div class="content_navigation">
                    <ul>
                        <li id="lapiz"  class="comments has-tip"data-tooltip aria-haspopup="true"title="{{Lang::get('messages.perfPostTltConfesion')}}"><p>{{Lang::get('messages.perfPostLblConfesion')}}</p></li>
                        <li id="secre"  class="videos has-tip"data-tooltip aria-haspopup="true"title="{{Lang::get('messages.perfPostTltConfesionVideo')}}"><p>{{Lang::get('messages.perfPostLblVideo')}}</p></li>
                        <li id="fotosP" class="photos has-tip"data-tooltip aria-haspopup="true"title="{{Lang::get('messages.perfPostTltEvidenciaImagen')}}"><p>{{Lang::get('messages.perfInfLblFotos')}}</p></li>
                        <li id="linkear"class="other has-tip"data-tooltip aria-haspopup="true"title="{{Lang::get('messages.perfPostTltConfesionEnlace')}}"><p>{{Lang::get('messages.perfPorLblEnlace')}}</p></li>
                    </ul>
                </div>
                <div class="user_main_content">
                    <div id="comments" class="">
                        <h1> {{Lang::get('messages.perfTitlEvidencia')}}</h1>
                        <div class="user_main_content_wrap">

                           <!--a href="#anchor_add">Add comment</a-->
                           <form class="postearEv " enctype="multipart/form-data" data-abide>
                                <div class="add_comment post Hidden">
                                   
                                    <div id="conCampo" data-tipo="1" class="Hidden">
                                        <h6 style="color:#a7a9ab;text-align:center;margin-bottom:10px;font-size:15px">{{Lang::get('messages.perfPostLblTitulo')}}</h6>
                                        <input type="text" placeholder="{{Lang::get('messages.perfPorLblSecretBox')}}" name="secret"  maxlength="50" data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionSecretBox')}}"required>
                                        <textarea style="min-height:150px;resize: none;"name="comment" maxlength="2550" placeholder="{{Lang::get('messages.perfPostLblConfesion')}}"data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesion1')}}" required></textarea>
                                    </div>
                                    <div id="linkCampo" data-tipo="4" style="margin-top:5px;">
                                        <label>
                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionRelacionado')}}">
                                            </span> 
                                            <input type="text"placeholder="{{Lang::get('messages.perfPorLblEnlace1')}}" name="link_evi" class="expand has-tip"data-tooltip aria-haspopup="true" title="{{Lang::get('messages.perfPostTltConfesionEnlace')}}" pattern="url"/>
                                        </label>
                                        <small class="error">{{Lang::get('messages.perfPorLblEnlace1Example')}}</small>
                                    </div>
                                    <div id="videoCampo" data-tipo="2" class="Hidden">
                                        <label>
                                            {{Lang::get('messages.perfPorLblEvidenciaVideo')}}:
                                            <input  type="text" name="link" placeholder="www.youtube.com/videoname"data-tooltip aria-haspopup="true" class="has-tip"title="{{Lang::get('messages.perfPostTltEvidenciaYoutube')}}"/>
                                        </label>
                                    </div>
                                    <div id="eviCampo" data-tipo="3" class="Hidden">
                                        <label>
                                            {{Lang::get('messages.perfPorLblEvidenciaFoto')}}:
                                            <input type="file" id="file" name="files[]" multiple="multiple" accept="image/*" data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaImagen')}}"/>
                                        </label>
                                    </div>
                                    <div id="botCampo" class="Hidden">  
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionEvidencia')}}"><input type="submit" style="margin-top:12px;" class="button btn-postear"value="{{Lang::get('messages.perfPorLblPostear')}}"><!--button type="button"  style=""> </button--></span>
                                    </div>
                                </div>
                           </form>
                            @foreach($data['posts'] as $post)
                            <div class="post">
                                <h1>{{$post->secret}}</h1>
                                @if(strlen($post->link_evi) > 0)
                                    <a href="{{$post->link_evi}}" target="_blank">
                                        <p>{{substr($post->link_evi, 0, 80)}}...</p>
                                    </a>
                                @endif
                                <p>{{$post->confesion}} </p>
                                @if(strlen($post->link) > 0)
                                <div style="text-align:center;margin-bottom:9px;"> <!--VIDEO POST EVIDENCIA PAL-->
                                    <h5 style="text-align:center;">{{Lang::get('messages.perfPostLblVideo')}}</h5>
                                    <iframe width="50%" height="330" src="//www.youtube.com/embed/{{$post->link}}" frameborder="0" allowfullscreen></iframe>
                                    <div class="confiable isHidden" data-tipo="video_post" data-id="{{ $post->idPost }}">
                                        {{Lang::get('messages.perfPostLblConfiable')}}:
                                        <a href="#" data-conf="1">
                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionMala')}}">
                                                <i class="icon-checkmark"></i>
                                            </span> 
                                            <span class="votos-totales">{{ $post->vid_siconf }}</span>
                                        </a>
                                        <a href="#" data-conf="0">
                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionMala')}}">
                                                <i class="icon-tacha"></i>
                                            </span> 
                                            <span class="votos-totales">{{ $post->vid_noconf }}</span>
                                        </a>
                                    </div>
                                    <div class="com_likes isHidden">
                                        <a href="" data-reveal-id="comentBox">
                                            <i style="font-size: 25px;" class="icon-chat comm-post" data-tipo="2" data-id="{{$post->idPost}}"></i>
                                        </a>
                                        <a class="votos_mostrar"><i style=" font-size: 28px;"class="icon-thumbs-up"></i></a>                                            
                                        <div class="votosPost formulario_alinear votos-container Hidden" data-tipo="2" data-idpost="{{$post->idPost}}">
                                            <div class="goodPost formulario_alinear">
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="corazon">
                                                    <img src="../img/emoticon/5.gif">
                                                    <p class="num_rank">{{ $post->vid_corazon }}</p>
                                                </a>
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="estrella">
                                                    <img src="../img/emoticon/4.gif">
                                                    <p class="num_rank">{{ $post->vid_estrella }}</p>
                                                </a>
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="blike">
                                                    <img src="../img/emoticon/3.gif">
                                                    <p class="num_rank">{{ $post->vid_blike }}</p>
                                                </a>
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="carita">
                                                    <img src="../img/emoticon/2.gif">
                                                    <p class="num_rank">{{ $post->vid_carita }}</p>
                                                </a>
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="cake">
                                                    <img src="../img/emoticon/1.gif">
                                                    <p class="num_rank">{{ $post->vid_cake }}</p>
                                                </a>
                                            </div>
                                            <div class="badPost formulario_alinear">
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="caca"><img src="../img/emoticon/10.gif"><p class="num_rank">{{ $post->vid_caca }}</p></a>
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="craneo"><img src="../img/emoticon/9.gif"><p class="num_rank">{{ $post->vid_craneo }}</p></a>
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="bug"><img src="../img/emoticon/8.gif"><p class="num_rank">{{ $post->vid_bug }}</p></a>
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="gota"><img src="../img/emoticon/7.gif"><p class="num_rank">{{ $post->vid_gota }}</p></a>
                                                <a href="#" data-id="{{ $post->idPost }}" class="vote-rank-post" data-tipo="enojo"><img src="../img/emoticon/6.gif"><p class="num_rank">{{ $post->vid_enojo }}</p></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>  
                                @endif
                                <div class="gallery">
                                    @foreach($post->fotos as $foto)
                                       <!-- VERIFICAR LA CARGA EN EL MODAL EL CAMBIO DE IMAGEN Y PODER CERRAR MODAL ADEMAS DE RELACIONAR LOC COMENTARIOS CON LA IMAGEN -->
                                    <div class="gallery_img">
                                        <a href="" data-reveal-id="slider_post_{{$post->idPost}}" data-id="{{$foto->idFotoPost}}" data-idpost="{{$post->idPost}}" class="open-modal foto-post"-->
                                           <img src="{{ URL::asset('img\\db_imgs\\posts\\'.$foto->foto) }}"/>
                                        </a>
                                    </div>
                                      
                                    @endforeach
                                </div>
                                <div class="row">
                                    @if($data['perfil']->idAliasBase == $post->idAlias)
                                    <!--a id="fotosAddPost">
                                        <img width="20px;"src="{{ URL::asset('img/add_img.png') }}">
                                    </a-->
                                    <div id="campoFotosPost"class="large-12 isHidden">
                                        <form class="postear-post-evi" data-idpost="{{$post->idPost}}" enctype="multipart/form-data" data-abide>
                                            <div id="evi-post-campo">
                                                <label>
                                                    {{Lang::get('messages.perfPostLblAgregarFoto')}}
                                                    <input type="file" class="file-post-evi" name="files[]" multiple="multiple" accept="image/*" required />
                                                </label>
                                                <small class="error">{{Lang::get('messages.perfPorLblRequerido')}}</small>
                                            </div>
                                            <div>
                                              <button type="button" class="button btn-file-post-evi" style="background-color: #ae3e34;">{{Lang::get('messages.perfInfLblAgregar')}}</button>
                                            </div>
                                        </form>
                                    </div>
                                    @endif
                                </div>
                                <div class="like">
                                    {{Lang::get('messages.perfPostLblConfiable')}}:
                                    <div data-tipo="post" class="confiable has-tip"data-tooltip aria-haspopup="true" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}" data-id="{{ $post->idPost }}">
                                        <a href="#" data-conf="1">
                                            <div class="point_red"></div>
                                            <span style="margin-right:5px">
                                                [<span class="votos-totales">{{ $post->siconf }}</span>]
                                            </span>
                                        </a>        
                                        <a href="#" data-conf="0">
                                            <div class="point_green"></div>
                                            <span style="margin-right:5px;width:15px;">
                                                [<span class="votos-totales">{{ $post->noconf }}</span>]
                                            </span>
                                        </a>
                                    </div>
                                </div> <!-- MODALES-- >
    <!-- SLIDER MODAL DE EVIDENCIAS FOTOGRAFICAS GALERIA PAL--> 
                                <div id="slider_post_{{$post->idPost}}" class="reveal-modal fotos-modal" data-reveal>
                                    <div class="titulo_barra">
                                        <h2>{{Lang::get('messages.perfPostLblGaleria')}}</h2>
                                    </div>
                                    <div class="row">
                                        <div class="small-8 columns slider_cuadro">
                                            <div class="orbit-link isHidden">
                                                @foreach($post->fotos as $foto)
                                                <a data-orbit-link="foto-{{$post->idPost}}-{{$foto->idFotoPost}}" class="small button"></a>
                                                @endforeach
                                            </div>
                                            <ul class="orbit" data-tipo="post" data-orbit data-options="circular:true;">
                                                @foreach($post->fotos as $foto)
                                                <li data-orbit-slide="foto-{{$post->idPost}}-{{$foto->idFotoPost}}">
                                                    <img data-id="{{$foto->idFotoPost}}" src="{{ URL::asset('img\\db_imgs\\posts\\'.$foto->foto) }} "/>
                                                </li>
                                                @endforeach        
                                            </ul>
                                        </div>
                                        <div class="small-4 columns">
                                            <div class="row">
                                                <div class="foto-comment">
                                                    <div class="confiable" data-tipo="imagen_post" data-id="">
                                                        {{Lang::get('messages.perfPostLblConfiable')}}:
                                                        <a href="#" data-conf="1">
                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}">
                                                                <img src="{{ URL::asset('img\\red_1.png') }}">
                                                            </span> 
                                                            [<span class="votos-totales">0</span>]
                                                        </a>
                                                        <a href="#" data-conf="0">
                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}">
                                                                <img src="{{ URL::asset('img\\verde_1.png') }}">
                                                            </span>
                                                            [<span class="votos-totales">0</span>]
                                                        </a>
                                                    </div>
                                                    <div class="large-12 columns">
                                                        <div class="com_likes isHidden" style="margin-bottom:5px;">
                                                            <a class="votos_mostrar"><i class="icon-thumbs-up" style="color:#ae3e34;  font-size: 28px;"></i></a>                                                        
                                                            <div class="votosPost formulario_alinear votos-container Hidden">
                                                                <div class="goodPost formulario_alinear">
                                                                    <a href="#" class="vote-foto-post" data-tipo="corazon"><img src="../img/emoticon/5.gif"><p class="num_rank">0</p></a>
                                                                    <a href="#" class="vote-foto-post" data-tipo="estrella"><img src="../img/emoticon/4.gif"><p class="num_rank">0</p></a>
                                                                    <a href="#" class="vote-foto-post" data-tipo="blike"><img src="../img/emoticon/3.gif"><p class="num_rank">0</p></a>
                                                                    <a href="#" class="vote-foto-post" data-tipo="carita"><img src="../img/emoticon/2.gif"><p class="num_rank">0</p></a>
                                                                    <a href="#" class="vote-foto-post" data-tipo="cake"><img src="../img/emoticon/1.gif"><p class="num_rank">0</p></a>
                                                                </div>
                                                                <div class="badPost formulario_alinear">
                                                                    <a href="#" class="vote-foto-post" data-tipo="caca"><img src="../img/emoticon/10.gif"><p class="num_rank">0</p></a>
                                                                    <a href="#" class="vote-foto-post" data-tipo="craneo"><img src="../img/emoticon/9.gif"><p class="num_rank">0</p></a>
                                                                    <a href="#" class="vote-foto-post" data-tipo="bug"><img src="../img/emoticon/8.gif"><p class="num_rank">0</p></a>
                                                                    <a href="#" class="vote-foto-post" data-tipo="gota"><img src="../img/emoticon/7.gif"><p class="num_rank">0</p></a>
                                                                    <a href="#" class="vote-foto-post" data-tipo="enojo"><img src="../img/emoticon/6.gif"><p class="num_rank">0</p></a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="small-12 columns">
                                                        <textarea placeholder=""></textarea>
                                                    </div>
                                                    <div class="small-12 columns">
                                                        <button type="button" class="btn-comentar button tiny expand" data-mod="post" data-idpost="{{$post->idPost}}">Comment</button>
                                                    </div>
                                                </div>
                                                <div class="large-12 columns gv-comentarios">
                                                </div>
                                            </div>
                                        </div>              
                        <!-- TERMINA SILDER DE IMAGENES MINIATURA -->
                                        <a class="close-reveal-modal">&#215;</a>
                                    </div>
                                </div>
                                <div class="clear"></div>
                                <div class="subpost_area" >
                                    <!--div class="seccion_sub_com">
                                        <div class="sub_coment_titulo">
                                            <h4 >{{Lang::get('messages.perfPorLblConfesion')}}</h4>
                                        </div>
                                    </div-->
                                    <ul class="gv-subcomentarios"  style="margin-top:2em;padding:0em 2em 0.8em 2em;">
                                        @foreach($post->subcomentarios as $subcomentario)
                                        <li class="cien">
                                            <div class="noventa">
                                                <h3 style="font-size:18px; color:red;"> <strong style="text-transform: capitalize;">{{$subcomentario->usuario}}</strong></h3>
                                                <!--label>{{$subcomentario->created_at}}</label-->
                                            </div>
                                            @if(strlen($subcomentario->comentario) > 0)
                                            <div class="noventa" style="margin-bottom:15px">
                                                <div class="noventa">
                                                    <p  style="color:black;margin-left0;">{{$subcomentario->comentario}}</p>
                                                </div>
                                            </div>
                                            @endif
                                            @if(strlen($subcomentario->link_evi) > 0)
                                            <div class="noventa " style="text-align:center; margin-bottom:2em;margin-top:1em;">
                                                <a style="font-size:15px; word-wrap: break-word; " href="{{$subcomentario->link_evi}}" target="_blank">
                                                   {{substr($subcomentario->link_evi, 0, 80)}}...
                                                </a>
                                            </div>
                                            @endif
                                            <div class="cien">
                                                @if(strlen($subcomentario->video) > 0)
                                                <div class="" style="text-align:center; margin-bottom:1.5em;">
                                                    <iframe width="50%" height="330" src="//www.youtube.com/embed/{{$subcomentario->video}}" frameborder="0" allowfullscreen></iframe>
                                                    <div class="confiable isHidden" data-tipo="vid_subpost" data-id="{{ $subcomentario->idSubcomentario }}">
                                                        {{Lang::get('messages.perfPostLblConfiable')}}::
                                                        <a href="#" data-conf="1">
                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}"><img src="{{ URL::asset('img\\red_1.png') }}"></span>
                                                            [<span class="votos-totales">{{ $subcomentario->com_siconf }}</span>]
                                                        </a>
                                                        <a href="#" data-conf="0">
                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}"><img src="{{ URL::asset('img\\verde_1.png') }}"></span> 
                                                            [<span class="votos-totales">{{ $subcomentario->com_noconf }}</span>]
                                                        </a>
                                                    </div>
                                                    <div class="com_likes isHidden" style="margin-bottom:5px;">
                                                        <a class="votos_mostrar"><i class="icon-thumbs-up" style="color:#ae3e34;  font-size: 28px;"></i></a>
                                                        <div class="votosPost formulario_alinear votos-container Hidden" data-tipo="2">
                                                            <div class="goodPost formulario_alinear">                                                   
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="corazon"><img src="../img/emoticon/5.gif"><p class="num_rank">{{ $subcomentario->vid_corazon }}</p></a>
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="estrella"><img src="../img/emoticon/4.gif"><p class="num_rank">{{ $subcomentario->vid_estrella }}</p></a>
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="blike"><img src="../img/emoticon/3.gif"><p class="num_rank">{{ $subcomentario->vid_blike }}</p></a>
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="carita"><img src="../img/emoticon/2.gif"><p class="num_rank">{{ $subcomentario->vid_carita }}</p></a>
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="cake"><img src="../img/emoticon/1.gif"><p class="num_rank">{{ $subcomentario->vid_cake }}</p></a>
                                                            </div>
                                                            <div class="badPost formulario_alinear">
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="caca"><img src="../img/emoticon/10.gif"><p class="num_rank">{{ $subcomentario->vid_caca }}</p></a>
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="craneo"><img src="../img/emoticon/9.gif"><p class="num_rank">{{ $subcomentario->vid_craneo }}</p></a>
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="bug"><img src="../img/emoticon/8.gif"><p class="num_rank">{{ $subcomentario->vid_bug }}</p></a>
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="gota"><img src="../img/emoticon/7.gif"><p class="num_rank">{{ $subcomentario->vid_gota }}</p></a>
                                                                <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="enojo"><img src="../img/emoticon/6.gif"><p class="num_rank">{{ $subcomentario->vid_enojo }}</p></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                @endif
                                                @foreach($subcomentario->fotos as $fotos)
                                                <div class="gallery_img"style="text-align:center;">
                                                    <a href="" data-reveal-id="slider_subcom_{{$subcomentario->idSubcomentario}}" data-id="{{$fotos->idSubcomentarioFoto}}" data-idpost="{{$post->idPost}}" class="open-modal foto-subcom">
                                                       <img src="{{ URL::asset('img\\db_imgs\\posts\\'.$fotos->imagen) }}"/>
                                                    </a>
                                                </div>
                                                @endforeach
                                                <div class="confiable" data-tipo="com_subpost" data-id="{{ $subcomentario->idSubcomentario }}">
                                                    {{Lang::get('messages.perfPostLblConfiable')}}:
                                                    <a href="#" data-conf="1">
                                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}">
                                                            <img src="{{ URL::asset('img\\red_1.png') }}">
                                                        </span>
                                                        [<span class="votos-totales">{{ $subcomentario->com_siconf }}</span>]
                                                    </a>
                                                    <a href="#" data-conf="0">
                                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}">
                                                            <img src="{{ URL::asset('img\\verde_1.png') }}">
                                                        </span>
                                                        [<span class="votos-totales">{{ $subcomentario->com_noconf }}</span>]
                                                    </a>
                                                </div>
                                                <div class="com_likes isHidden" style="margin-bottom:5px;;">
                                                    <a class="votos_mostrar">
                                                        <i class="icon-thumbs-up" style="color:#ae3e34;  font-size: 28px;"></i>
                                                    </a>
                                                    <div class="votosPost formulario_alinear votos-container Hidden" data-tipo="1">                                         
                                                        <div class="goodPost formulario_alinear">                                                   
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="corazon"><img src="../img/emoticon/5.gif"><p class="num_rank">{{ $subcomentario->com_corazon }}</p></a>
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="estrella"><img src="../img/emoticon/4.gif"><p class="num_rank">{{ $subcomentario->com_estrella }}</p></a>
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="blike"><img src="../img/emoticon/3.gif"><p class="num_rank">{{ $subcomentario->com_blike }}</p></a>
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="carita"><img src="../img/emoticon/2.gif"><p class="num_rank">{{ $subcomentario->com_carita }}</p></a>
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="cake"><img src="../img/emoticon/1.gif"><p class="num_rank">{{ $subcomentario->com_cake }}</p></a>
                                                        </div>
                                                        <div class="badPost formulario_alinear">
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="caca"><img src="../img/emoticon/10.gif"><p class="num_rank">{{ $subcomentario->com_caca }}</p></a>
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="craneo"><img src="../img/emoticon/9.gif"><p class="num_rank">{{ $subcomentario->com_craneo }}</p></a>
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="bug"><img src="../img/emoticon/8.gif"><p class="num_rank">{{ $subcomentario->com_bug }}</p></a>
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="gota"><img src="../img/emoticon/7.gif"><p class="num_rank">{{ $subcomentario->com_gota }}</p></a>
                                                            <a href="#" data-id="{{ $subcomentario->idSubcomentario }}" class="vote-rank-subpost-video" data-tipo="enojo"><img src="../img/emoticon/6.gif"><p class="num_rank">{{ $subcomentario->com_enojo }}</p></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                            
    <!--SLIDER MODAL SUB COMENTARIO -->
                                                <div id="slider_subcom_{{$subcomentario->idSubcomentario}}" class="reveal-modal fotos-modal" data-reveal>
                                                    <div class="titulo_barra">
                                                        <h2>{{Lang::get('messages.perfPostLblGaleriaComentarios')}}</h2>
                                                    </div>
                                                    <div class="row">
                                                        <div class="small-8 columns slider_cuadro">
                                                            <div class="orbit-link isHidden">
                                                                @foreach($subcomentario->fotos as $fotos)
                                                                <a data-orbit-link="fotoSubcom-{{$fotos->idSubcomentarioFoto}}" class="small button"></a>
                                                                @endforeach
                                                            </div>
                                                            <ul data-orbit class="orbit" data-tipo="subcom" data-options="circular:true;">
                                                                @foreach($subcomentario->fotos as $fotos)
                                                                <li data-orbit-slide="fotoSubcom-{{$fotos->idSubcomentarioFoto}}">
                                                                    <img data-id="{{$fotos->idSubcomentarioFoto}}" src="{{ URL::asset('img\\db_imgs\\posts\\'.$fotos->imagen) }}"/>
                                                                </li>
                                                                @endforeach
                                                            </ul>
                                                        </div>
                                                        <div class="small-4 columns foto-comment">
                                                            <div class="confiable" data-tipo="img_subpost" data-id="">
                                                                {{Lang::get('messages.perfPostLblConfiable')}}::
                                                                <a href="#" data-conf="1">
                                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}">
                                                                        <img src="{{ URL::asset('img\\red_1.png') }}">
                                                                    </span>
                                                                    [<span class="votos-totales">0</span>]
                                                                </a>
                                                                <a href="#" data-conf="0">
                                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionBuena')}}">
                                                                        <img src="{{ URL::asset('img\\verde_1.png') }}">
                                                                    </span>
                                                                    [<span class="votos-totales">0</span>]
                                                                </a>
                                                            </div>
                                                            <div class="row">
                                                                <div class="large-12 columns">
                                                                    <div class="com_likes isHidden" style="margin-bottom:5px;">
                                                                        <a class="votos_mostrar">
                                                                            <i class="icon-thumbs-up" style="color:#ae3e34;  font-size: 28px;"></i>
                                                                        </a>                                                        
                                                                        <div class="votosPost formulario_alinear votos-container Hidden">
                                                                            <div class="goodPost formulario_alinear">
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="corazon"><img src="../img/emoticon/5.gif"><p class="num_rank">0</p></a></span>
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="estrella"><img src="../img/emoticon/4.gif"><p class="num_rank">0</p></a></span>
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="blike"><img src="../img/emoticon/3.gif"><p class="num_rank">0</p></a></span>
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="carita"><img src="../img/emoticon/2.gif"><p class="num_rank">0</p></a></span>
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="cake"><img src="../img/emoticon/1.gif"><p class="num_rank">0</p></a></span>
                                                                            </div>
                                                                            <div class="badPost formulario_alinear">
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="caca"><img src="../img/emoticon/10.gif"><p class="num_rank">0</p></a></span>
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="craneo"><img src="../img/emoticon/9.gif"><p class="num_rank">0</p></a></span>
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="bug"><img src="../img/emoticon/8.gif"><p class="num_rank">0</p></a></span>
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="gota"><img src="../img/emoticon/7.gif"><p class="num_rank">0</p></a></span>
                                                                                <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-subfoto" data-tipo="enojo"><img src="../img/emoticon/6.gif"><p class="num_rank">0</p></a></span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="small-12 columns foto-comment">
                                                                    <div class="small-12 columns">
                                                                        <textarea placeholder=""></textarea>
                                                                    </div>
                                                                    <div class="small-12 columns">
                                                                        <button type="button" class="btn-comentar button tiny expand" data-mod="subcom">{{Lang::get('messages.perfPostLblComentarios')}}</button>
                                                                    </div>
                                                                </div>
                                                                <div class="small-12 columns gv-comentarios">
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a class="close-reveal-modal">&#215;</a>
                                                </div>
    <!-- TERMINA SLIDER -    -   -   -     -    -    -    -   -->
                                            </div>
                                        </li>
                                        @endforeach
                                    </ul>
                                    <div class="alto">
                                        <div class="subcomentarios-posts" data-id="{{$post->idPost}}">
                                            <div class="cuarenta" style="float:right;padding-left:3em;margin-bottom:8px;">
                                                <div class="post_foot">
                                                    <a class="confSec">
                                                        <img data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaTexto')}}" src="{{ URL::asset('img\\coment2.png') }}">
                                                    </a>
                                                </div>
                                                <div class="post_foot borde_img">
                                                    <a class="fotoSec">
                                                        <img data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaImagen')}}" src="{{ URL::asset('img\\img1.png') }}">
                                                    </a>
                                                </div>
                                                <div class="post_foot borde_img">
                                                    <a class="vidSec">
                                                        <img data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaYoutube')}}" src="{{ URL::asset('img\\video1.png') }}">
                                                    </a>
                                                </div>
                                                <div class="post_foot borde_img">
                                                    <a class="linkSec">
                                                        <img data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaEnlaces')}}" src="{{ URL::asset('img\\link1.png') }}">
                                                    </a>
                                                </div>
                                            </div>
                                                                        <!--div class="postear_box_2 ">
                                                                        <a class="confSec">
                                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaTexto')}}">
                                                                                <i class="icon-chat"></i>
                                                                            </span>
                                                                        </a>
                                                                        <a class="fotoSec">
                                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaImagen')}}">
                                                                                <i class="icon-fotos"></i>
                                                                            </span>
                                                                        </a>
                                                                        <a class="vidSec">
                                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaYoutube')}}">
                                                                                <i class="icon-camara"></i> 
                                                                            </span>
                                                                        </a>
                                                                        <a class="linkSec">
                                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaEnlaces')}}">
                                                                                <i class="icon-link"></i>   
                                                                            </span>
                                                                        </a>
                                                                    </div-->
                                                            
                                                                    <!--div class="large-4 columns">
                                                                        <div class="compartir_redes ">  
                                                                            <div class="fb-share-button" style="margin-right:20px; vertical-align:top;"  data-layout="button_count"></div>
                                                                                <a href="https://twitter.com/share" class="twitter-share-button">{{Lang::get('messages.perfPostLblTweet')}}</a>
                                                                        </div> 
                                                                    </div-->
                                                        
    <!--    -   -  - LIKE POST CONFIABLE GLOBAL - -  - - - - - -->
                                            <div class="large-2 columns">
                                                <a href="" data-reveal-id="comentBox">
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltEvidenciaPrivado')}}"><i class="icon-chat comm-post" data-tipo="1" data-id="{{$post->idPost}}" style="font-size:25px"></i></span>                                           
                                                </a>
                                            </div>
                                            <form class="sb_coment form-subcomentario " enctype="multipart/form-data" data-abide>
                                                <div class="small-12 columns">
                                                    <div  class="small-12 columns conSec Hidden ">
                                                        <label>
                                                            <small></small>
                                                            <textarea style="overflow:auto;width:600px; min-height:90px" name="comentario" placeholder="{{Lang::get('messages.perfPorLblConfesion')}} {{Lang::get('messages.perfPorLblRequerido')}}"required></textarea>
                                                        </label>
                                                        <small class="error">{{Lang::get('messages.perfPostLblConfesionVal')}}</small>
                                                    </div>
                                                </div>
                                                <div class="small-12 columns">
                                                    <div class="small-12 columns linkerSec Hidden">
                                                        <label>
                                                            <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionRelacionado')}}"> </span> 
                                                            <input type="text" placeholder="{{Lang::get('messages.perfPorLblEnlace1')}}" name="link_evi" pattern="url"/>
                                                        </label>
                                                        <small class="error">{{Lang::get('messages.perfPorLblEnlace1Example')}}</small>
                                                    </div>
                                                </div>
                                                <div class="small-12 columns">
                                                    <div  class="small-12 columns viSec Hidden">
                                                        <label>
                                                            <input type="text" name="video" placeholder="{{Lang::get('messages.perfPorLblEvidenciaVideo')}} - {{Lang::get('messages.perfPostTltEvidenciaLinkYoutube')}}"/>
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="small-12 columns">
                                                    <div  class="small-12 columns fotSec Hidden">
                                                        <label>
                                                            {{Lang::get('messages.perfPorLblEvidenciaFoto')}}
                                                            <input style="height:40px"type="file" id="file" name="files[]" multiple="multiple" accept="image/*" />
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="small-12 columns btn_sub_ev Hidden" id="">
                                                    <label>
                                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltInformacionGuardar')}}">
                                                            <button type="button" class="btn_upload btn-subcomentar btnSec "style="background-color: #ae3e34 ;">{{Lang::get('messages.perfPostLblSubir')}}</button>
                                                        </span>
                                                    </label>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endforeach   
                      </div>
                  </div>
                  <!-- Comments termina--> 
                  
                    <div class="loading isHidden">
                        <span>Loading
                            {{ HTML::image('img/load.gif', 'Loading') }}
                        </span>
                    </div>
                            <!-- SILDER DE IMAGENES MINIATURA -->
                    <div id="sliderGaleria" class="reveal-modal" data-reveal>
                        <div class="titulo_barra">
                            <h2>{{Lang::get('messages.perfPostModFotoExtra')}}</h2>
                        </div>
                        <div class="small-8 columns"style="margin-left:16%">                   
                            <ul data-orbit style="">
                            @foreach($data['fotos'] as $evidencia)
                                <li>
                                    <img src="{{ URL::asset('img\\db_imgs\\publicas\\'.$evidencia->foto) }}"/>
                                </li>
                            @endforeach
                                <li>
                                    <img  src="{{ URL::asset('img\\db_imgs\\'.$data['perfil']->foto) }}"/>
                                </li>
                            </ul>               
                        </div>
                        
                                    <!-- TERMINA SILDER DE IMAGENES MINIATURA -->
                        <a class="close-reveal-modal">&#215;</a>
                    </div>
                    <a class="exit-off-canvas"></a>
                                    <!-- MODAL SLIDER EVIDENCIAS -->
                    <div id="sliderFotoPerfil" class="reveal-modal" data-reveal>
                        <div class="titulo_barra">
                            <h2>{{Lang::get('messages.perfPosModFotoPrincipal')}}</h2>
                        </div>
                        
                        <div class="slider_cuadro_fotos_perfil">                   
                            <ul data-orbit style="">
                                <li>
                                    <img src="{{ URL::asset('img\\db_imgs\\'.$data['perfil']->foto) }}"/>
                                </li>
                            </ul>               
                        </div>
                        
                        <!-- TERMINA SILDER DE IMAGENES MINIATURA -->
                        <a class="close-reveal-modal">&#215;</a>
                    </div>
                    <a class="exit-off-canvas"></a>
                            <!-- MODAL SLIDER EVIDENCIAS -->

                    <div id="sliderEvidencia" class="reveal-modal fotos-modal" data-reveal>
                        <div class="titulo_barra">
                            <h2>{{Lang::get('messages.perfPostModGaleriaEvidencia')}}</h2>
                        </div>
                    
                        <div class="row">
                            <div class="small-8 columns slider_cuadro">
                                <div class="orbit-link isHidden">
                                    @foreach($data['evidencias'] as $evidencia)
                                    <a data-orbit-link="fotoEvi-{{$evidencia->idMedia}}" class="small button"></a>
                                    @endforeach
                                </div>
                                <ul data-orbit class="orbit" data-tipo="media" data-options="circular:true;">
                                @foreach($data['evidencias'] as $evidencia)
                                    @if ($evidencia->tipo == 2)
                                    <li data-orbit-slide="fotoEvi-{{$evidencia->idMedia}}">
                                        <img data-id="{{$evidencia->idMedia}}" src="{{ URL::asset('img\\db_imgs\\evidencias\\'.$evidencia->foto) }}"/>
                                    </li>
                                    @endif
                                @endforeach
                                </ul>
                            </div>

                            <div class="small-4 columns">
                                <div class="confiable" data-tipo="imagen_evi" data-id="">
                                {{Lang::get('messages.perfPostLblConfiable')}}:
                                    <a href="#" data-conf="1">
                                        <img src="{{ URL::asset('img\\red_1.png') }}">
                                        [<span class="votos-totales">0</span>]
                                    </a>
                                    <a href="#" data-conf="0">
                                        <img src="{{ URL::asset('img\\verde_1.png') }}">
                                        [<span class="votos-totales">0</span>]
                                    </a>
                                </div>
                                <div class="row">
                                    <div class="large-12 columns">
                                        <div class="com_likes isHidden" style="margin-bottom:5px;">
                                            <a class="votos_mostrar"><i class="icon-thumbs-up" style="color:#ae3e34;  font-size: 28px;"></i></a>                                                        
                                            <div class="votosPost formulario_alinear votos-container Hidden">
                                                <div class="goodPost formulario_alinear">
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="corazon"><img src="../img/emoticon/5.gif"><p class="num_rank">0</p></a></span>
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="estrella"><img src="../img/emoticon/4.gif"><p class="num_rank">0</p></a></span>
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="blike"><img src="../img/emoticon/3.gif"><p class="num_rank">0</p></a></span>
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="carita"><img src="../img/emoticon/2.gif"><p class="num_rank">0</p></a></span>
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="cake"><img src="../img/emoticon/1.gif"><p class="num_rank">0</p></a></span>
                                                </div>

                                                <div class="badPost formulario_alinear">
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="caca"><img src="../img/emoticon/10.gif"><p class="num_rank">0</p></a></span>
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="craneo"><img src="../img/emoticon/9.gif"><p class="num_rank">0</p></a></span>
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="bug"><img src="../img/emoticon/8.gif"><p class="num_rank">0</p></a></span>
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="gota"><img src="../img/emoticon/7.gif"><p class="num_rank">0</p></a></span>
                                                    <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-rank-media" data-tipo="enojo"><img src="../img/emoticon/6.gif"><p class="num_rank">0</p></a></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="small-12 columns foto-comment">
                                        <div class="small-12 columns">
                                            <textarea placeholder=""></textarea>
                                        </div>
                                        <div class="small-12 columns">
                                            <button type="button" class="btn-comentar button tiny expand" data-mod="media">Comment</button>
                                        </div>
                                    </div>
                                    <div class="small-12 columns gv-comentarios">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="close-reveal-modal">&#215;</a>
                    </div>  <!-- TERMINA MODAL SLIDER EVIDENCIAS -->
                    <a class="exit-off-canvas"></a>
            <!-- MODAL DE LOS VOTOS DEL PERFIL INCLUIRLOS EMOTICONES           -->
                    <div id="votosPerfilBox" class="reveal-modal" data-reveal>
                        <div class="titulo_barra">
                            <h2>{{Lang::get('messages.perfPostModClasificacion')}}</h2>
                            <small>{{Lang::get('messages.perfPostModClasificacionConsejo')}}</small>
                        </div>
                        <div class="row" >
                            <div class="com_likes isHidden" style="margin-bottom:0px; margin-left:10px;">
                                <div class="votosPost formulario_alinear votos-container  ">
                                    {{Lang::get('messages.perfPostModClasificacionBuena')}}.-
                                    <div class="goodPost formulario_alinear">
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="corazon"><img src="../img/emoticon/5.gif"><p class="num_rank">{{$data['perfil']->per_corazon}}</p></a></span>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="estrella"><img src="../img/emoticon/4.gif"><p class="num_rank">{{$data['perfil']->per_estrella}}</p></a></span>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="blike"><img src="../img/emoticon/3.gif"><p class="num_rank">{{$data['perfil']->per_blike}}</p></a></span>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="carita"><img src="../img/emoticon/2.gif"><p class="num_rank">{{$data['perfil']->per_carita}}</p></a></span>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="cake"><img src="../img/emoticon/1.gif"><p class="num_rank">{{$data['perfil']->per_cake}}</p></a></span>
                                    </div>
                                    {{Lang::get('messages.perfPostModClasificacionMala')}}.-    
                                    <div class="badPost formulario_alinear">
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="caca"><img src="../img/emoticon/10.gif"><p class="num_rank">{{$data['perfil']->per_caca}}</p></a></span>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="craneo"><img src="../img/emoticon/9.gif"><p class="num_rank">{{$data['perfil']->per_craneo}}</p></a></span>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="bug"><img src="../img/emoticon/8.gif"><p class="num_rank">{{$data['perfil']->per_bug}}</p></a></span>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="gota"><img src="../img/emoticon/7.gif"><p class="num_rank">{{$data['perfil']->per_gota}}</p></a></span>
                                        <span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.perfPostTltConfesionNeutra')}}"><a href="#" class="vote-perfil" data-id="{{$data['perfil']->idPerfil}}" data-tipo="enojo"><img src="../img/emoticon/6.gif"><p class="num_rank">{{$data['perfil']->per_enojo}}</p></a></span>
                                    </div>
                                </div>
                            </div>
                            <div class="large-12 formulario_alinear cons">
                                <p style="margin-left:11.5em;margin-right:22px;">5pts</p>
                                <p class="margencito">4pts</p>
                                <p class="margencito">3pts</p>
                                <p class="margencito">2pts</p>
                                <p style="margin-right:9em;">1pts</p>
                            
                                <p style="margin-left:12.7em;margin-right:22px;">5pts</p>
                                <p class="margencito">4pts</p>
                                <p class="margencito">3pts</p>
                                <p class="margencito">2pts</p>
                                <p class="margencito">1pts</p>
                            </div>
                        </div>

                        <a class="close-reveal-modal">&#215;</a>
                    </div><!-- TERMINA MODAL DE LOS VOTOD DE PERFIL -->
                            <!-- MODAL DE LOS COMENTARIOS DE CADA POST EN EL PERFIL -->
                    <div id="comentBox" class="reveal-modal" data-reveal>
                        <div class="titulo_barra">
                            <h2>{{Lang::get('messages.perfPostModComentarios')}}</h2>
                        </div>
                        <div class="row "><!-- cargar aqui los coments-->
                        </div>
                        <div class="row post-comment">
                            <div class="small-12 columns">
                                <textarea placeholder=""></textarea>
                            </div>
                            <div class="small-12 columns">
                                <button type="button" class="btn-comentar button tiny expand">{{Lang::get('messages.perfPostModComentario')}}</button>
                            </div>
                        </div>
                        
                        <div class="row gv-comentarios-post">
                        </div>

                        <a class="close-reveal-modal">&#215;</a>
                    </div><!-- TERMINA MODAL DE LOS COMENTARIOS -->
                    <a class="exit-off-canvas"></a>

            </div>
        </div>

    
        
        <div class="clear"></div>

   

		<div id="fb-root"></div>
	<script>
    
		$(document).on('ready', inicio_per);

		function inicio_per () {
			$('.btn-file-post-evi').on('click', function(e){
				debugger
				var file = $(e.currentTarget);
				var form = file.parents('.postear-post-evi');
				var id = form.data('idpost');

				var formData = new FormData(form[0]);
	        
				$('.loading').removeClass('isHidden');
				var xhr = $.ajax({
		            url: url + 'evidencias/mas/' + id,  //Server script to process data
		            type: 'POST',
		            success: function (argument) {
		            	window.location.reload();
		            },
		            error: function(xhr){debugger},
		            data: formData,
		            dataType: "json",
		            cache: false,
		            contentType: false,
		            processData: false
		        });

		        xhr.always(function() {
		        	$('.loading').addClass('isHidden');
		        });
			});
			$('.btn-voto-amor').on('click', function(e) {
				e.preventDefault();
                debugger
				var tipo = $(e.currentTarget).data('tipo');
				var id = $(e.currentTarget).data('id');

				$.post(url + 'vote_amor', {id:id, tipo:tipo}).done(function(data) {
					var elem = $(e.currentTarget).find('.total-lovehate');
					var prevotos = elem.text();

					var votos = parseInt(prevotos, 10);
					if(votos === NaN)
						votos = 0;

					if(data == 1)
						elem.text(votos + 1);
				});
			});

			$('.btn-apodo-publica').on('click', function(e) {
				var elem = $(e.currentTarget);
				var parent = elem.parents('.pnl-apodos-publicos');

				var id = parent.data('id');
				var apodo = parent.find('input').val();
				if(apodo.length == 0)
					return;

				$.post(url + 'apodo_publico', {id:id, apodo:apodo}).done(function(data) {
					parent.find('input').val('');
					if(data == 1)
						window.location.reload();
				});
			});

			$('.btn-nombre-publica').on('click', function(e) {
				var elem = $(e.currentTarget);
				var parent = elem.parents('.pnl-nombres-publicos');

				var id = parent.data('id');
				var nombre = parent.find('input').val();
				if(nombre.length == 0)
					return;

				$.post(url + 'nombre_publico', {id:id, nombre:nombre}).done(function(data) {
					parent.find('input').val('');
					if(data == 1)
						window.location.reload();
				});
			});

			$('.btn-mascara-publica').on('click', function(e) {
				var elem = $(e.currentTarget);
				var parent = elem.parents('.pnl-mascaras-publicas');

				var id = parent.data('id');
				var mascara = parent.find('input.tt-input').val();
				if(mascara.length == 0)
					return;

				$.post(url + 'mascara_publica', {id:id, mascara:mascara}).done(function(data) {
					parent.find('input').val('');
					if(data == 1)
						window.location.reload();
				});
			});

			$('.btn-red-publica').on('click', function(e) {
				var elem = $(e.currentTarget);
				var parent = elem.parents('.pnl-redes-publicas');

				var id = parent.data('id');
				var mascara = parent.find('input').val();
				if(mascara.length == 0)
					return;

				$.post(url + 'red_publica', {id:id, mascara:mascara}).done(function(data) {
					parent.find('input').val('');
					if(data == 1)
						window.location.reload();
				});
			});

			$('.btn-perfil-publico').on('click', function(e) {
				var elem = $(e.currentTarget);
				var parent = elem.parents('.pnl-perfiles-publicos');

				var id = parent.data('id');
				var idR = parent.find('input').val();
				if(parseInt(idR, 10) > 0) {
					$.post(url + 'perfil_publico', {id:id, idR:idR}).done(function(data) {
						parent.find('input').val('');
						if(data == 1)
							window.location.reload();
					});
				}
			});

			var opcion = null;
			$(document).foundation();

			$('.form-subcomentario').on('valid', function (e) {
				e.preventDefault();
				SaveSubcom(e);
			}).on('submit', function (e) {
				e.preventDefault();
			});

			function SaveSubcom(e) {
				debugger
				var elem = $(e.currentTarget);
				var parent = elem.parents('.subcomentarios-posts');
				var txaComentario = parent.find('textarea');
				var form = parent.find('.form-subcomentario');

				var id = parent.data('id');
				/*var texto = txaComentario.val();*/

				var formData = new FormData(form[0]);
	        
				$('.loading').removeClass('isHidden');
				var xhr = $.ajax({
		            url: url + 'subcomentario/' + id,  //Server script to process data
		            type: 'POST',
		            success: function (argument) {
		            	window.location.reload();
		            },
		            error: function(xhr){debugger},
		            data: formData,
		            dataType: "json",
		            cache: false,
		            contentType: false,
		            processData: false
		        });

		        xhr.always(function() {
		        	$('.loading').addClass('isHidden');
		        });
			}

			$('.subcomentarios-posts .btn-subcomentar').on('click', function(e) {
				debugger
				var elem = $(e.currentTarget);
				var parent = elem.parents('.subcomentarios-posts');
				var txaComentario = parent.find('textarea');
				var form = parent.find('.form-subcomentario');

				form.submit();

				

				/*$.post(url + 'subcomentario', {id:id, texto:texto}).done(function(data) {
					var comm = ' \
					<li> \
						<label>' + data.usuario + '</label> \
						<p>' + texto + '</p> \
						<span>' + data.created_at.date + '</span> \
					</li>';

		   			parent.find('.gv-subcomentarios').prepend(comm);
					txaComentario.val('');
				});*/
			});

			$('.confiable a').on('click', function(e){
				e.preventDefault();
				debugger
				var elem = $(e.currentTarget);
				var id = elem.parent('div.confiable').data('id');
				var tipo = elem.parent('div.confiable').data('tipo');
				var conf = elem.data('conf');

				$.post(url + 'confiable', {id:id, tipo:tipo, conf:conf}).done(function(data) {
					debugger
					if(data == 1) {

						// var icon = '<i class="icon-tacha"></i> [';
						// if(conf == 1)
						// 	icon = '<i class="icon-checkmark"></i> [';

						// var texto = elem.text().substr(2);
						// texto = texto.substr(0, texto.length - 1);
						// texto = (parseInt(texto, 0) + 1) || 0;

						// elem.html(icon + texto + ']');

                        var span = elem.find('.votos-totales');
                        var suma = parseInt(span.text(), 10) + 1 || 0;
                        span.text(suma);
					}
				});
			});

			function loadComentarios(gvComentarios, gvVotos, gvConfiable, id, tipo) {
				gvComentarios.html('');

				var urlMod = '';
				switch(tipo) {
					case 'media':
						urlMod = 'comentariomedia/';
						break;
					case 'subcom':
						urlMod = 'comentariosub/';
						break;
					default:
						urlMod = 'comentariofoto/';
						break;
				}

				$.get(url + urlMod + id).done(function(data) {
					var comm = '';
					var comentarios = data.comentarios;
					var votos = data.votos;
					var confiable = data.confiable;

					for (var i = 0; i < comentarios.length; i++) {
						comm += '	<div class="small-12 columns" data-id="' + comentarios[i].idComentarioFoto + '"> \
										<div class="comentario"> \
							   				<label style="font-size:18px">' + comentarios[i].usuario + '</label> \
								   			<p>' + comentarios[i].comentario + '</p> \
								   			<span>' + comentarios[i].created_at + '</span> \
							   			</div> \
							   		</div>';
					}
					gvComentarios.html(comm);

					for (var key in votos) {
						var voto = parseInt(votos[key], 0) || 0;
						gvVotos.find('[data-tipo="' + key + '"] .num_rank').text(voto);
					}
					debugger
					if(confiable) {
						var siconf = parseInt(confiable.siconf, 0) || 0;
						var noconf = parseInt(confiable.noconf, 0) || 0;
						gvConfiable.find('[data-conf="1"] .votos-totales').html(siconf);
						gvConfiable.find('[data-conf="0"] .votos-totales').html(noconf);
					}
				});
			}

			$(".fotos-modal .orbit, .evidencia-modal .orbit").on("before-slide-change.fndtn.orbit", function(e) {
				var orbit = $(e.currentTarget);

				var id = orbit.find('li.active img').data('id');
				var parent = orbit.parents('.fotos-modal');
				var gvComentarios = parent.find('.gv-comentarios');

				parent.find('.foto-comment .btn-comentar').data('id', id);
				gvComentarios.html('');
			});

			$(".fotos-modal .orbit, .evidencia-modal .orbit").on("after-slide-change.fndtn.orbit", function(e, orbit) {
				var orbit = $(e.currentTarget);

				var id = orbit.find('li.active img').data('id');
				var parent = orbit.parents('.fotos-modal');
				var tipo = orbit.data('tipo');
				var gvVotos = parent.find('.votosPost');
				var gvConfiable = parent.find('.confiable');
				var gvComentarios = parent.find('.gv-comentarios');

				//parent.find('.foto-comment .btn-comentar').data('id', id);
				parent.find('.btn-comentar').data('id', id);
				parent.find('.btn-comentar').data('tipo', tipo);

				parent.find('.confiable').data('id', id);
				loadComentarios(gvComentarios, gvVotos, gvConfiable, id, tipo);
			});

			$('.foto-post-gallery').on('click', function(e){
				debugger
				var id = $(e.currentTarget).data('id');
			});

			$('.foto-evidencia').on('click', function(e){
				var parent = $('#' + $(e.currentTarget).data('revealId'));
				/*var tipo = parent.find('.orbit').data('tipo');

				var id = $(e.currentTarget).data('id');
				parent.find('.btn-comentar').data('id', id);
				parent.find('.btn-comentar').data('tipo', tipo);

				var orbitLink = parent.find('.orbit-link [data-orbit-link="fotoEvi-' + id + '"]');
				orbitLink.click();*/


				var orbit = parent.find('.orbit');

				var id = orbit.find('li.active img').data('id');
				var parent = orbit.parents('.fotos-modal');
				var tipo = orbit.data('tipo');
				var gvVotos = parent.find('.votosPost');
				var gvConfiable = parent.find('.confiable');
				var gvComentarios = parent.find('.gv-comentarios');

				parent.find('.btn-comentar').data('id', id);
				parent.find('.btn-comentar').data('tipo', tipo);
				parent.find('.confiable').data('id', id);

				loadComentarios(gvComentarios, gvVotos, gvConfiable, id, tipo);
			});

			$('.foto-subcom').on('click', function(e){
				var parent = $('#' + $(e.currentTarget).data('revealId'));
				/*var tipo = parent.find('.orbit').data('tipo');

				var id = $(e.currentTarget).data('id');
				parent.find('.btn-comentar').data('id', id);
				parent.find('.btn-comentar').data('tipo', tipo);

				var orbitLink = parent.find('.orbit-link [data-orbit-link="fotoSubcom-' + id + '"]');
				orbitLink.click();*/

				var orbit = parent.find('.orbit');

				var id = orbit.find('li.active img').data('id');
				var parent = orbit.parents('.fotos-modal');
				var tipo = orbit.data('tipo');
				var gvVotos = parent.find('.votosPost');
				var gvConfiable = parent.find('.confiable');
				var gvComentarios = parent.find('.gv-comentarios');

				parent.find('.btn-comentar').data('id', id);
				parent.find('.btn-comentar').data('tipo', tipo);
				parent.find('.confiable').data('id', id);

				loadComentarios(gvComentarios, gvVotos, gvConfiable, id, tipo);

				var id = $(e.currentTarget).data('id');
				var orbitLink = parent.find('.orbit-link [data-orbit-link="fotoSubcom-' + id + '"]');
				orbitLink.click();
			});

			$('.foto-post').on('click', function(e){
				debugger
				var parent = $('#' + $(e.currentTarget).data('revealId'));

				var prev = $(e.currentTarget).parent('div').prev();
				//if(prev.length == 0) {
					var orbit = parent.find('.orbit');

					var id = orbit.find('li.active img').data('id');
					var parent = orbit.parents('.fotos-modal');
					var tipo = orbit.data('tipo');
					var gvVotos = parent.find('.votosPost');
					var gvConfiable = parent.find('.confiable');
					var gvComentarios = parent.find('.gv-comentarios');

					parent.find('.btn-comentar').data('id', id);
					parent.find('.btn-comentar').data('tipo', tipo);
					parent.find('.confiable').data('id', id);

					loadComentarios(gvComentarios, gvVotos, gvConfiable, id, tipo);

					var idFoto = $(e.currentTarget).data('id');
					var idPost = $(e.currentTarget).data('idpost');
					var orbitLink = $('.orbit-link [data-orbit-link="foto-' + idPost + '-' + idFoto + '"]');
					orbitLink.click();
				/*}
				else {
					var id = $(e.currentTarget).data('id');
					var tipo = parent.find('.orbit').data('tipo');

					parent.find('.btn-comentar').data('id', id);
					parent.find('.btn-comentar').data('tipo', tipo);
					
					var idFoto = $(e.currentTarget).data('id');
					var idPost = $(e.currentTarget).data('idpost');
					

					var orbitLink = $('.orbit-link [data-orbit-link="foto-' + idPost + '-' + idFoto + '"]');
					orbitLink.click();
				}		*/	
			});

			$('.foto-comment .btn-comentar').on('click', function(e) {
				debugger
				var elem = $(e.currentTarget),
					txaComentario = elem.parents('.foto-comment').find('textarea'),
					texto = txaComentario.val();

				if(texto.length == 0) {
					txaComentario.focus();
					return;
				}

				var mod = elem.data('mod');
				var id = elem.data('id');
				$.post(url + 'comentariofoto/' + id + '/' + mod, {texto:texto}).done(function(data) {
					debugger
					var comm = '<div class="small-12 columns"> <div class="comentario"> <label style="font-size:18px">' + data.usuario + '</label> <p>' + texto + '</p> <span>' + data.created_at.date + '</span> </div> </div>';

		   			elem.parents('.reveal-modal').find('.gv-comentarios').prepend(comm);
					txaComentario.val('');
				});
			});

			$('.comm-post').on('click', function(e) {
				var id = $(e.currentTarget).data('id');
				var tipo = $(e.currentTarget).data('tipo');
				debugger
				$('.post-comment .btn-comentar').data('id', id);
				$('.post-comment .btn-comentar').data('tipo', tipo);
				$('.gv-comentarios-post').html('');

				$.get(url + 'comentariopost/' + id + '/' + tipo).done(function(data) {
					debugger;
					var comm = '';
					for (var i = 0; i < data.length; i++) {
						comm += '	<div class="small-12 columns" data-id="' + data[i].idComentarioPost + '"> \
										<div class="comentario"> \
							   				<label style="font-size:18px">' + data[i].usuario + '</label> \
								   			<p>' + data[i].comentario + '</p> \
								   			<span>' + data[i].created_at + '</span> \
							   			</div> \
							   		</div>';
					}
					$('.gv-comentarios-post').html(comm);
				});
			})

			$('.post-comment .btn-comentar').on('click', function(e) {
				var elem = $(e.currentTarget),
					txaComentario = elem.parents('.post-comment').find('textarea'),
					texto = txaComentario.val();

				if(texto.length == 0) {
					txaComentario.focus();
					return;
				}

				var idPost = elem.data('id');
				var tipo = elem.data('tipo');
				$.post(url + 'comentariopost/' + idPost + '/' + tipo, {texto:texto}).done(function(data) {
					debugger
					var comm = ' \
					<div class="small-12 columns"> \
						<div class="comentario"> \
			   				<label style="font-size:18px">' + data.usuario + '</label> \
				   			<p>' + texto + '</p> \
				   			<span>' + data.created_at.date + '</span> \
			   			</div> \
			   		</div>';

		   			$('.gv-comentarios-post').prepend(comm);
					txaComentario.val('');
				});
			});

			$('.vote-perfil').on('click', function(e) {                
				e.preventDefault();
                debugger
				var tipo = $(e.currentTarget).data('tipo');
				
				add(e, 'perfil', tipo);
			});

			$('.vote-foto-post').on('click', function(e) {
				e.preventDefault();
				var tipo = $(e.currentTarget).data('tipo');
				var parent = $(e.currentTarget).parents('.fotos-modal');
				var elem = parent.find('li.active img');
				$(e.currentTarget).data('id', elem.data('id'));
				
				add(e, 'fotos', tipo);
			});

			$('.vote-rank-subfoto').on('click', function(e) {
				e.preventDefault();
				var tipo = $(e.currentTarget).data('tipo');
				var parent = $(e.currentTarget).parents('.fotos-modal');
				var elem = parent.find('li.active img');
				$(e.currentTarget).data('id', elem.data('id'));
				
				add(e, 'subfoto', tipo);
			});

			$('.vote-rank-subvideo').on('click', function(e) {
				e.preventDefault();
				var tipo = $(e.currentTarget).data('tipo');
				var parent = $(e.currentTarget).parents('.fotos-modal');
				var elem = parent.find('li.active img');
				$(e.currentTarget).data('id', elem.data('id'));
				
				add(e, 'subfoto', tipo);
			});

			$('.vote-rank-post').on('click', function(e) {
				e.preventDefault();
				var tipo = $(e.currentTarget).data('tipo');
				var ptipo = $(e.currentTarget).parents('.votos-container').data('tipo');
				add(e, 'post', tipo, ptipo);
			});

			$('.vote-rank-subpost-video').on('click', function(e) {
				e.preventDefault();
				var tipo = $(e.currentTarget).data('tipo');
				var ptipo = $(e.currentTarget).parents('.votos-container').data('tipo');
				add(e, 'subpost', tipo, ptipo);
			});

			$('.vote-rank-media').on('click', function(e) {
				e.preventDefault();
				var tipo = $(e.currentTarget).data('tipo');
				var ptipo = $(e.currentTarget).parents('.votos-container').data('tipo');

				var parent = $(e.currentTarget).parents('.fotos-modal');
				var elem = parent.find('li.active img');
				$(e.currentTarget).data('id', elem.data('id'));
				add(e, 'media', tipo, ptipo);
			});

			$('.vote-post').on('click', function(e) {
                debugger
				e.preventDefault();
				var tipo = $(e.currentTarget).data('tipo');	
				var ptipo = $(e.currentTarget).parents('.votos-container').data('tipo');		
				add(e, 'rank', tipo, ptipo);
			});

			function add(e, mod, tipo, ptipo) {
				e.preventDefault();
				var elem = $(e.currentTarget);
				var id = elem.data('id');
				$.post(url + 'vote/' + mod + '/' + tipo + '/' + id + '/' + ptipo).done(function(data) {
					debugger
					var rank = elem.find('.num_rank');
					var votos = parseInt(rank.text(), 10);
					var suma = parseInt(data, 10);

                    //rank.text(votos + (suma == 0 ? 0 : 1));
					rank.text(votos + suma);
				});
			}

			$('.postearEv').on('valid', function (e) {
				e.preventDefault();
				SavePost();
			}).on('submit', function (e) {
				e.preventDefault();
			});

			function SavePost() {
                debugger
				var idPerfil = window.location.href.split('/').pop();

				var formData = new FormData($('.postearEv')[0]);
		        //formData.append("fdata", JSON.stringify({opcion:opcion}));
                var tipo = $('.postearEv > div > div:not(.Hidden):not(#botCampo)').data('tipo');
	        
		        $('.loading').removeClass('isHidden');
				var xhr = $.ajax({
		            url: url + 'post/' + idPerfil + '/' + tipo,  //Server script to process data
		            type: 'POST',
		            success: function (argument) {
		            	window.location.reload();
		            },
		            error: function(xhr){debugger},
		            data: formData,
		            dataType: "json",
		            cache: false,
		            contentType: false,
		            processData: false
		        });

		        xhr.always(function() {
		        	$('.loading').addClass('isHidden');
		        });
			}
			var jsonMa = {
				elem: $('input.typeahead[name="mascara"]'),
				dKey: 'nombre',
				modulo: 'mascaras',
			};
			typeahead(jsonMa);
			

			$('.btn-postear').on('click', function (e) {
                e.preventDefault();
				$('.postearEv').submit();			
			})


	            //MOSTRAR CAMPOS DE LLENADO DE SECRET BOX, CONFESION,LAS EVIDENCIAS Y CALIFICACION
			
			// ABRIR FORMULARIO DE CONFESION FOTOS VIDEO SECUNDARIO
			

			$('#mostrarMasca').on('click',function(){
				$("#masca").toggleClass('Hidden');
				$('#social').addClass("Hidden");
				$('#rela').addClass("Hidden");
				$("#apodosAdd").addClass('Hidden');
				$('#nombresAdd').addClass("Hidden");
				$('#fotosAdd').addClass("Hidden");

					
			
			});
			$('#mostrarSocial').on('click',function(){
				$("#social").toggleClass('Hidden');
				$('#masca').addClass("Hidden");
				$('#rela').addClass("Hidden");
				$("#apodosAdd").addClass('Hidden');
				$('#nombresAdd').addClass("Hidden");
				$('#fotosAdd').addClass("Hidden");

					
			
			});
			$('#mostrarRela').on('click',function(){
				$("#rela").toggleClass('Hidden');
				$('#masca').addClass("Hidden");
				$('#social').addClass("Hidden");
				$("#apodosAdd").addClass('Hidden');
				$('#nombresAdd').addClass("Hidden");	
				$('#fotosAdd').addClass("Hidden");

			
			});
			$('#mostrarApodos').on('click',function(){
				$("#apodosAdd").toggleClass('Hidden');
				$('#nombresAdd').toggleClass("Hidden");
				$('#social').addClass("Hidden");	
				$("#rela").addClass('Hidden');
				$('#masca').addClass("Hidden");
				$('#fotosAdd').addClass("Hidden");
			
			});
			$('#mostrarFotos').on('click',function(){
				$("#fotosAdd").toggleClass('Hidden');
				$("#apodosAdd").addClass('Hidden');
				$('#nombresAdd').addClass("Hidden");
				$('#social').addClass("Hidden");	
				$("#rela").addClass('Hidden');
				$('#masca').addClass("Hidden");
			
			});
			$('#fotosAddPost').on('click',function(){
				$("#campoFotosPost").toggleClass('isHidden');
				
			});
			$('.votos_mostrar').on('click', function(e) {
				$(this).siblings('.votosPost').toggleClass("Hidden");
			});
          

			// (function(d, s, id) {
			//   var js, fjs = d.getElementsByTagName(s)[0];
			//   if (d.getElementById(id)) return;
			//   js = d.createElement(s); js.id = id;
			//   js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.3";
			//   fjs.parentNode.insertBefore(js, fjs);
			// }(document, 'script', 'facebook-jssdk'));
		}

	</script>
    <script>
      $('img').error(function(){
                /*$(this).attr('src', 'img/mascarita.png');*/
            });
    </script>
    

	<!--script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script-->


@stop
