<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  
    
    
   
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
      
  
    <title>ACTIVIDADES</title>    
  </head>
  <body>
    <h1 class="mt-2 text-center">ACTIVIDADES</h1>
    
    <div class="col-4 offset-8 mb-2">
				<form action="BuscarActividades" method="POST" class="form-inline">
			<input type="text" name="query" class="form-control" placeholder="Buscar actividades">
			<button type="submit" class="btn btn-outline-success mx-2">Buscar</button>
		</form>
	</div>
	
	<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">Nombre</th>
      <th scope="col">Fecha_inicio</th>
      <th scope="col">Dias semana</th>
      <th scope="col">
      <th scope="col">Acciones</th>
      <td><a class="btn btn-success" href="CrearActividad?id=${actividad.getId() }">CREAR</a></td>
      <th scope="col"><a href="Home" class="btn btn-warning">Volver a HOME</a></th>
    </tr>
  </thead>
  <tbody>
  
  
  
  
  <c:forEach items="${actividades}" var="actividad">
  
	 
 
    <tr>
      <th><a href="VerActividad?id=${actividad.getId()}">${actividad.getNombre()}</a></th>
      <td>${actividad.getFecha_inicio() }</td>
      <td>${actividad.getDias() }</td>
      
      
      <td><a class="btn btn-primary" href="VerActividad?id=${actividad.getId() }">VER</a></td>
      
      <td><a class="btn btn-info"  href="EditarActividad?id=${actividad.getId() }">EDITAR</a></td>
      <td><a class="btn btn-danger" href="EliminarActividad?id=${actividad.getId() }">ELIMINAR</a></td>
      
		
      
    </tr>
    	
    
    
	</c:forEach>
  </tbody>
</table>
		
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  </body>
</html>