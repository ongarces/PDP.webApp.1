<%-- 
    Document   : cursoLista
    Created on : 20/05/2018, 04:40:28 PM
    Author     : cgaop
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>LISTA CURSOS</title>

        <!-- Bootstrap core CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.servletContext.contextPath}/css/jumbotron.css" rel="stylesheet">
    </head>

    <body>

        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">

            <a class="navbar-brand" href="${pageContext.servletContext.contextPath}/view/menu.jsp">Aplicacion - LISTA CURSO -</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/view/menu.jsp">MENU</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/view/usuarios.jsp">Usuarios <span class="sr-only">(current)</span></a>
                    </li>                    
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/view/cursos.jsp">Cursos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/UsuariosServlet?accion=listar">Listar Usuarios</a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/CursosServlet?accion=listar">Listar Cursos</a>
                    </li>

                </ul>        
            </div>
        </nav>

        <main role="main">

            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
                <div class="container">
                    
                    <h2> TABLA </h2>
                    <br><br>

                    <table class="table">
                        <caption>Lista de cursos</caption>
                        <thead>
                            <tr>
                                <th scope="col">Id del curso</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Horas</th>
                                <th scope="col">Valor del curso</th>
                                <th scope="col">Estado</th>
                                <th scope="col">Accion</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="curso" items="${sessionScope.LISTADO}">
                                <tr>
                                    <td><c:out value="${curso.getIdCurso()}"/></td>
                                    <td><c:out value="${curso.getNombre()}"/></td>
                                    <td><c:out value="${curso.getHoras()}"/></td>
                                    <td><c:out value="${curso.getValorCurso()}"/></td>
                                    <td><c:out value="${curso.getEstado()}"/></td>
                                    <td>
                                        <div class="col">
                                            <a class="btn btn-primary" 
                                               href="${pageContext.servletContext.contextPath}/CursosServlet?accion=eliminar&idCurso=${curso.getIdCurso()}">Eliminar</a>
                                            <a class="btn btn-primary"
                                               href="${pageContext.servletContext.contextPath}/CursosServlet?accion=modificar&idCurso=${curso.getIdCurso()}">Modificar</a>
                                        </div> 
                                    </td>
                                </tr>
                            </c:forEach>
                            
                        </tbody>
                    </table>
                </div>
            </div>

        </main>

        <%@ include file = "/WEB-INF/jspf/footer.jspf" %>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

    </body>
</html>
