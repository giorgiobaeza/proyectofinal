<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crear Capacitación</title>
	<link href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/estilo.css' rel="stylesheet">
    <script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}">/resources/js/script.js</c:out>'></script>   
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    
</head>
<body>
		<header id="seccion">
        <h2> CREAR CAPACITACION</h2>
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
        <form method="post" action="crearCapacitacionProcesar" class="cmxform" id="capForm">
            <table class="cel- tablas-t tablas-e">
                <tr>
                	<td>Id Visita</td>
                	<td><input type="text" name="txtidvisita" id="idvis"/></td>
                </tr>
                <tr>
                    <td>Fecha de Visita</td>
                    <td><input type="date" name="txtvisfecha" id="visfecha"/></td>
                </tr>
                <tr>
                    <td>Hora de visita</td>
                    <td><input type="time" name="txtvishora" id="vishora"/></td>
                </tr>
                <tr>
                    <td>Lugar</td>
                    <td><input type="text" name="txtvislugar" id="vislugar"/></td>
                </tr>
                <tr>
                    <td>Comentarios</td>
                    <td><input type="text" name="txtviscomentarios" id="viscomentarios" /></td>
                </tr>
				<tr>
				<tr>
                    <td>Rut Cliente</td>
					<td>
                    	<select name="txtCliente_rutcliente">
	            			<c:forEach items="${lcli}" var="lc">
                    			<option value='<c:out value="${lc.getRutCliente()}" />'><c:out value="${lc.getRutCliente()}" /></option>
                    		</c:forEach>
                    	</select>
                    </td>
                </tr>
				<tr>
					<td><input type="submit" value="Ingresar Visita"></td>
				</tr>
                </table>
        </form>
    </fieldset>
    <footer id="pie">
        <blockquote><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Volver a Inicio</a></blockquote>
        Derechos Reservados G2 &copy; 2020
      </footer>
</body>
</html>