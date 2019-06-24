<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>Abastecer veiculo - Bem vindo!</title>
<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="<c:url value="/resources/img/favicon.ico"/>" type="image/x-icon">

</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">
				<h1 class="text-center">Bem Vindo!</h1>
				
				<c:if test="${alerta != null}">
					<div class="alert alert-danger" role="alert">${alerta}</div>
					
					</c:if>
					
				<form class="form-group"
					action='<c:url value="/login/verificar"></c:url>' method="post">
					<div class="form-group">
						<label>Informe o codigo de acesso: </label> 
						<input class="form-control" type="password"
							name="senha" required="required" placeholder="Sua Senha" />
					</div>
					
					<button class="btn btn-success" type="submit">Acessar</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>