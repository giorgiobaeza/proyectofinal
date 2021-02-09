<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0">

    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,wght@0,300;0,400;0,600;1,200;1,300;1,700&family=Roboto:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">   
    <title>Editar Cliente</title>

    <link href='<c:out value="${pageContext.request.contextPath}"/>/resources/CSS/estilos.css' rel="stylesheet">
</head>

<body>
    <header class="header-2">
        <input type="checkbox" id="btn-menu">
        <label for="btn-menu" ><i class="fas fa-bars"></i></label>
        <nav>
            <ul>
                 <li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Inicio</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/crearUsuario'>Crear Usuario</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarUsuarios'>Listar Usuarios</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarPagos'>Listar pagos</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/contacto'>Contacto</a></li>
            </ul>
        </nav>
        <div class="wave-2" style="height: 150px; overflow: hidden;"></div>
        
    </header>
    
    
	    <div class="contenedor-editarcliente">
	        <form id="editarcliente" method="post" action="editarcliente" class="cmxform" id="pagForm">
	            
	            <h2 id="titulo-editarcliente">Editar Cliente</h2>
	            <label for="" id="label-editarcliente">Rut</label>
	            <input type="text" id="input-editarcliente" name="txtrutCliente" value='<c:out value="${usr.getRun()}"/>' readonly="readonly"/>
	            <label for="" id="label-editarcliente">Nombres</label>
	            <input type="date" id="input-editarcliente" name="txtcliNombres" value='<c:out value="${cli.getCliNombres()}"/>'/>
	            <label for="" id="label-listarvisita">Apellidos</label>
	            <input type="time" id="txtvishora" name="txtcliApellidos" value='<c:out value="${cli.getCliApellidos()}"/>'/>
	            <label for="" id="label-listarvisita">Teléfono</label>
	            <input type="time" id="listarvisita" name="txtcliTelefono" value='<c:out value="${cli.getCliTelefono()}"/>'/>
	            <label for="" id="label-listarvisita">AFP</label>
	            <input type="time" id="listarvisita" name="txtcliAfp" value='<c:out value="${cli.getCliAfp()}"/>'/>
	            <label for="" id="label-listarvisita">Sistema de salud</label>
	            <select id="input-listarvisita" name="txtcliSistemaSalud">
	                <option value="Fonasa">Fonasa</option>
	                <option value="Isapre">Isapre</option>
	            </select>
	            <label for="" id="label-listarvisita">Direccion</label>
	            <input type="time" id="listarvisita" name="txtcliDireccion" value='<c:out value="${cli.getCliDireccion()}"/>'/>
	            <label for="" id="label-listarvisita">Comuna</label>
	            <input type="time" id="listarvisita" name="txtcliComuna" value='<c:out value="${cli.getCliComuna()}"/>'/>
	            <label for="" id="label-listarvisita">Edad</label>
	            <input type="time" id="listarvisita" name="txtcliEdad" value='<c:out value="${cli.getCliEdad()}"/>'/>
	
	            <tr style="display:none">
	                <td>Run Usuario</td>
	                <td><input type="text" name="txtusuariorun" value='<c:out value="${usr.getRun()}"/>' readonly="readonly"/></td>
	            </tr>
	
	            <input type="submit" id="botoneditarcliente" value="Ingresar Cliente">
	
	        </form>
	     </div>

    <footer>
        <div class="siguenos">
            <h2>Siguenos en nuestras redes sociales</h2>
        </div>
        <div class="redes-footer">
        	<img src='<c:out value="${pageContext.request.contextPath}"/>/resources/Imagenes/facebook.png' alt="">
        	<img src='<c:out value="${pageContext.request.contextPath}"/>/resources/Imagenes/instagram.png' alt="">
        	<img src='<c:out value="${pageContext.request.contextPath}"/>/resources/Imagenes/twitter.png' alt="">
        </div>
        <h2 class="titulo-final">© 2021 @grupo2 - Todos los derechos reservados</h2>
    </footer>
    <script src="menu.js"></script>
</body> 

</html>