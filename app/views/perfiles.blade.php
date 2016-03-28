@extends('base')

@section('content')
	<div class="create_profile_marker">

	    <button id="create_profile"> 
	    	<a href="{{ URL::asset('crear_perfil') }}">
		    	<span>{{Lang::get('messages.perfilesBtncrea')}}</span>
		    	<img src="img/create_plus.png" width="30">
	    	</a>
	    </button>

	    <div class="clear"></div>

	    <div class="other_users_container"><h1>your created <span> profiles</span></h1>
	        @foreach($perfiles as $perfil)
	        <div class="other_user">
	            <div class="other_user_photo_area">
	                <img src="{{ URL::asset('img\\db_imgs\\'.$perfil->foto) }}" width="164" height="164" >

	                <div class="clear"></div>

	                <div class="other_user_info other_user_photo_area_red">
	                    <a href="#" class="unmask_link click_unmask_link">UNMASK</a><!-- {{ URL::to('update_perfil/'.$perfil->idPerfil) }}-->
	                    <div class="other_user_info_central">
	                        <span class="thief">{{ $perfil->mascaras }}</span>
	                        <!--div class="unmask_red">
	                            <span>35</span>
	                            <img src="img/anonymous.png" width="11" height="15"/>
	                        </div>
	                        <div class="unmask_grey">
	                            <span>8</span>
	                            <img src="img/anonymous_red.png" width="11" height="15"/>
	                        </div-->

	                        <ul class="info_list">
	                            <li><span class="profile_info_left other_list_info">ID:</span> <span class="profile_info_right other_list_info">{{ $perfil->idPerfil }}</span></li>
	                            <li><span class="profile_info_left other_list_info">{{ $perfil->pais }}</span> <span class="profile_info_right other_list_info">{{ $perfil->estado }}</span></li>
	                        </ul>
	                    </div>
	                    <button class="other_user_photo_area_red" onclick="window.location.href='{{ URL::to('perfil').'/'.$perfil->idPerfil }}'">Go to profile</button>
	                </div>
	            </div>
	            <p class="other_user_name">{{ $perfil->perfil }}</p>
	        </div>
	        @endforeach
	    </div>
    </div>
	<script type="text/javascript">
		$(document).ready(function() {
			$('.js-perfiles.open-modal').on('click', function(e) {
				debugger
				var id = $(e.currentTarget).data('id'),
					form = $(e.currentTarget).data('relform')

				switch(form) {
					case 'frmRelaciones':
						url += 'relaciones/';
						break;
					default:
						url += 'evidencias/';
						break
				}
				$('#' + form).attr('action', url + id);
			});
		});
	</script>

</section>

@stop