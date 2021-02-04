<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editar Profesional</title>
	<link href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/estilo.css' rel="stylesheet">
    <script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}">/resources/js/script.js</c:out>'></script>   
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    
</head>
<body>
		<header id="seccion">
        <h2>Editar Profesional</h2>
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
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarProfesionals'>Lista de Profesionals</a></li>
            </ul>
        </nav>
        </div>
    </header>
    <fieldset class="cel- agrupar-t agrupar-e">
        <form method="POST" action='<c:out value="${pageContext.request.contextPath}"/>/procesarEditar' class="cmxform" id="capForm">
            <table class="cel- tablas-t tablas-e">
                <tr>
                	<td>Rut Profesional</td>
                	<td><input type="text" name="txtrutProfesional" value='<c:out value="${pro.getRutProfesional()}"/>' readonly="readonly"/></td>
                </tr>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="txtproNombres" value='<c:out value="${pro.getproNombres()}"/>'/></td>
                </tr>
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="txtproApellidos" value='<c:out value="${pro.getproApellidos()}"/>'/></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input type="text" name="txtproTelefono" value='<c:out value="${pro.getproTelefono()}"/>'/></td>
                </tr>
                <tr>
                    <td>Título Profesional</td>
                    <td><input type="text" name="txtprotituloprofesional" value='<c:out value="${pro.proTituloProfesional()}"/>'/></td>
                </tr>
				<tr>
                    <td>Proyecto</td>
                    <td><input type="text" name="txtproProyecto" value='<c:out value="${pro.proProyecto()}"/>'/></td>
                </tr>
				<tr>
                    <td>Run Usuario</td>
                    <td><input type="text" name="txtusuariorun" value='<c:out value="${pro.getUsuario_run()}"/>' readonly="readonly"/></td>
                </tr>
                <tr>
					<td><input type="submit" value="Ingresar Profesional"></td>
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