<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>Listado de Pagos</title>
	<link href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/estilo.css' rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}">/resources/js/script.js</c:out>'></script>   

<body>
	<header id="seccion">
        <h2>Listado de Pagos</h2>
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
        <form action='<c:out value="${pageContext.request.contextPath}"/>/crearPagos'>
	        <table class="cel- tablaadm-t tablaadm-e">
	            <tr class="negrita">
	            	<th>Id Pagos</th>
	            	<th>Fecha</th>
	            	<th>Monto</th>
	            	<th>Mes</th>
	            	<th>Año</th>
	            	<th>Rut Cliente</th>
	            </tr>
	            <c:forEach items="${lPagos}" var="lp">
				<tr>
					<td><c:out value="${lp.getIdPagos()}" /></td>
					<td><c:out value="${lp.getFechaPago()}" /></td>
					<td><c:out value="${lp.getMonto()}" /></td>
					<td><c:out value="${lp.getMes()}" /></td>
					<td><c:out value="${lp.getAnio()}" /></td>
					<td><c:out value="${lp.getCliente_rutcliente()}" /></td>
				</tr>
				</c:forEach>
				<tr>
					<td><a href='<c:out value="${pageContext.request.contextPath}"/>/crearPagos'>
					<input type="button" value="Crear Pagos"></a></td>
				</tr>
	        </table>
        </form>
    </fieldset>
    <footer id="pie">
        <blockquote><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Volver a Inicio</a></blockquote>
        Derechos Reservados G3 &copy; 2020
      </footer>
</body>
</html>