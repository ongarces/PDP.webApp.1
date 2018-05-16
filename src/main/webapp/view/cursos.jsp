<%-- 
    Document   : cursos
    Created on : 9/05/2018, 07:11:40 PM
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

        <title>Template for CURSOS</title>

        <!-- Bootstrap core CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.servletContext.contextPath}/css/jumbotron.css" rel="stylesheet">
    </head>

    <body>

        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">

            <a class="navbar-brand" href="#">Aplicacion - CURSOS -</a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav mr-auto">

                    <li class="nav-item active">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/view/usuarios.jsp">Usuarios <span class="sr-only">(current)</span></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="${pageContext.servletContext.contextPath}/view/menu.jsp">MENU</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">Disabled</a>
                    </li>

                </ul>        
            </div>
        </nav>

        <main role="main">

            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
                <div class="container">
                    
                    <!-- FORM INVOCA AL SERVLET -->
                    <form method="post"
                          action="${pageContext.servletContext.contextPath}/CursosServlet">
                        
                        <div class="form-row">
                            <div class="col">
                                <input type="text" name="txtidcurso" class="form-control" placeholder="Id del curso">
                            </div>                           
                            <div class="col">
                                <input type="text" name="txtnombrecurso" class="form-control" placeholder="Nombre del curso">
                            </div>
                        </div>

                        <div class="form-row">                            
                            <div class="col">
                                <input type="number" name="txthorascurso" class="form-control" placeholder="Horas del curso">
                            </div>
                            <div class="col">
                                <input type="text" name="txtvalorcurso" class="form-control" placeholder="Valor del curso">
                            </div>
                        </div>

                        <div class="form-row">                            
                            <div class="col-sm-3">
                                 <label for="inputState">Estado</label>                                 
                            </div>
                            <div class="col-sm-3"> 
                                <select id="inputState" class="form-control" name="txtestadocurso">
                                    <option selected value="TRUE">Activo</option>
                                    <option value="FALSE">Inactivo</option>
                                </select>
                            </div>
                        </div>
                       
                        <br>
                        
                        <div class="form-row">
                            <div class="col-sm-2">
                                <button name="accion" value="crear" type="submit" class="btn btn-primary">Registrar Curso</button>
                            </div>
                            <div class="col-sm-2">
                                <button name="accion" value="listar" type="submit" class="btn btn-primary">Listar Cursos</button>
                            </div>
                        </div>
                        
                    </form>

                </div>
            </div>

        </main>

        <footer class="container">
            <p>&copy; Company 2017-2018</p>
        </footer>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

    </body>
</html>