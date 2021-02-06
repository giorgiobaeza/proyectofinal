<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Listado de Visitas</title>
	<link href='<c:out value="${pageContext.request.contextPath}"/>/resources/css/estilo.css' rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src='<c:out value="${pageContext.request.contextPath}">/resources/js/script.js</c:out>'></script>   
</head>
<body>
	
    <header id="seccion">
        <h2> Listado de Visitas</h2>
        <blockquote><a href='<c:out value="${pageContext.request.contextPath}"/>/logout'>Cerrar Sesión</a></blockquote>
        <div class="content-menu">
        <input type="checkbox" id="check">
			<label class="icon-menu" for="check">
	        	<img src='<c:out value="${pageContext.request.contextPath}"/>/resources/img/icono-menu.png' alt="" class="icon-menu">
	       	</label>
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
    	<table>
    		<tr>
    			<th>ID Visita</th>
    			<th>Fecha</th>
    			<th>Hora</th>
    			<th>Lugar</th>
    			<th>Comentario</th>
    			<th>Rut Cliente</th>
    		</tr>
	    	<c:forEach items="${lvisita}" var="lv">
	            <tr>
	                <td><c:out value="${lv.getIdvisita()}" /></td>
	                <td><c:out value="${lv.getVisfecha()}" /></td>
	                <td><c:out value="${lv.getVishora()}" /></td>
	                <td><c:out value="${lv.getVislugar()}" /></td>
	                <td><c:out value="${lv.getViscomentarios()}" /></td>
	 	            <td><c:out value="${lv.getCliente_rutcliente()}" /></td>
	            
	            <td>
					<a href='<c:out value="${pageContext.request.contextPath}"/>/editarCliente/<c:out value="${lu.getRun()}"/>'>
						<button>Editar</button>
					</a>							
				</td>
				</tr>
			</c:forEach>
    	</table>
        <form method="POST" action='<c:out value="${pageContext.request.contextPath}"/>/crearVisita'>
        	<table>
        		<tr Style="display:none">
        			<td>Id Visita</td>
        			<td><input type="text" name="txtidvisita" id="txtidvisita" value='<c:out value="${nid}"/>'/></td>
        		</tr>
        		<tr>
        			<td>Fecha</td>
        			<td><input type="date"  name="txtvisfecha" id="txtvisfecha"/></td>
        		</tr>
        		<tr>
        			<td>Hora</td>
        			<td><input type="text" name="txtvishora" id="txtvishora"/></td>
        		</tr>
        		<tr>
        			<td>Lugar</td>
        			<td><input type="text" name="txtvislugar" id="txtvislugar"/></td>
        		</tr>
        		<tr>
        			<td>Comentario</td>
        			<td><input type="text" name="txtviscomentarios" id="txtviscomentarios"/></td>
        		</tr>
        		<tr>
        			<td>Rut cliente</td>
					<td>
                    	<select name="txtrutcliente">
	            			<c:forEach items="${rutclie}" var="rc">
                    			<option value='<c:out value="${rc.getRutCliente()}" />'><c:out value="${rc.getRutCliente()}"/></option>
                    		</c:forEach>
                    	</select>
                    </td>        		
                </tr>
        		<tr>
        			<td><input type="submit" value="Crear Visita"/></td>
        		</tr>
        	</table>
        </form>
        <p><c:out value="${msgcrear}"/></p>
    </fieldset>
    <footer id="pie">
        <blockquote><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Volver a la página de Inicio</a></blockquote>
        Derechos Reservados G3 &copy; 2020
      </footer>
</body>
</html>