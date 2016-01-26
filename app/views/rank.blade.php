@extends('base')

@section('content')

	<div class="other_users_container ranks"><h1 class="create_profile_form_marker">{{Lang::get('messages.rankTOPRANK')}}</h1>
      
        <div class="teg ladron">
            <a href="#"> <p>{{Lang::get('messages.rankTit1')}}</p> </a>
            <a href="{{ URL::to('/rank/ladron') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg jefe">
            <a href="#"> <p class="sombreado">{{Lang::get('messages.rankTit2')}}</p> </a>
            <a href="{{ URL::to('/rank/jefe') }}" class="add_rank"> <span>View</span><img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg infiel">
            <a href="#"> <p class="sombreado">{{Lang::get('messages.rankTit3')}}</p> </a>
            <a href="{{ URL::to('/rank/escolar') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg corrupto">
            <a href="#"> <p class="sombreado">{{Lang::get('messages.rankTit4')}}</p> </a>
            <a href="{{ URL::to('/rank/corrupto') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg escolar">
            <a href="#"> <p>{{Lang::get('messages.rankTit5')}}</p> </a>
            <a href="{{ URL::to('/rank/infiel') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg altruista">
            <a href="#"> <p>{{Lang::get('messages.rankTit6')}}</p> </a>
            <a href="{{ URL::to('/rank/altruista') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg amigo">
            <a href="#"> <p>{{Lang::get('messages.rankTit7')}}</p> </a>
            <a href="{{ URL::to('/rank/amigo') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg socio">
            <a href="#"> <p>{{Lang::get('messages.rankTit8')}}</p> </a>
            <a href="{{ URL::to('/rank/socio') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg celebridad">
            <a href="#"> <p>{{Lang::get('messages.rankTit9')}}</p> </a>
            <a href="{{ URL::to('/rank/celebridad') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
        <div class="teg viola">
            <a href="#"> <p>{{Lang::get('messages.rankTit10')}}</p> </a>
            <a href="{{ URL::to('/rank/violador') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
          <div class="teg ninfo">
            <a href="#"> <p class="sombreado">{{Lang::get('messages.rankTit11')}}</p> </a>
            <a href="{{ URL::to('/rank/ninfomania') }}" class="add_rank"> <span>View</span> <img src="img/add_rank.png" width="15px"></a>
        </div>
    </div>

    <div class="other_users_container isHidden"><h1>{{Lang::get('messages.rankTOPRANK')}}</h1>
	  @foreach($toprank as $perfil)
	 	<div class="other_user">
            <div class="other_user_photo_area">
                <img src="{{ URL::asset('img\\db_imgs\\'.$perfil->foto) }}" width="164" height="164" >
                <div class="clear"></div>
                <div class="other_user_info">
                    <a href="profile_edit.html" class="unmask_link click_unmask_link">unmask</a>
                    <div class="other_user_info_central">
                        @if(strlen($perfil->mascaras) > 0)
                        <span class="thief">{{ $perfil->mascaras }}</span>
                        @endif
                        <div class="unmask_red">
                            <span>{{ $perfil->good }}</span>
                            <img src="img/anonymous.png" width="11" height="15"/>
                        </div>
                        <div class="unmask_grey">
                            <span>{{ $perfil->bad }}</span>
                            <img src="img/anonymous_red.png" width="11" height="15"/>
                        </div>
                        <ul class="info_list">
                            <li><span class="profile_info_left other_list_info">ID: </span> <span class="profile_info_right other_list_info">{{ $perfil->idPerfil }}</span></li>
                            
                        </ul>
                    </div>
                    <button onclick="window.location.href='{{ URL::to('perfil').'/'.$perfil->idPerfil }}'">View<img src="img/plus.png" /></button>
                </div>
            </div>
            <!--p class="other_user_name">{{ $perfil->perfil }}</p>
            <p class="other_user_location">{{ $perfil->pais }}</p-->
        </div>
      @endforeach
    </div> 

	<script type="text/javascript">
		$(document).ready(function() {
			/*<div class="large-12 columns">
				<h5>Comentario #1</h5>
				<p>Se pasó tiene una lanota y se roba y no haya ni como comprobar que no robó</p>
			</div> */

			$('.btnComentario').on('click', function(e) {
				e.preventDefault();
				var id = $(e.currentTarget).data('id');

				var gvComentarios = $('#verComentario').data('id', id).foundation('reveal', 'open').find('.gv-comentarios');
				$.get(url + 'comentario/' + id).done(function(data) {
					debugger;
					var comm = '';
					for (var i = 0; i < data.length; i++) {
						comm += '	<div class="large-12 columns"> \
										<h5><strong>' + data[i].nombre + ': </strong></h5>  \
										<p>' + data[i].comentario + '</p>  \
									</div>';
					}
					gvComentarios.html(comm);
				});
			});

			$('.btnComentar').on('click', function(e) {
				e.preventDefault();

				var elem = $(e.currentTarget);
				var parent = elem.parents('#verComentario');
				var id = parent.data('id');
				var txaComentario = parent.find('.txaComentario');
				var texto = txaComentario.val();
				var com_rank = parent.find('.com_rank');

				if(texto.length > 0)
					$.post(url + 'comentario/' + id, {texto:texto}).done(function(data) {
						txaComentario.val('');
						var comm = parseInt(com_rank.text(), 10);
						com_rank.text(comm + 1);
					});
				else
					txaComentario.focus();
			});

			$('.vote-rank').on('click', function(e) {
				var tipo = $(e.currentTarget).data('tipo');
				add(e, 'rank', tipo);
			});

			
			
        
		

				function add(e, mod, tipo) {
				e.preventDefault();
				debugger
				var elem = $(e.currentTarget);
				var id = elem.data('id');
				$.post(url + 'vote/' + mod + '/' + tipo + '/' + id).done(function(data) {
					var rank = elem.find('.num_rank');
					var votos = parseInt(rank.text(), 10);
					var suma = parseInt(data, 10);

					rank.text(votos + suma);
				});
			}
		});
	</script>
@stop