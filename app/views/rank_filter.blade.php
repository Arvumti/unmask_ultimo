@extends('base')

@section('content')
		<div class="other_users_container"><h1>Latest</h1>
	  @foreach($toprank as $perfil)
	 	<div class="other_user">
            <div class="other_user_photo_area">
                <img src="{{ URL::asset('img\\db_imgs\\'.$perfil->foto) }}" width="164" height="164" >
                <div class="clear"></div>
                <div class="other_user_info">
                    <a href="{{ URL::to('perfil').'/'.$perfil->idPerfil }}" class="unmask_link click_unmask_link">unmask</a>
                    <div class="other_user_info_central">
                        @if(strlen($perfil->mascaras) > 0)<!--tepone todas las mascaras que haya -->
                        <span class="thief">{{ $perfil->mascaras }}</span>
                        @endif
                    <div class="puntuacion">
                        <div class="unmask_red">
                            <span>{{ $perfil->good }} </span>
                            <img src="{{ URL::asset('img/anonymous.png')}}" width="11" height="15"/>
                        </div>
                        <div class="unmask_grey">
                            <span>{{ $perfil->bad }}</span>
                            <img src="{{ URL::asset('img/anonymous_red.png')}}" width="11" height="15"/>
                        </div>
                    </div>
                        <ul class="info_list">
                            <li><span class="profile_info_left other_list_info">ID: </span> <span class="profile_info_right other_list_info">{{ $perfil->idPerfil }}</span></li>
                        </ul>
                    </div>
                    <!--button onclick="window.location.href='{{ URL::to('perfil').'/'.$perfil->idPerfil }}'">View<img src="img/plus.png" /></button-->
                </div>
            </div>
            <p class="other_user_name">{{ $perfil->perfil }}</p>
            <p class="other_user_name">{{ $perfil->secret_pub }}</p>

            <!--p class="other_user_location">{{ $perfil->pais }}</p-->
        </div>
      @endforeach
    </div> 


	<!--div id="verComentario" class="reveal-modal" data-reveal>
		<div class="titulo_barra">
			<h3>Comentarios</h3>
		</div>
		<div class="row gv-comentarios">
		</div>
		<div class="large-12 columns">
					<textarea class="txaComentario" placeholder="Haz un comentario"></textarea>
		</div>
		<div class="small-2 columns">
					<a href="#" class="button postfix btnComentar">Comentar</a>
		</div>
		<a class="close-reveal-modal">&#215;</a>
	</div>

	<a class="exit-off-canvas"></a-->

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

			
			
        $('#ladron').hover(function() {
            $('.cat_mascaras').addClass('ladron');
            $('.cat_mascaras').removeClass('jefe');
            $('.cat_mascaras').removeClass('escolar');
            $('.cat_mascaras').removeClass('corrupto');
            $('.cat_mascaras').removeClass('infiel');



       
        });
         $('#jefe').hover(function() {
            $('.cat_mascaras').addClass('jefe');
             $('.cat_mascaras').removeClass('ladron');
            $('.cat_mascaras').removeClass('escolar');
            $('.cat_mascaras').removeClass('corrupto');
            $('.cat_mascaras').removeClass('infiel');

       
        });
          $('#escolar').hover(function() {
            $('.cat_mascaras').addClass('escolar');
             $('.cat_mascaras').removeClass('ladron');
            $('.cat_mascaras').removeClass('jefe');
            $('.cat_mascaras').removeClass('corrupto');
            $('.cat_mascaras').removeClass('infiel');
      
        });
          $('#corrup').hover(function() {
            $('.cat_mascaras').addClass('corrupto');
             $('.cat_mascaras').removeClass('ladron');
            $('.cat_mascaras').removeClass('escolar');
            $('.cat_mascaras').removeClass('jefe');
            $('.cat_mascaras').removeClass('infiel');
        
        });
          $('#infiel').hover(function() {
            $('.cat_mascaras').addClass('infiel');
             $('.cat_mascaras').removeClass('ladron');
            $('.cat_mascaras').removeClass('escolar');
            $('.cat_mascaras').removeClass('corrupto');
            $('.cat_mascaras').removeClass('jefe');
      
        });
  		 $('#altruista').hover(function() {
            $('.cat_mascaras_2').addClass('altruista');
           $('.cat_mascaras_2').removeClass('amigo');
            $('.cat_mascaras_2').removeClass('socio');
             $('.cat_mascaras_2').removeClass('celebridad');
            $('.cat_mascaras_2').removeClass('viola');
      
        });
  		  $('#amigo').hover(function() {
            $('.cat_mascaras_2').addClass('amigo');
            $('.cat_mascaras_2').removeClass('altruista');
             $('.cat_mascaras_2').removeClass('socio');
            $('.cat_mascaras_2').removeClass('celebridad');
             $('.cat_mascaras_2').removeClass('infiel');

        
        });
  		   $('#socio').hover(function() {
            $('.cat_mascaras_2').addClass('socio');
           $('.cat_mascaras_2').removeClass('amigo');
           $('.cat_mascaras_2').removeClass('altruista');
           $('.cat_mascaras_2').removeClass('celebridad');
             $('.cat_mascaras_2').removeClass('viola');
       
        });
  		    $('#celebridad').hover(function() {
            $('.cat_mascaras_2').addClass('celebridad');
          $('.cat_mascaras_2').removeClass('amigo');
             $('.cat_mascaras_2').removeClass('socio');
             $('.cat_mascaras_2').removeClass('altruista');
             $('.cat_mascaras_2').removeClass('viola');
        
        });
  		     $('#viola').hover(function() {
            $('.cat_mascaras_2').addClass('viola');
             $('.cat_mascaras_2').removeClass('amigo');
             $('.cat_mascaras_2').removeClass('socio');
             $('.cat_mascaras_2').removeClass('celebridad');
             $('.cat_mascaras_2').removeClass('altruista');
       
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
			$('.footer_cuadro').on('click', function(){
				$('.info').removeClass('hidden');	
				$('.footer_cuadro').addClass('hidden');
				
			});
			$('#guarda_info').on('click', function(){
					$('.info').toggleClass('hidden');
					$('.footer_cuadro').toggleClass('hidden');
				});
		});
	</script>
@stop