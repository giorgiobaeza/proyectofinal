<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Crear Pagos</title>
	<link href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/estilo.css' rel="stylesheet">
    <script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}">/resources/js/script.js</c:out>'></script>   
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    
</head>
<body>
		<header id="seccion">
        <h2> Crear Pagos</h2>
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
        <form method="post" action="crearPagosProcesar" class="cmxform" id="pagForm">
            <table class="cel- tablas-t tablas-e">
                <tr style="display:none">
                	<td>Id Pagos</td>
                	<td><input type="text" name="txtidPagos" id="idpag" value='<c:out value="${nid}"/>'/></td>
                </tr>
                <tr>
                    <td>Fecha de Pago</td>
                    <td><input type="date" name="txtfechaPago" id="pagfecha"/></td>
                </tr>
                <tr>
                    <td>Monto Pago</td>
                    <td><input type="time" name="txtMonto" id="pagmonto"/></td>
                </tr>
                <tr>
                    <td>Mes</td>
                    <td>
                    	<select name="txtMes">
                    	    <option>Seleccione una opción</option>
                    		<option value="enero">Enero</option>
                    		<option value="febrero">Febrero</option>
                    		<option value="marzo">Marzo</option>
                    		<option value="abril">Abril</option>
                    		<option value="mayo">Mayo</option>
                    		<option value="junio">Junio</option>
                    		<option value="julio">Julio</option>
                    		<option value="agosto">Agosto</option>
                    		<option value="septiembre">Septiembre</option>
                    		<option value="octubre">Octubre</option>
                    		<option value="noviembre">Noviembre</option>
                    		<option value="diciembre">Diciembre</option>
                    	</select>
                    </td>
                </tr>
                <tr>
                    <td>Año</td>
                    <td><input type="text" name="txtAnio" id="pagaño" /></td>
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
					<td><input type="submit" value="Ingresar Pago"></td>
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