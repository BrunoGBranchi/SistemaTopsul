<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">
<title>Listagem abastecimentos</title>
</head>
<body>
	<div class="container-fluid">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2>Abastecimentos Cadastrados</h2>
			</div>
			<div class="table-responsive">
				<table class="table table-bordered table-hover ">
					<tr>
						<th class="text-center hidden-xs">#</th>
						<th class="text-center hidden-xs">Data</th>
						<th class="text-center">Motorista</th>
						<th class="text-center">Litros</th>
						<th class="text-center hidden-xs">KM Inicial</th>
						<th class="text-center hidden-xs">KM Final</th>
						<th class="text-center">Local</th>
						<th class="text-center">Veiculo</th>
						<th class="text-center hidden-xs">Combustivel</th>
						<th class="text-center hidden-xs">Média</th>
						<th class="text-center hidden-xs">Nº Nota Fiscal</th>
						<th class="hidden-xs">Excluir</th>
					</tr>
					<c:forEach var="a" items="${abastecimentos}">

						<tr>
							<td class="text-center hidden-xs">${a.codigo}</td>
							<td class="hidden-xs">${a.data}</td>
							<td>${a.motorista}</td>
							<td>${a.litros}</td>
							<td class="hidden-xs">${a.kmInicial}</td>
							<td class="hidden-xs">${a.kmFinal}</td>
							<td>${a.local}</td>
							<td>${a.placa}</td>
							<td class="hidden-xs">${a.tipoCombustivel}</td>
							<td class="hidden-xs">${a.media}</td>
							<td class="hidden-xs">${a.num_fiscal}</td>
							<td class="hidden-xs">
							<a href="<c:url value = "/abastecimento/excluir/${a.codigo}"/>"><button class="btn btn-danger">Excluir</button></a>
									</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<br> <a href="<c:url value = "/abastecimento/cadastro"/>"><button class="btn btn-default">Cadastrar novo abastecimento</button></a>
		</div>
	</div>
</body>
</html>