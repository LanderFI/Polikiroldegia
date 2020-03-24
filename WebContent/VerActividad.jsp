<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="modelo.bean.Actividad" %>
	
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<title>ACTIVIDAD</title>
</head>
<body>
	<div class="container mt-5 rounded border border-dark">
		<div class="row">
			<div class="col">
				<h1 class="text-center">${actividad.getNombre()} </h1>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Fecha Inicio</div>
			<div class="col text-center font-weight-bold">${actividad.getNombre()}</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Dias Semana</div>
			<div class="col text-center font-weight-bold">${actividad.getDias() }</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Horas</div>
			<div class="col text-center font-weight-bold">${actividad.getHoras()} </div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Max Participantes</div>
			<div class="col text-center font-weight-bold">${actividad.getMaxParticipantes() }</div>
		</div>
		<br>
		<div class="row">
			<div class="col text-center font-weight-bold">Precio</div>
			<div class="col text-center font-weight-bold">${actividad.getPrecio()}</div>
		</div>
		<br>
		<br>
		<div class="container align-items-center">
		<div class="row">
		
			<div class="col"><div><a class="btn btn-info"  href="EditarActividad?id=${actividad.getId() }">EDITAR</a></div></div>
      		<div class="col"><div><a class="btn btn-danger" href="EliminarActividad?id=${actividad.getId() }">ELIMINAR</a></div></div>
      		
      
			
		</div>
		</div>
		<br>
	</div>
	
	<div class="container mt-5 rounded border border-dark">
		<div class="row">
			<div class="col">
				<h1>Formularioa</h1>
					<form action="InscribirUsuario" method="POST">
			
						<input type="hidden" value="${actividad.id }" name="idActividad">
				
							<select name="idUsuario">
				
								<option value="0"></option>
					
									<c:forEach items="${usuarios}" var="usuario">
										<td>${usuario.getNombreApellido() }</td>
      									<td>${usuario.getDni() }</td>
     		 							<td>${usuario.getCodigo() }</td>									
									
										<option value="${usuario.getId()}">${usuario.getNombreApellido()} - ${usuario.getCodigo()}</option>
									</c:forEach>
					
							</select>
				
						<input type="submit" value="INSCRIBIR">
					</form>
			
			</div>
			<div class="col">
				<h1>Usuarios inscritos</h1>
				<table class="table">
				<c:forEach items="${actividad.iscripciones}" var="inscripcion">
					<tr>
						<td>${inscripcion.usuario.getNombreApellido() } - ${inscripcion.usuario.getCodigo() }</td>
						<td><a class="btn btn-danger" href="EliminarInscripcion?idactividad=${actividad.getId()}&idusuario=${inscripcion.usuario.getId()}">Cancelar inscripcion</a></td>
					</tr>	
				</c:forEach>	
				</table>
				
			
			</div>
		</div>
	
	
	
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>
</html>