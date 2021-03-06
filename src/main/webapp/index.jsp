<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Signin</title>

    <!-- Bootstrap core CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.servletContext.contextPath}/css/signin.css" rel="stylesheet">
  </head>

  <body class="text-center">
    <form class="form-signin"
          action="${pageContext.servletContext.contextPath}/IngresoServlet" method="post">
      
        <img class="mb-4" src="https://upload.wikimedia.org/wikipedia/commons/e/e2/Escudo_Atl%C3%A9tico_Nacional_1954.png" alt="" width="150" height="150">
      <h1 class="h3 mb-3 font-weight-normal">Ingreso</h1>
      
      <label for="inputEmail" class="sr-only">Correo</label>
      <input type="email" id="inputEmail" name="txtemail"
             class="form-control" placeholder="Email address" required autofocus>
      
      <label for="inputPassword" class="sr-only">>Clave</label>
      <input type="password" id="inputPassword" name="txtclave"
             class="form-control" placeholder="Password" required>      
      
      <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
      <p class="mt-5 mb-3 text-muted">&copy; 2018</p>
    </form>
  </body>
</html>

