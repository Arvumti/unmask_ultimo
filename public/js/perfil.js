$(document).foundation();
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
				var tipo = $(e.currentTarget).data('tipo');
				var id = $(e.currentTarget).data('id');

				$.post(url + 'vote_amor', {id:id, tipo:tipo}).done(function(data) {
					var elem = $(e.currentTarget).find('.amor-votes');
					var prevotos = elem.text().replace('(', '').replace(')', '');

					var votos = parseInt(prevotos, 10);
					if(votos === NaN)
						votos = 0;

					if(data == 1)
						elem.text('(' + (votos + 1) + ')');
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

						var icon = '<i class="icon-tacha"></i> [';
						if(conf == 1)
							icon = '<i class="icon-checkmark"></i> [';

						var texto = elem.text().substr(2);
						texto = texto.substr(0, texto.length - 1);
						texto = (parseInt(texto, 0) + 1) || 0;

						elem.html(icon + texto + ']');
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
						gvConfiable.find('[data-conf="1"]').html('<i class="icon-checkmark"></i> [' + siconf + ']');
						gvConfiable.find('[data-conf="0"]').html('<i class="icon-tacha"></i> [' + noconf + ']');
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
					var comm = ' \
					<div class="small-12 columns"> \ 
						<div class="comentario"> \
			   				<label style="font-size:18px">' + data.usuario + '</label> \
				   			<p>' + texto + '</p> \
				   			<span>' + data.created_at.date + '</span> \
			   			</div> \
			   		</div>';

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

					rank.text(votos + (suma == 0 ? 0 : 1));
				});
			}

			$('.postearEv').on('valid', function (e) {
				e.preventDefault();
				SavePost();
			}).on('submit', function (e) {
				e.preventDefault();
			});

			function SavePost() {
				var idPerfil = window.location.href.split('/').pop();

				var formData = new FormData($('.postearEv')[0]);
		        //formData.append("fdata", JSON.stringify({opcion:opcion}));
	        
		        $('.loading').removeClass('isHidden');
				var xhr = $.ajax({
		            url: url + 'post/' + idPerfil + '/' + opcion,  //Server script to process data
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
				$('.postearEv').submit();			
			})
	            //MOSTRAR CAMPOS DE LLENADO DE SECRET BOX, CONFESION,LAS EVIDENCIAS Y CALIFICACION
			
			// ABRIR FORMULARIO DE CONFESION FOTOS VIDEO SECUNDARIO
			$('.confSec').on('click',function(e){
				//e.preventDefault();
				
				$('.conSec').removeClass("Hidden");
				$('.btnSec').removeClass("Hidden");
				$('.viSec').addClass("Hidden");
				$('.fotSec').addClass("Hidden");
				$('.linkerSec').addClass("Hidden");
				opcion = 1;
			});
			$('.fotoSec').on('click',function(){
			
				$('.fotSec').removeClass("Hidden");
				$('.btnSec').removeClass("Hidden");
				$('.conSec').addClass("Hidden");
				$('.viSec').addClass("Hidden");
				$('.linkerSec').addClass("Hidden");
				opcion = 2;
			});
			$('.vidSec').on('click',function(){
				
				$('.viSec').removeClass("Hidden");
				$('.conSec' ).addClass("Hidden");
				$('.fotSec').addClass("Hidden");
				$('.linkerSec').addClass("Hidden");
				$('.btnSec').removeClass("Hidden");
				opcion = 3;
			});
			$('.linkSec').on('click',function(){
				
				$('.linkerSec').removeClass("Hidden");
				$('.conSec' ).addClass("Hidden");
				$('.fotSec').addClass("Hidden");
				$('.btnSec').removeClass("Hidden");
				$('.viSec').addClass("Hidden");
				opcion = 4;
			});

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
				debugger
				$(this).siblings('.votosPost').toggleClass("Hidden");
			});

			(function(d, s, id) {
			  var js, fjs = d.getElementsByTagName(s)[0];
			  if (d.getElementById(id)) return;
			  js = d.createElement(s); js.id = id;
			  js.src = "//connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v2.3";
			  fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));
		}
