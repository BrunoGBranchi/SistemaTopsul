<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">
<title>Acessar Sistema</title>
</head>
<body>
	<div class="container">
		<h2 class="text-center">Bem Vindo!</h2>
		<br>
		<div class="jumbotron">
			<h4 class="text-center">Selecione o sistema abaixo</h4>
			<div class="jumbotron">
				<a class="btn btn-lg btn-primary btn-block" href="<c:url value = "../abastecimento/cadastro"/>"> Sistema de abastecimento</a>
			</div>
		</div>
	</div>
</body>
</html>