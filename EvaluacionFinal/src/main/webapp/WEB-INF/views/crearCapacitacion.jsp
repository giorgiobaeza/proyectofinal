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
        <form id="contenedor-crear-capacitacion" method="post" action="contenedor-crear-capacitacion" class="cmxform" id="pagForm">
            
            <h2 id="contenedor-crear-capacitacion">Crear Capacitación</h2>
            <label for="" id="label-crear-capacitacion">ID capacitación</label>
            <input type="text" id="label-crear-capacitacion" name="idcapacitacion" value='<c:out value="${nid}"/>'/>
            <label for="" id="label-crear-capacitacion">Fecha de capacitación</label>
            <input type="date" id="label-crear-capacitacion" name="capfecha"/>
            <label for="" id="label-editarprofesional">Hora de capacitación</label>
            <input type="time" id="label-crear-capacitacion" name="caphora"/>
            <label for="" id="label-crear-capacitacion">Lugar de capacitación</label>
            <input type="text" id="input-editarprofesional" name="txtprotitulo"/>
            <label for="" id="llabel-crear-capacitacion">Duración de capacitación</label>
            <input type="text" id="label-crear-capacitacion" name=capduracion"/>
            <label for="" id="label-crear-capacitacion">RUT de cliente</label>
            <select name="cliente_rutcliente" id="form-capacitacion">
                <c:forEach items="${lcli}" var="lc">
                    <option value='<c:out value="${lc.getRutCliente()}" />'>
                        <c:out value="${lc.getRutCliente()}" />
                    </option>
                </c:forEach>
            </select>

            <input type="submit" id="botonecrearcapacitacion" value="Crear Capacitación">

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