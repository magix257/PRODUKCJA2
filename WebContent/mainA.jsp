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
<div class="row">
<div class="col-sm-11">
</div>
<div class="col-sm-1">
<form action="Logout">
<button type="submit" class="btn btn-outline-primary" style='font-size:12px' >LOGOUT</button>
</form>
</div></div>

<h1>PRODUKCJA ADMIN</h1>

</div>
<div class="container">
<div class="row">
<br>
</div>
<div class="row">
<div class="col-sm-4">
<form action="dodajmaszyne.jsp">
<button type="submit" class="btn btn-outline-primary" style='font-size:36px' >DODAJ MASZYNE  </button>
</form>
</div>
<div class="col-sm-4">
<form action="pokazzlecenia.jsp">
<button type="submit" class="btn btn-outline-primary" style='font-size:36px'>POKAZ ZLECENIA </button>
</form>
</div>
<div class="col-sm-4">
</div>
</div>
</div>
</body>
</html>
