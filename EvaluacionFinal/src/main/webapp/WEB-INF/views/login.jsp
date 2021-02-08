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
    <title>Inicio Sesión</title>

    <link href='<c:out value="${pageContext.request.contextPath}"/>/resources/CSS/estilos.css' rel="stylesheet">
</head>

<body>
    <header class="header-2">
        <input type="checkbox" id="btn-menu">
        <label for="btn-menu" ><i class="fas fa-bars"></i></label>
        <nav>
            <ul>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Inicio</a></li>
                <li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Contacto</a></li>
            </ul>
        </nav>
        <div class="wave-2" style="height: 90px; overflow: hidden;">

            </svg></div>
        
    </header>
     <div class="contenedor-login">
            <img src="Imagenes/login.png" alt="" class="imagen-login">
            <form id="login" method='POST' name='loginForm' action="<c:url value='login' />">
                <h2 class="titulo-login">Bienvenido otra vez</h2>
                <p>Gracias por regresar, por favor ingrese a su cuenta llenando este formulario</p>
                <label for="" id="label-login">Nombre</label>
                <input type="text" name="username" id="input-login" placeholder="Nombre" />
                <label for="" id="label-login">Contraseña</label>
                <input type="password" name="password" id="input-login" placeholder="Ingrese contraseña" />
                <input type="submit" value="Ingresar" id="boton-login">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
            <%String error = (String) request.getAttribute("error");
					 if (error != null && error.equals("true"))
					 {
					 out.println("<h4 style=\"color:red\">Usuario o clave equivocada. Por favor intente nuevamente</h4>");
				 }%>
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