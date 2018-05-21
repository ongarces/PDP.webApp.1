<%-- 
    Document   : modCurso
    Created on : 20/05/2018, 09:25:14 PM
    Author     : cgaop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>MOD.CURSOS</title>

        <!-- Bootstrap core CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.servletContext.contextPath}/css/jumbotron.css" rel="stylesheet">
    </head>

    <body>

        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">

            <a class="navbar-brand" href="${pageContext.servletContext.contextPath}/view/menu.jsp">Aplicacion - C.MOD -</a>

            <a class="btn" href="${pageContext.servletContext.contextPath}/view/cursoLista.jsp">atras</a>
        </nav>

        <main role="main">

            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
                <div class="container h-100">
                    <div class="row h-100 justify-content-center align-items-center">

                        <form method="post"
                              class="col-10"
                              action="${pageContext.servletContext.contextPath}/CursosServlet">

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Id del curso</span>
                                </div>
                                <input type="text" name="txtidcurso" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm"
                                       value="${sessionScope.CMODIFICADO.getIdCurso()}" readonly>
                            </div>

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Nombre</span>
                                </div>
                                <input type="text" name="txtnombrecurso" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm" 
                                       value="${sessionScope.CMODIFICADO.getNombre()}">
                            </div>

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Horas</span>
                                </div>
                                <input type="text" name="txthorascurso" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm" 
                                       value="${sessionScope.CMODIFICADO.getHoras()}">
                            </div>

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Valor del curso</span>
                                </div>
                                <input type="text" name="txtvalorcurso" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm"  
                                       value="${sessionScope.CMODIFICADO.getValorCurso()}">
                            </div>

                            <div class="input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Estado</span>
                                </div> 
                                <div class="input-group-sm col-auto">
                                    <select name="txtestadocurso" id="inputEstado" 
                                            class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                                        <option value="TRUE">Activo</option>
                                        <option value="FALSE">Inactivo</option>
                                    </select>
                                </div>
                            </div>
                    </div>
                    <br>

                    <!-- DIV BOTONES -->
                    <center>
                        <div class="">
                            <button name="accion" value="actualizar" type="submit" class="btn btn-warning">Actualizar curso</button>
                            <!-- envio el form con las variables -->
                            <br>
                            <a class="btn btn-secondary" href="${pageContext.servletContext.contextPath}/view/cursoLista.jsp">atras</a>
                        </div>
                    </center>

                    </form><!-- FORMULARIO -->
                </div>
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