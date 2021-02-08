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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.2/dist/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src='<c:out value="${pageContext.request.contextPath}"/>/resources/js/script.js'></script>
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
    <div class="contenedor-listarvisita">
	        <form id="listarvisita" method="post" action="listarvisita" class="cmxform" id="visForm">
	            
	            <h2 id="titulo-listarvisita">Listar Visitas</h2>
	            <label id="label-listarvisita">ID Visita</label>
	            <input type="text" id="input-listarvisita" name="txtidvisita"/>
	            <label id="label-listarvisita">Fecha de pago</label>
	            <input type="date" id="input-listarvisita" name="txtvisfecha" placeholder="Fecha de pago" />
	            <label id="label-listarvisita">Hora</label>
	            <input type="time" id="txtvishora" name="txtMonto"/>
	            <label id="label-listarvisita">Lugar</label>
	            <input type="time" id="listarvisita" name="txtvislugar"/>
	            <label id="label-listarvisitas">Comentario</label>
	            <input type="time" id="input-listarvisita" name="txtviscomentarios"/>
	            <label id="label-listarvisita">Rut Cliente</label>
	            <select id="input-listarvisita" name="txtrutcliente">
	                <c:forEach items="${lcli}" var="lc">
	                    <option value='<c:out value="${lc.getRutCliente()}" />'><c:out value="${lc.getRutCliente()}" /></option>
	                </c:forEach>
	            </select>
	            <input type="submit" id="botonlistarvisita" value="Crear Visita">
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