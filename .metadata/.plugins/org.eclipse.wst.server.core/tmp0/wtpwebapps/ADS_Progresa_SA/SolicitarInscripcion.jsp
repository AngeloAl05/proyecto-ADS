<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form-elements.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">
<meta charset="ISO-8859-1">

<title>Solicitud de Inscripci�n</title>
</head>

<style>
h4{
font-family: impact;
	color: balck;
	font-size: 60px;
	text-align:center;
	text-shadow: 5px 5px 5px white;
	margin: 0px auto 30px;
}

select {
height: 100px;
}

.container {
	margin-top: 10%;
	background-color:lightblue;
	border-radius: 20px;
	box-shadow: 5px 5px 5px lightblue;
	width: 65%;
	height: 40%;
	padding: 40px;
	
}

button {
	width: 200px;
	height: 30px;
	border-radius: 20px;
	margin: 20px;
	font-family: impact;
	color: white;
	background-color: white;
}



</style>


<body>

<div class="container" style="margin-top: 4%">
		<h4 style="text-align: center">Registrar Solicitante</h4>
		<form id="id_form">

			<div class="row">
				<div class="form-group col-md-4">
					<label class="control-label" for="id_nombr">Nombres y Apellidos</label> <input
						class="form-control" type="text" id="id_nombre" name="nombre"
						placeholder="Ingrese sus nombres y apellidos">
				</div>
				<div class="form-group col-md-4">
					<label class="control-label" for="id_empres">Empresa</label> <input
						class="form-control" type="text" id="id_empresa"
						name="apellidos" placeholder="Ingrese la empresa">
				</div>
				<div class="form-group col-md-2">
					<label class="control-label" for="id_dn">DNI</label> 
					<input class="form-control" type="text" id="id_dni" name="dni">
				</div>
				<div class="form-group col-md-2">
					<label class="control-label" for="id_fechaNacimiento">Fecha
						de Nacimiento</label> <input class="form-control" type="date"
						id="id_fechaNacimiento" name="fechaNacimiento">
				</div>
			</div>

			<div class="row" style="display: flex; justify-content: center">
				<div class="form-group col-md-4">
					<label class="control-label" for="id_grad"> Grado Acad�mico </label> <select class="form-control" id="id_grado" name="grado">
						<option value="">[Seleccione]</option>
						<option value="1">Secundaria</option>
						<option value="2">T�cnico Superior</option>
						<option value="3">Universitario</option>
					</select>
				</div>
				<div class="form-group col-md-4">
					<label class="control-label" for="id_puest"> Puesto </label> 
					<select class="form-control" id="id_puesto" name="puesto">
						<option value="">[Seleccione]</option>
						<option value="1">Rigger</option>
						<option value="2">Operador</option>
						<option value="3">Mec�nico</option>
					</select>
				</div>
				<div class="form-group col-md-4">
					<label class="control-label" for="id_expe">A�os de experiencia</label>
						<select class="form-control" id="id_exp" name="experiencia">
						<option value="">[Seleccione]</option>
						<option value="1">2 a�os</option>
						<option value="2">3 a�os</option>
						<option value="3">4 a�os</option>
						<option value="4">5 a 10 a�os</option>
						<option value="5">11 a 20 a�os</option>
					</select>
				</div>
				
			</div>
			<div class="row" style="display: flex; justify-content: center">
				<div class="form-group col-md-4">
					<label class="control-label" for="id_corre">Correo</label> <input
						class="form-control" type="text" id="id_correo" name="correo">
				</div>
				<div class="form-group col-md-4">
					<label class="control-label" for="id_tele">Tel�fono</label> <input
						class="form-control" type="text" id="id_telefono" name="telefono">
				</div>
			</div>

			<div class="row" align="center" style="margin-top: 2%">
				<button type="button" class="btn btn-primary" id="id_btn_registra">REGISTRAR</button>
			</div>
		</form>

	</div>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$('#id_form')
									.bootstrapValidator(
											{
												message : 'This value is not valid',


												fields : {
													nombre : {
														selector : "#id_nombre",
														validators : {
															notEmpty : {
																message : 'Los nombres y apellidos son requeridos'
															},
															stringLength : {
																min : 10,
																max : 100,
																message : 'Los nombres tiene de 10 a 100 caracteres'
															},
														}
													},

													empresa : {
														selector : "#id_empresa",
														validators : {
															notEmpty : {
																message : 'La empresa es requerida'

															},
														}
													},
													
													dni : {
														selector : "#id_dni",
														validators : {
															notEmpty : {
																message : 'El DNI es requerido'
															},
															stringLength : {
																min : 8,
																max : 8,
																message : 'El DNI tiene 8 d�gitos '
															},
														}
													},

													fechaNacimieento : {
														selector : "#id_fechaNacimiento",
														validators : {
															notEmpty : {
																message : 'La fecha de nacimiento es requerida'
															},
														}
													},

													telefono : {
														selector : "#id_telefono",
														validators : {
															notEmpty : {
																message : 'El telefono es requerido'
															},
															stringLength : {
																min : 9,
																max : 9,
																message : 'El tel�fono tiene 9 caracteres'
															}
														}
													},
													grado : {
														selector : "#id_grado",
														validators : {
															notEmpty : {
																message : 'El grado acad�mico es requerido'
															},
														}
													},
													experiencia : {
														selector : "#id_exp",
														validators : {
															notEmpty : {
																message : 'Los a�os de experiencia es requerido'
															},
														}
													},
													experiencia : {
														selector : "#id_exp",
														validators : {
															notEmpty : {
																message : 'Los a�os de experiencia es requerido'
															},
														}
													},
													correo : {
														selector : "#id_correo",
														validators : {
															notEmpty : {
																message : 'El correo es requerido'
															},
														}
													},
													puesto : {
														selector : "#id_puesto",
														validators : {
															notEmpty : {
																message : 'El puesto es requerido'
															},
														}
													},
												}

											});

						});
	</script>


	<script type="text/javascript">
		$("#id_btn_registra").click(function() {
			var validator = $('#id_form').data('bootstrapValidator');
			validator.validate();

			if (validator.isValid()) {
				$.ajax({
					type : "POST",
					url : "registraAutor",
					data : $('#id_form').serialize(),
					success : function(data) {
						mostrarMensaje(data.mensaje);
						limpiarFormulario();
						validator.resetForm();
					},
					error : function() {
						limpiarFormulario();
						mostrarMensaje(MSG_ERROR);
					}
				});

			}
		});

		$.getJSON("comboGrado", {}, function(data) {
			$.each(data, function(index, item) {
				$("#id_grado").append(
						"<option value=" +  item.idGrado +" >" + item.descripcion + "</option>");
			});
		});

		function limpiarFormulario() {
			$('#id_nombre').val('');
			$('#id_empresa').val('');
			$('#id_dni').val('');
			$('#id_fechaNacimiento').val('');
			$('#id_telefono').val(' ');
			$('#id_grado').val(' ');
			$('#id_puesto').val('');
			$('#id_exp').val('');
			$('#id_correo').val('');
		}
	</script>




</body>
</html>