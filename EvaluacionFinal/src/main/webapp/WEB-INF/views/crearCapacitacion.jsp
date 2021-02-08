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
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/crearCapacitacion'>Crear Capacitacion</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarCapacitaciones'>Listar Capacitación</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/contacto'>Contacto</a></li>
            </ul>
        </nav>
        <div class="wave-2" style="height: 150px; overflow: hidden;"><svg viewBox="0 0 500 150"
                preserveAspectRatio="none" style="height: 100%; width: 100%;">
                
            </svg></div>
        
    </header>
    <div class="contenedor-crear-capacitacion">
        <form method="post" action="crearCapacitacionProcesar" class="cmxform" id="capForm">
            <h2 id="titulo-crearcapacitacion">Crear Capacitacíon</h2>
            <label id="label-crearcapacitacion">Id Capacitación</label>
            <input type="text" name="idcapacitacion" id="form-capacitacion" value='<c:out value="${nid}"/>'/>
            <label id="label-crearcapacitacion">Fecha de Capacitación</label>
            <input type="date" name="capfecha" id="form-capacitacion"/>
            <label id="label-crearcapacitacion">Hora de Capacitación</label>
            <input type="time" name="caphora" id="form-capacitacion"/>
            <label id="label-crearcapacitacion">Lugar de Capacitación</label>
            <input type="text" name="caplugar" id="form-capacitacion"/>
            <label id="label-crearcapacitacion">Duración de Capacitación en minutos</label>
            <input type="text" name="capduracion" id="form-capacitacion"/>
            <label id="label-crearcapacitacion">Seleccione Rut de Cliente</label>
            <select name="cliente_rutcliente" id="form-capacitacion">
                <c:forEach items="${lcli}" var="lc">
                    <option value='<c:out value="${lc.getRutCliente()}" />'>
                        <c:out value="${lc.getRutCliente()}" />
                    </option>
                </c:forEach>
            </select>
            <input type="submit" value="Ingresar Capacitación" id="boton-crearcapacitacion">
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