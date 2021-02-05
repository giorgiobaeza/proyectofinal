<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0">

    <link
        href="https://fonts.googleapis.com/css2?family=Nunito+Sans:ital,wght@0,300;0,400;0,600;1,200;1,300;1,700&family=Roboto:wght@100;300;400;500;700;900&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/1d5353b7f3.js" crossorigin="anonymous"></script>
    <title>Inicio</title>
  
    <link href='<c:out value="${pageContext.request.contextPath}"/>/resources/CSS/estilo.css' rel="stylesheet">
</head>
<body>
    <header>
        <input type="checkbox" id="btn-menu">
        <label for="btn-menu"><i class="fas fa-bars"></i></label>
        <nav>
            <ul>
            	<li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Inicio</a></li>
            	<li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Login</a></li>
            	<li><a href='<c:out value="${pageContext.request.contextPath}"/>/'>Contacto</a></li>
            </ul>
        </nav>
        <section class="textos-header">
            <h1>Objetivo del sistema de información</h1>
            <h2>Administramos todos los procesos de seguridad que se llevan a cabo día a día en su empresa.<h2>
        </section>
        <div class="wave" style="height: 150px; overflow: hidden;"><svg viewBox="0 0 500 150" preserveAspectRatio="none"
                style="height: 100%; width: 100%;">
                <path d="M-1.41,131.73 C169.01,195.88 329.85,35.03 518.90,148.52 L500.00,150.00 L0.00,150.00 Z"
                    style="stroke: none; fill: rgb(255, 255, 255);"></path>
            </svg></div>
    </header>
    <main>
        <section class="contenedor nuestras-asesorias">
            <div class="contenedor-nuestras-asesorias">
                <img src="Imagenes/Asesorias.png" alt="" class="imagen-asesorias">
                <div class="contenido-textos">
                    <h2 class="titulo-asesorias">Asesorias</h2>
                    <p>Nuestras asesorías están dirigidas a todas aquellas empresas que necesitan reforzar sus procesos
                        de seguridad, entregando atención personalizada en cada área de su compañía, garantizando así la
                        seguridad y el bienestar de sus empleados
                        .</p>
                </div>
            </div>
        </section>
        <section class="procesos">
            <div class="contenedor">
                <h2 class="titulo-procesos">Nuestros procesos y servicios</h2>
                <div class="procesos-servicios">
                    <div class="imagen-procesos1">
                        <img src="imagenes/ilustracion1.png" alt="">
                        <h3>Visitas constantes a nuestros clientes</h3>
                        <P>Visitamos su lugar de trabajo, oficinas, centros de distribucion
                            y salas de ventas para una evaluacion de protocolos de seguridad</P>
                    </div>
                    <div class="imagen-procesos2">
                        <img src="imagenes/ilustracion2.png" alt="">
                        <h3>Analisis de seguridad en su empresa</h3>
                        <P>Reconocimiento de protocolos y estructuras de
                            seguridad según evaluación de nuestros profesionales</P>
                    </div>
                    <div class="imagen-procesos3">
                        <img src="imagenes/ilustracion3.png" alt="">
                        <h3>Capacitaciones frecuentes</h3>
                        <P>Capacitamos a su personal determinando protocolos
                            de seguridad para las diferentes areas</P>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <footer>
        <div class="siguenos">
            <h2>Siguenos en nuestras redes sociales</h2>
        </div>
        <div class="redes-footer">
            <img src="Imagenes/facebook.png">
            <img src="Imagenes/instagram.png">
            <img src="Imagenes/twitter.png">
        </div>
        <h2 class="titulo-final">© 2021 @grupo2 - Todos los derechos reservados</h2>
    </footer>
    <script src="menu.js"></script>
</body>
</html>