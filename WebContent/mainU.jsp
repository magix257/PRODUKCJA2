<html>
<head>
  <meta charset=UTF-8>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");//HTTP 1.1
response.setHeader("Pragma", "no-cache");//HTTP 1.0
response.setHeader("Expires", "0");//Proxies

if(session.getAttribute("username")==null)
{
	response.sendRedirect("index.jsp");
}

%>
<div class="jumbotron text-center" style="margin-bottom:0">
<center><h1 style='font-size:50px'>PRODUKCJA USER </h1></center>
</div>
<div class="container">
<div class="col">
<div class="row">
<form action="pokazzlecenia.jsp">
<button type="submit" class="btn btn-outline-primary" style='font-size:36px'>POKAZ ZLECENIA  <i class='fas fa-list-ol'></i></button>
</form>
</div>
</div>
</div>
</body>
</html>
