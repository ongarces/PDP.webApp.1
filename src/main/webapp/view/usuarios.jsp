<%-- 
    Document   : usuarios
    Created on : 9/05/2018, 07:11:31 PM
    Author     : cgaop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="../../../../favicon.ico">

        <title>USERS</title>

        <!-- Bootstrap core CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.servletContext.contextPath}/css/jumbotron.css" rel="stylesheet">
    </head>

    <body>

        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">

            <a class="navbar-brand" href="${pageContext.servletContext.contextPath}/view/menu.jsp">Aplicacion - USUARIOS -</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">
                    
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/view/menu.jsp">MENU</a>
                    </li>                    
                    <li class="nav-item active">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/view/usuarios.jsp">Usuarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/view/cursos.jsp">Cursos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/UsuariosServlet?accion=listar">Listar Usuarios</a>
                    </li>                    
                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/CursosServlet?accion=listar">Listar Cursos</a>
                    </li>

                </ul>        
            </div>
        </nav>

        <main role="main">

            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
                <div class="container">
                    
                    <!-- FORMULARIO -->
                    <!-- FORM INVOCA AL SERVLET -->
                    <form method="post"
                          action="${pageContext.servletContext.contextPath}/UsuariosServlet">
                        <div class="form-row">
                            <div class="col">
                                <input type="text" name="txtdocumento" class="form-control" placeholder="Documento">
                            </div>
                            <div class="col">

                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col">
                                <input type="text" name="txtnombres" class="form-control" placeholder="Nombres">
                            </div>
                            <div class="col">
                                <input type="text" name="txtapellidos" class="form-control" placeholder="Apellidos">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col">
                                <input type="email" name="txtemail" class="form-control" placeholder="Email">
                            </div>
                            <div class="col">
                                <input type="password" name="txtclave" class="form-control" placeholder="Clave">
                            </div>
                        </div>

                        <div class="form-row">
                            <div class="col-sm-3">
                                <label for="inputState">Estado</label>                                 
                            </div>
                            <div class="col-sm-3">
                                <select id="inputState" class="form-control" name="txtestado">
                                    <option selected value="TRUE">Activo</option>
                                    <option value="FALSE">Inactivo</option>
                                </select>
                            </div>

                            <div class="col-sm-3">
                                <label for="inputState">Rol</label>                                 
                            </div>
                            <div class="col-sm-3">
                                <select id="inputState" class="form-control" name="txtrol">
                                    <option selected value="Admin">Admin</option>
                                    <option value="Consulta">Consulta</option>
                                    <option value="Visitante">Visitante</option>
                                </select>
                            </div>

                        </div>
                        <br><br><br>

                        <!-- DIV BOTONES -->
                        <center>
                            <div class="">
                                <button name="accion" value="crear" type="submit" class="btn btn-primary">Registrar usuario</button>
                            </div>                            
                            <!--div class="">
                                <button name="accion" value="listar" type="submit" class="btn btn-primary">Listar Usuarios</button>
                            </div-->
                        </center>

                    </form><!-- FORMULARIO -->

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