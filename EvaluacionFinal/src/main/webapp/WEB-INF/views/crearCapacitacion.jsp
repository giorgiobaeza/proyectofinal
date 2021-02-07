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
    <title>Crear Capacitación</title>

    <link href='<c:out value="${pageContext.request.contextPath}"/>/resources/CSS/estilos.css' rel="stylesheet">
</head>

<body>
    <header class="header-2">
        <input type="checkbox" id="btn-menu">
        <label for="btn-menu" ><i class="fas fa-bars"></i></label>
        <nav>
            <ul>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Inicio</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Listar Capacitación</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Contacto</a></li>
            </ul>
        </nav>
        <div class="wave-2" style="height: 150px; overflow: hidden;"><svg viewBox="0 0 500 150" preserveAspectRatio="none"
            style="height: 100%; width: 100%;">
            <path d="M-1.41,131.73 C169.01,195.88 329.85,35.03 518.90,148.52 L500.00,150.00 L0.00,150.00 Z"
                style="stroke: none; fill: rgb(255, 255, 255);"></path>
        </svg></div>
        
    </header>
		
    <fieldset class="cel- agrupar-t agrupar-e">
        <form method="post" action="crearCapacitacionProcesar" class="cmxform" id="capForm">
            <table class="cel- tablas-t tablas-e">
                <tr style="display:none">
                	<td>Id Capacitación</td>
                	<td><input type="text" name="idcapacitacion" id="idcap" value='<c:out value="${nid}"/>'/></td>
                </tr>
                <tr>
                    <td>Fecha de Capacitación</td>
                    <td><input type="date" name="capfecha" id="capfecha"/></td>
                </tr>
                <tr>
                    <td>Hora de Capacitación</td>
                    <td><input type="time" name="caphora" id="caphora"/></td>
                </tr>
                <tr>
                    <td>Lugar</td>
                    <td><input type="text" name="caplugar" id="caplugar"/></td>
                </tr>
                <tr>
                    <td>Duración</td>
                    <td><input type="text" name="capduracion" id="capduracion" /></td>
                </tr>
				<tr>
				<tr>
                    <td>Rut Cliente</td>
					<td>
                    	<select name="cliente_rutcliente">
	            			<c:forEach items="${lcli}" var="lc">
                    			<option value='<c:out value="${lc.getRutCliente()}" />'><c:out value="${lc.getRutCliente()}" /></option>
                    		</c:forEach>
                    	</select>
                    </td>
                </tr>
				<tr>
					<td><input type="submit" value="Ingresar Capacitacíon"></td>
				</tr>
                </table>
        </form>
    </fieldset>
    
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