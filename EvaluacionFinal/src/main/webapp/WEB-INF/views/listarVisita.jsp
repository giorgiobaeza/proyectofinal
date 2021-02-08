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
    <title>Listar Visita</title>

    <link href='<c:out value="${pageContext.request.contextPath}"/>/resources/CSS/estilos.css' rel="stylesheet">
</head>

<body>
    <header class="header-2">
        <input type="checkbox" id="btn-menu">
        <label for="btn-menu" ><i class="fas fa-bars"></i></label>
        <nav>
            <ul>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Inicio</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarVisitas'>Listar Visitas</a></li>
                 <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarDetalleChequeo'>Respoder Checklist</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/contacto'>Contacto</a></li>
            </ul>
        </nav>
        <div class="wave-2" style="height: 150px; overflow: hidden;"><svg viewBox="0 0 500 150" preserveAspectRatio="none"
            style="height: 100%; width: 100%;">
            <path d="M-1.41,131.73 C169.01,195.88 329.85,35.03 518.90,148.52 L500.00,150.00 L0.00,150.00 Z"
                style="stroke: none; fill: rgb(255, 255, 255);"></path>
        </svg></div>
        
    </header>
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
					<a href='<c:out value="${pageContext.request.contextPath}"/>/listarDetalleChequeo/<c:out value="${lv.getIdvisita()}"/>'>
						<button>Chequeos</button>
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