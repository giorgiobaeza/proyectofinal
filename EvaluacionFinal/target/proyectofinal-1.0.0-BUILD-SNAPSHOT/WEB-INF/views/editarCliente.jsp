<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Cliente</title>
	<link href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/estilo.css' rel="stylesheet">
    <script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}">/resources/js/script.js</c:out>'></script>   
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    
</head>
<body>
		<header id="seccion">
        <h2>Editar Cliente</h2>
        <blockquote><a href='<c:out value="${pageContext.request.contextPath}"/>/cerrarsesion'>Cerrar Sesión</a></blockquote>
        <div class="content-menu">
        <input type="checkbox" id="check">
        	<label class="icon-menu" for="check">
	        	<img src='<c:out value="${pageContext.request.contextPath}"/>/resources/img/icono-menu.png' alt="" class="icon-menu">
	       	</label>		
	    <!--  <p>Bienvenido usuario: <c:out value="${nombresesion}"></c:out></p>
        <a href="./LogoutServlet">
		cerrar sesión
		</a>-->
        <nav class="menu">
            <ul>
            	<li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Inicio</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/contacto'>Contacto</a></li>
                <!--<li><a href="loginServlet">Ingreso</a></li>-->
                <!--<li><a href="FormCrearUsuarioServlet">Crear Usuario</a></li>-->
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/crearCapacitacion'>Crear Capacitaciones</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarUsuarios'>Listado de Usuarios</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarCapacitaciones'>Listar Capacitaciones</a></li>
                <!--<li><a href="administrarasistentes.html">Asistentes Capacitaciones</a></li>
                <li><a href="listadovisitas.html">Listado Visitas</a></li>
                <li><a href="listadopago.html">Listado Pago</a></li>
                <li><a href="listadoasesorias.html">Listado Asesorías</a></li>
                <li><a href="listadoaccidentes.html">Listado Accidentes</a></li>-->
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarClientes'>Lista de clientes</a></li>
            </ul>
        </nav>
        </div>
    </header>
    <fieldset class="cel- agrupar-t agrupar-e">
        <form method="POST" action='<c:out value="${pageContext.request.contextPath}"/>/procesarEditar' class="cmxform" id="capForm">
            <table class="cel- tablas-t tablas-e">
                <tr>
                	<td>Rut Cliente</td>
                	<td><input type="text" name="txtrutCliente" value='<c:out value="${cli.getRutCliente()}"/>' readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="txtcliNombres" value='<c:out value="${cli.getCliNombres()}"/>'/></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="txtcliApellidos" value='<c:out value="${cli.getCliApellidos()}"/>'/></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input type="text" name="txtcliTelefono" value='<c:out value="${cli.getCliTelefono()}"/>'/></td>
                </tr>
                <tr>
                    <td>AFP</td>
                    <td><input type="text" name="txtcliAfp" value='<c:out value="${cli.getCliAfp()}"/>'/></td>
                </tr>
				<tr>
                    <td>Sistema de Salud</td>
                    <td><input type="text" name="txtcliSistemaSalud" value='<c:out value="${cli.getCliSistemaSalud()}"/>'/></td>
                </tr>
				<tr>
                    <td>Direccion</td>
                    <td><input type="text" name="txtcliDireccion" value='<c:out value="${cli.getCliDireccion()}"/>'/></td>
                </tr>
                <tr>
                    <td>Comuna</td>
                    <td><input type="text" name="txtcliComuna" value='<c:out value="${cli.getCliComuna()}"/>'/></td>
                </tr>
                <tr>
                    <td>Edad</td>
                    <td><input type="text" name="txtcliEdad" value='<c:out value="${cli.getCliEdad()}"/>'/></td>
                </tr>
                <tr>
                    <td>Run Usuario</td>
                    <td><input type="text" name="txtusuariorun" value='<c:out value="${cli.getUsuario_run()}"/>' readonly="readonly"/></td>
                </tr>
                <tr>
					<td><input type="submit" value="Ingresar Cliente"></td>
				</tr>
                </table>
        </form>
    </fieldset>
    <footer id="pie">
        <blockquote><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Vover a Inicio</a></blockquote>
        Derechos Reservados G2 &copy; 2020
      </footer>
</body>
</html>