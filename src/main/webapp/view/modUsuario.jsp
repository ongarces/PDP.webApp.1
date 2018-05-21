<%-- 
    Document   : modUsuario
    Created on : 20/05/2018, 07:06:45 PM
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

        <title>MOD.USERS</title>

        <!-- Bootstrap core CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.servletContext.contextPath}/css/jumbotron.css" rel="stylesheet">
    </head>

    <body>

        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">

            <a class="navbar-brand" href="${pageContext.servletContext.contextPath}/view/menu.jsp">Aplicacion - U.MOD -</a>

            <a class="nav-link btn" href="${pageContext.servletContext.contextPath}/view/usuarioLista.jsp">atras</a>
        </nav>

        <main role="main">

            <!-- Main jumbotron for a primary marketing message or call to action -->
            <div class="jumbotron">
                <div class="container h-100">
                    <div class="row h-100 justify-content-center align-items-center">

                        <form method="post"
                              class="col-10"
                              action="${pageContext.servletContext.contextPath}/UsuariosServlet">

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Documento</span>
                                </div>
                                <input type="text" name="txtdocumento" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm"
                                       value="${sessionScope.UMODIFICADO.getDocumento()}" readonly>
                            </div>

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Nombres</span>
                                </div>
                                <input type="text" name="txtnombres" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm" 
                                       value="${sessionScope.UMODIFICADO.getNombres()}">
                            </div>

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Apellidos</span>
                                </div>
                                <input type="text" name="txtapellidos" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm" 
                                       value="${sessionScope.UMODIFICADO.getApellidos()}">
                            </div>

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Correo</span>
                                </div>
                                <input type="email" name="txtemail" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm"  
                                       value="${sessionScope.UMODIFICADO.getEmail()}">
                            </div>

                            <div class="input-group input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Clave</span>
                                </div>
                                <input type="password" name="txtclave" 
                                       class="form-control col-sm-6" aria-label="Small" aria-describedby="inputGroup-sizing-sm" 
                                       value="${sessionScope.UMODIFICADO.getClave()}">
                            </div>



                            <div class="input-group">
                                <div class="input-group-prepend">                                
                                    <span class="input-group-text" id="inputGroup-sizing-sm">Estado</span>
                                </div> 
                                <div class="input-group-sm col-auto">
                                    <select name="txtestado" id="inputEstado" 
                                            class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                                        <option value="TRUE">Activo</option>
                                        <option value="FALSE">Inactivo</option>
                                    </select>
                                </div>

                                <div class="input-group">
                                    <div class="input-group-prepend">                                
                                        <span class="input-group-text" id="inputGroup-sizing-sm">Rol</span>
                                    </div> 
                                    <div class="input-group-sm col-auto">
                                        <select id="inputState" name="txtrol" 
                                                class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm">
                                            <option value="Admin">Admin</option>
                                            <option value="Consulta">Consulta</option>
                                            <option value="Visitante">Visitante</option>
                                        </select>
                                    </div>
                                </div>
                            </div>



                    </div>
                    <br>

                    <!-- DIV BOTONES -->
                    <center>
                        <div class="">
                            <button name="accion" value="actualizar" type="submit" class="btn btn-warning">Actualizar usuario</button>
                            <!-- envio el form con las variables -->
                            <br>
                            <a class="btn btn-secondary" href="${pageContext.servletContext.contextPath}/view/usuarioLista.jsp">atras</a>
                        </div>                            
                        <!--div class="">
                            <button name="accion" value="listar" type="submit" class="btn btn-primary">Listar Usuarios</button>
                        </div-->
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