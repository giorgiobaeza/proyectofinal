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
    <title>Editar Profesional</title>

    <link href='<c:out value="${pageContext.request.contextPath}"/>/resources/CSS/estilos.css' rel="stylesheet">
</head>

<body>
    <header class="header-2">
        <input type="checkbox" id="btn-menu">
        <label for="btn-menu" ><i class="fas fa-bars"></i></label>
        <nav>
            <ul>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Inicio</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/crearUsuario'>Crear Usuario</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarUsuarios'>Listar Usuarios</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/listarPagos'>Listar pagos</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/contacto'>Contacto</a></li>
            </ul>
        </nav>
        <div class="wave-2" style="height: 150px; overflow: hidden;"><svg viewBox="0 0 500 150" preserveAspectRatio="none"
            style="height: 100%; width: 100%;">
            <path d="M-1.41,131.73 C169.01,195.88 329.85,35.03 518.90,148.52 L500.00,150.00 L0.00,150.00 Z"
                style="stroke: none; fill: rgb(255, 255, 255);"></path>
        </svg></div>
        
    </header>
    
        <div class="contenedor-editarprofesional">
        <form id="editarprofesional" method="post" action="editarprofesional" class="cmxform" id="pagForm">
            
            <h2 id="titulo-editarprofesional">Editar Profesional</h2>
            <label for="" id="label-editarprofesional">Nombres</label>
            <input type="text" id="input-editarprofesional" name="txtpronombres"/>
            <label for="" id="label-editarprofesional">Apellidos</label>
            <input type="text" id="input-editarprofesional" name="txtproapellidos"/>
            <label for="" id="label-editarprofesional">Teléfono</label>
            <input type="text" id="input-editarprofesional" name="txtprotelefono"/>
            <label for="" id="label-editarprofesional">Título profesional</label>
            <input type="text" id="input-editarprofesional" name="txtprotitulo"/>
            <label for="" id="label-editarprofesional">Proyecto</label>
            <input type="text" id="input-editarprofesional" name=txtproproyecto"/>
            <label for="" id="label-editarprofesional">RUT</label>
            <input type="text" id="input-editarprofesional" name=xtusuariorun"/>



            <input type="submit" id="botoneditarprofesional" value="Ingresar Profesional">

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