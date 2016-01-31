@extends('base')

@section('content')
	<div class="create_profile_marker">
        <button id="create_profile"> <span>create profile</span> <img src="img/create_plus.png" width="30"></button>
        <div class="clear"></div>
        <div class="other_users_container"><h1 class="create_profile_form_marker">{{Lang::get('messages.crePerDivTitTitulo')}} </h1>
            <div class="create_profile_form">
                <form method="post" action="crear_perfil" class="flex_box" enctype="multipart/form-data" data-abide>
                    <input type="file" class="hidden_class cpFoto" name="foto" id="photo" accept="image/*"> <label for="photo"><img id="imgFoto"  data-ref="cpFoto" src="img/add_photo.jpg" width="195" /><p>Drag&Drop <br> your new photo</p></label>
                    <div class="flex_column">
                        <input type="text" name="nombre" value="{{Input::old('nombre')}}" placeholder="{{Lang::get('messages.crePerFrmLblNombre')}} - {{Lang::get('messages.crePerTltNombre')}}" required />
                        <!--small class="error">{{Lang::get('messages.crePerFrmLblNombreErr')}}</small-->
                        <input type="text" name="apaterno" value="{{Input::old('apaterno')}}"placeholder="{{Lang::get('messages.crePerFrmLblApellidoPat')}} - {{Lang::get('messages.crePerTltApellidoPaterno')}} ">
                        <!--small class="error">{{Lang::get('messages.crePerFrmLblApellidoPatErr')}}</small-->
                        <input type="text" name="amaterno" value="{{Input::old('amaterno')}}"placeholder="{{Lang::get('messages.crePerFrmLblApellidoMat')}} - {{Lang::get('messages.crePerTltApellidoMaterno')}}">
                      
                        <input type="text" name="apodo" value="Nicknames (of the person of this profile)" onfocus="if (this.value == 'Nicknames (of the person of this profile)') {this.value = '';}" onblur="if (this.value == '') {this.value = 'Nicknames (of the person of this profile)';}">
                    	<div class="gv-apodos">
							@if(strlen(Input::old('apodos')) > 0)
								@foreach(explode(",", Input::old('apodos')) as $apodo)
									<label class="letras_rojo">
											<span class="texto">{{$apodo}}</span>
											<span class="cerrar">x</span>
									</label>
								@endforeach
							@endif
						</div>
						<input type="text" class="fake-apodos isHidden" value="{{Input::old('apodos')}}" name="apodos"/>
                    </div>
                    <div class="flex_column_full">
                        <input type="text" name="pais" value="{{Input::old('pais')}}" placeholder="{{Lang::get('messages.crePerFrmLblPais')}}"class="typeahead"/>
                        <input type="text" name="estado" value="{{Input::old('estado')}}" placeholder="{{Lang::get('messages.crePerFrmLblEstado')}}"class="typeahead">

                    </div>
                    <div class="flex_box flex_box_tree">
                        <input type="text" name="municipio" value="{{Input::old('municipio')}}"placeholder="{{Lang::get('messages.crePerFrmLblMunicipio')}}">
                        <input type="text" name="ciudad" value="{{Input::old('ciudad')}}" placeholder="{{Lang::get('messages.crePerFrmLblCiudad')}}">
                        <input type="text" name="colonia" value="{{Input::old('colonia')}}" placeholder="{{Lang::get('messages.crePerFrmLblColonia')}}">
                    </div>
                    <p class="flex_box">{{Lang::get('messages.crePerFrmTitRedesSociales')}}</p>
                    <div class="flex_box flex_box_tree">
                        <input type="text" name="facebook" value="{{Input::old('facebook')}}" placeholder="{{Lang::get('messages.crePerFrmLblFacebook')}} - http://facebook.com/profile">
                        <input type="text" name="twitter" value="{{Input::old('twitter')}}"  placeholder="{{Lang::get('messages.crePerFrmLblTwitter')}} - http://twitter.com/profile">
                        <input type="text" name="instagram" value="{{Input::old('instagram')}}" placeholder="{{Lang::get('messages.crePerFrmLblInstagram')}} - http://instagram.com/profile" >
                    </div>
                    <p class="flex_box">{{Lang::get('messages.crePerFrmTitMascaras')}}</p>
                    <input type="checkbox" class="hidden_class" name="theif" id="theif" value="1"><label for="theif" class="label_red"> <span>Theif</span> </label>
                    <input type="checkbox" class="hidden_class" name="unfair_boss" id="unfair_boss" value="2"> <label for="unfair_boss" class="label_red"> <span>Unfair boss</span> </label>
                    <input type="checkbox" class="hidden_class" name="sexual_harassment" id="sexual_harassment" value="3"> <label for="sexual_harassment" class="label_red"> <span>Sexual harassment</span> </label>
                    <input type="checkbox" class="hidden_class" name="corruption" id="corruption" value="4"> <label for="corruption" class="label_red"> <span>Corruption</span> </label>
                    <input type="checkbox" class="hidden_class" name="unfaithful" id="unfaithful" value="5"> <label for="unfaithful" class="label_red"> <span>Unfaithful</span> </label>
                    <input type="checkbox" class="hidden_class" name="altruist" id="altruist" value="6"> <label for="altruist" class="label_red"> <span>Altruist</span> </label>
                    <input type="checkbox" class="hidden_class" name="loyal_friend" id="loyal_friend" value="7"> <label for="loyal_friend" class="label_red"> <span>Loyal friend</span> </label>
                    <input type="checkbox" class="hidden_class" name="loyal_partner" id="loyal_partner" value="8"> <label for="loyal_partner" class="label_red"> <span>Loyal partner</span> </label>
                    <input type="checkbox" class="hidden_class" name="celebrite_abuse" id="celebrite_abuse" value="9"> <label for="celebrite_abuse" class="label_red"> <span>Celebrite abuse</span> </label>
                    <input type="checkbox" class="hidden_class" name="rapist" id="rapist" value="10"><label for="rapist" class="label_red"> <span>Rapist</span> </label>
                    <input type="checkbox" class="hidden_class" name="nymphomania" id="nymphomania" value="11"> <label for="nymphomania" class="label_red"> <span>Nymphomania</span> </label>
                    <input style="text-align:center; width:100%;"type="text" name="mascara" class="flex_column_full typeahead" placeholder="{{Lang::get('messages.crePerFrmLblMascaraSeleccionada')}} - {{Lang::get('messages.crePerTltConsejoMascaras1')}}">
                    <div class="gv-mascaras">
						<!-- @if(strlen(Input::old('mascaras')) > 0)
							@foreach(explode(",", Input::old('mascaras')) as $mascara)
								<label class="letras_rojo">
									<span class="texto">{{$mascara}}</span>
									<span class="cerrar">x</span>
								</label>
							@endforeach
						@endif -->
					</div>
					<input type="text" class="fake-mascaras isHidden" name="mascaras"/>
                    <!--p class="flex_box">Add</p>
                    <div class="flex_box flex_files">
                        <div class="flex_box">
                            <input type="file" class="hidden_class" name="photos" id="photos" accept="image/jpeg,image/png"> <label for="photos"> <img src="img/add_img.png"> </label>
                            <div class="separation"></div>
                            <input type="file" class="hidden_class" name="videos" id="videos" accept="video/*"> <label for="videos"> <img src="img/add_video.png" > </label>
                            <div class="separation"></div>
                            <input type="file" class="hidden_class" name="text_file" id="text_file" accept="text/*"> <label for="videos"> <img src="img/add_text.png" > </label>
                            <div class="separation"></div>
                            <input type="file" class="hidden_class" name="other" id="other" accept="*"> <label for="other"> <img src="img/add_other.png" > </label>
                        </div>
                    </div-->
                    <div class="flex_box flex_captcha"style="text-align:center;width:65%;height:90px;">
                        <!--img src="img/captcha.jpg" alt="captcha" class="captcha">
                        <div class="flex_column flex_button">
                            <button name="reload"><img src="img/reload.png"></button>
                            <button name="sound"><img src="img/sound.png"></button>
                        </div-->
                        {{ $data['captchaHtml'] }}
                    </div>
                    <input type="text" id="CaptchaCode"name="CaptchaCode" class="flex_column_full form-control" size="10" placeholder="{{Lang::get('messages.crePerFrmLblCaptcha')}}"style="text-transform: uppercase;text-align:center">
                    <div class="flex_box flex_form_control">
                        <input type="reset" value="{{Lang::get('messages.crePerFrmBtnCancelar')}}">
                        <input type="submit" class="button" value="{{Lang::get('messages.crePerFrmBtnGuardar')}}">
                    </div>
                </form>
            	@if($errors->any())
						<br/><br/>
						@foreach ($errors->all() as $error)
						<div class="flex_box flex_box_tree">
							<!--div class="label alert" role="alert">** {{ $error }}</div-->
						</div>
						@endforeach
					@endif
            </div>

        </div>

    </div>
	
<script type="text/javascript">
	$(document).on('ready', inicio_cp);

	function inicio_cp () {
		$(document).foundation();

		$('.gv-mascaras').on('click', 'label', function(e) {
			$(e.currentTarget).remove();
			
			render_masks();
		});

		var jsonEs = {
			elem: $('input.typeahead[name="estado"]'),
			dKey: 'nombre',
			modulo: 'estados',
		};
		typeahead(jsonEs);

		var jsonPa = {
			elem: $('input.typeahead[name="pais"]'),
			dKey: 'nombre',
			modulo: 'paises',
		};
		typeahead(jsonPa);

		var jsonMa = {
			elem: $('input.typeahead[name="mascara"]'),
			dKey: 'nombre',
			modulo: 'mascaras',
		};
		typeahead(jsonMa);

		var jsonMu = {
			elem: $('input.typeahead[name="municipio"]'),
			dKey: 'nombre',
			modulo: 'municipios',
		};
		typeahead(jsonMu);

		var jsonCi = {
			elem: $('input.typeahead[name="ciudad"]'),
			dKey: 'nombre',
			modulo: 'ciudades',
		};
		typeahead(jsonCi);

		var jsonCo = {
			elem: $('input.typeahead[name="colonia"]'),
			dKey: 'nombre',
			modulo: 'colonias',
		};
		typeahead(jsonCo);

		jsonMa.elem.on('keypress', function(e, datum) {
			if(e.which == 13) {
				e.preventDefault();
				var texto = $(e.currentTarget).val();
				add_mask(texto);
				$(e.currentTarget).val('');
			}
		})
		.on('typeahead:selected typeahead:autocompleted', function(e, datum) {
			add_mask(datum.nombre);
			setTimeout(function() {
				$(e.currentTarget).val('');
			}, 10);
		});

		function add_mask(texto) {
			if(texto.length > 0 && $('.gv-mascaras label span:contains("' + texto + '")').length == 0) {
				$('.gv-mascaras').append('<label class="letras_rojo"><span class="texto">' + texto + '</span> <span class="cerrar">x</span></label>');
				render_masks();
			}
		}

		function render_masks() {
			var spans = $('.gv-mascaras label span.texto');
			var masks = Array();
			for (var i = 0; i < spans.length; i++) {
				masks.push(spans.eq(i).text());
			};
			$('.fake-mascaras').val(masks.join(', '));
		}


		$('.gv-apodos').on('click', 'label', function(e) {
			$(e.currentTarget).remove();
			
			render_masks();
		});

		$('[name="apodo"]').on('keypress', function(e, datum) {
			if(e.which == 13) {
				e.preventDefault();
				var texto = $(e.currentTarget).val();
				add_apodo(texto);
				$(e.currentTarget).val('');
			}
		})

		function add_apodo(texto) {
			if(texto.length > 0 && $('.gv-apodos label span:contains("' + texto + '")').length == 0) {
				$('.gv-apodos').append('<label class="letras_rojo"><span class="texto">' + texto + '</span> <span class="cerrar">x</span></label>');
				render_apodos();
			}
		}

		function render_apodos() {
			var spans = $('.gv-apodos label span.texto');
			var masks = Array();
			for (var i = 0; i < spans.length; i++) {
				masks.push(spans.eq(i).text());
			};
			$('.fake-apodos').val(masks.join(', '));
		}
	}
</script>
@stop