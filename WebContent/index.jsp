<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Última versão CSS compilada e minificada -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Tema opcional -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Última versão JavaScript compilada e minificada -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<title>Avaliação Supero</title>
</head>
<body>

<%
if(request.getAttribute("msgErro") != null) {
 %> 
	<div class="alert alert-danger">
	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
		<strong>Esse procedimento não existe!</strong>
	</div>
<%
	}
 %> 

<form action="AgendaController" method="post">
<div class="form-group col-md-12 mb-2"></div>
<div class="form-group col-md-4 mb-2">
<label for="numero">Procedimento:</label> 
	<input type="text" class="form-control form-control-sm" id="numero" placeholder="Procedimento" 
		name="numero" >
</div>
<div class="form-group col-md-12 mb-2"></div>
<div class="form-group col-md-4 mb-2">
<label for="idade">Idade:</label> 
	<input type="text" class="form-control form-control-sm" id="idade" placeholder="Idade" 
		name="idade" >
</div>
<div class="form-group col-md-12 mb-2"></div>
<div class="form-group col-md-4 mb-2">
<label for="sexo">Sexo:</label> 
	<input type="text" class="form-control form-control-sm" id="sexo" placeholder="M/F" 
		name="sexo" >
</div>
<div class="form-group col-md-12 mb-2"></div>
<div class="form-group col-md-4 mb-2">
	<button type="submit" title="Cronograma Previsto" class="btn btn-outline-light" style="background-color: #0078c1;" 
		data-toggle="modal" data-target="#cronogramaModal">
		<i class="fas fa-plus-circle fa-lg"></i> Cronograma Previsto
	</button>
</div>
<div class="form-group col-md-12 mb-2"></div>

</form>

<jsp:include page="lista.jsp" />

</body>
</html>