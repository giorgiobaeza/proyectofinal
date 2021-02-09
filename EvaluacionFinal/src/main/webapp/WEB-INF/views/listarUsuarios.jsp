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
    <title>Listar Usuario</title>
    <script src="https://kit.fontawesome.com/1d5353b7f3.js" crossorigin="anonymous"></script>

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
        
        
    </header>
    <fieldset class="cel- agrupar-t agrupar-e">
        <table class="cel- tablaadm-t tablaadm-e">
            <tr class="negrita">
                
                <th>Nombre</th>
                <th>Apellidos</th>
                <th>Fecha de nacimiento</th>
                <th>RUN</th>
                <th>Tipo de Usuario</th>
                <th></th>
            </tr>
            <c:forEach items="${lusuarios}" var="lu">
            <tr>
                <td><c:out value="${lu.getNombre()}" /></td>
                <td><c:out value="${lu.getApellido()}" /></td>
                <td><c:out value="${lu.getFechaNacimiento()}" /></td>
                <td><c:out value="${lu.getRun()}" /></td>
                <td><c:out value="${lu.getTipoUsuario()}" /></td>
            
            <td>
            <c:if test="${lu.getTipoUsuario()=='cliente' }">
					<a href='<c:out value="${pageContext.request.contextPath}"/>/editarCliente/<c:out value="${lu.getRun()}"/>'>
						<button>Editar</button>
					</a>							
			</c:if>	
			<c:if test="${lu.getTipoUsuario()=='administrativo' }">
					<a href='<c:out value="${pageContext.request.contextPath}"/>/editarAdministrativo/<c:out value="${lu.getRun()}"/>'>
						<button>Editar</button>
					</a>			
			</c:if>	
			<c:if test="${lu.getTipoUsuario()=='profesional' }">
					<a href='<c:out value="${pageContext.request.contextPath}"/>/editarProfesional/<c:out value="${lu.getRun()}"/>'>
						<button>Editar</button>
					</a>			
			</c:if>
			</td>
			</tr>
			</c:forEach>
			<tr>
				<td><a href='<c:out value="${pageContext.request.contextPath}"/>/crearUsuario'>
					<input type="button" value="Crear Usuario"></a></td>
			</tr>
        </table>

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