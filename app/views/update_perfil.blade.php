@extends('base')

@section('content')
<script type="text/javascript" src="{{ URL::asset('js/jquery-2.0.3.min.js') }}"></script>
<script type="text/javascript" src="{{ URL::asset('js/typeahead.jquery.min.js') }}"></script> 
<script type="text/javascript" src="{{ URL::asset('js/main_app.js') }}"></script> 
<script type="text/javascript" src="{{ URL::asset('js/lodash.underscore.min.js') }}"></script> 
<script type="text/javascript" src="{{ URL::asset('js/backbone-min.js') }}"></script> 

<div class="create_profile_marker">
	<div class="other_users_container">
		<h1 class="create_profile_form_marker">{{Lang::get('messages.updtTitLblCrear')}} Madison</h1>

		<div class="create_profile_form">
			<form action="{{ URL::to('crear_perfil/'.$data['perfil']->idPerfil) }}" class="flex_box" method="post" enctype="multipart/form-data" data-abide>	
				<!--a class="th img-logo" href="#"></a-->
				<input type="file" id="file" name="foto" class="isHidden cpFoto"  accept="image/*" />
				<label for="photo"><img id="imgFoto" data-ref="cpFoto" class="click-image" src="{{ URL::asset('img/add_photo.jpg') }}"width="195"/><p>Upload here <br> your new photo</p>    </label>
								
				<div class="flex_column">
					<input type="text" name="nombre" value="{{$data['perfil']->nombre}}" placeholder="{{Lang::get('messages.updtTltNombreVal')}}" required />
					<small class="error">{{Lang::get('messages.updtFrmLblNombreVal')}}</small>
					<input type="text" name="apaterno" value="{{$data['perfil']->apaterno}}" placeholder="{{Lang::get('messages.updtTltApellidoPaternoVal')}}" required />
					<small class="error">{{Lang::get('messages.updtFrmLblApellidoPaternoVal')}}</small>
					<input type="text" name="amaterno" value="{{$data['perfil']->amaterno}}" placeholder="{{Lang::get('messages.updtTltApellidoMaternoVal')}}" required />
					<small class="error">{{Lang::get('messages.updtFrmLblApellidoMaternoVal')}}</small>
					<!--<b ><span data-tooltip aria-haspopup="true" class="has-tip" title="{{Lang::get('messages.updtTltApodo')}}">{{Lang::get('messages.updtFrmLblApodo')}}</span></b-->
					<input type="text" name="apodo" placeholder="{{Lang::get('messages.updtTltApodoVal')}}" />
					<div class="gv-apodos">
						@foreach($data['perfil']->apods as $apodo)
							<label>
								<span class="texto">{{$apodo->apodo}}</span>
								<span class="cerrar">x</span>
							</label>
						@endforeach
					</div>
					<input type="text" class="fake-apodos isHidden" value="{{$data['perfil']->apodos}}" name="apodos"/>
					
				</div>
				<div class="flex_column_full">
					<input type="text" name="pais" value="{{$data['perfil']->pais}}" placeholder="{{Lang::get('messages.crePerFrmLblPais')}}"class="typeahead"/>
					<input type="text" name="estado" value="{{$data['perfil']->estado}}" placeholder="{{Lang::get('messages.crePerFrmLblEstado')}}"class="typeahead"/>
				</div>
				<div class="flex_column_full">
					<input type="text" style="border: 1px solid #999897;padding: 6px 10px; color: #999897;font-family: Raleway_Regular;font-size: 12px;display: block; margin-bottom: 25px; width:96.5%;"name="municipio" value="{{$data['perfil']->municipio}}" class="typeahead"placeholder="{{Lang::get('messages.crePerFrmLblMunicipio')}}"/>
					<input type="text" style="border: 1px solid #999897;padding: 6px 10px; color: #999897;font-family: Raleway_Regular;font-size: 12px;display: block; margin-bottom: 25px;width:96.5%;"name="ciudad" value="{{$data['perfil']->ciudad}}" class="typeahead"/placeholder="{{Lang::get('messages.crePerFrmLblCiudad')}}">
					<input type="text" style="border: 1px solid #999897;padding: 6px 10px; color: #999897;font-family: Raleway_Regular;font-size: 12px;display: block; margin-bottom: 25px;width:96.5%;"name="colonia" value="{{$data['perfil']->colonia}}" class="typeahead" placeholder="{{Lang::get('messages.crePerFrmLblColonia')}}"/>
				</div>
				<p class="flex_box">{{Lang::get('messages.crePerFrmTitRedesSociales')}}</p>
	            <div class="flex_box flex_box_tree">
					<input type="text" name="facebook" value="{{$data['perfil']->facebook}}" placeholder="http://facebook.com/perfil" />
					<input type="text" name="twitter" value="{{$data['perfil']->twitter}}" placeholder="http://twitter.com/perfil" />
					<input type="text" name="instagram" value="{{$data['perfil']->instagram}}" placeholder="http://instagram.com/perfil" />
	            	 
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
				<div class="flex_column_full">
					<input type="text" name="mascara" class="flex_column_full typeahead" placeholder="{{Lang::get('messages.updtTltConsejoMascaras1')}}" />
					<div class="gv-mascaras">
						@foreach($data['perfil']->masks as $mascara)
							<label class="letras_rojo">
								<span class="texto">{{$mascara->nombre}}</span>
								<span class="cerrar">x</span>
							</label>
						@endforeach					
					</div>
				</div>
				<input type="text" class="fake-mascaras isHidden" value="{{$data['perfil']->mascaras}}" name="mascaras"/>
				<div class="flex_box flex_form_control">
					<input type="reset" value="{{Lang::get('messages.crePerFrmBtnCancelar')}}">
					<input type="submit" value="{{Lang::get('messages.updtFrmBtnGuardar')}}">
				</div>
				@if($errors->any())
				   <br/><br/>
					@foreach ($errors->all() as $error)
						<div class="flex_box">
							<div class="label alert" role="alert">** {{ $error }}</div>
						</div>
					@endforeach
				@endif
			</form>
		</div>
	</div>
</div>
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
				$('.gv-mascaras').append('<label><span class="texto">' + texto + '</span> <span class="cerrar">x</span></label>');
				render_masks();
			}
		}

		function render_masks() {
			debugger
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
				$('.gv-apodos').append('<label><span class="texto">' + texto + '</span> <span class="cerrar">x</span></label>');
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