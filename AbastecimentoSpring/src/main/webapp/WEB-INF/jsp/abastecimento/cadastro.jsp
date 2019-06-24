<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<c:url value="/webjars/bootstrap/3.4.1/css/bootstrap.css"/>"
	rel="stylesheet" type="text/css">
<title>Abastecendo veiculo</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-3">

				<h2>Cadastrar abastecimento</h2>
				<c:if test="${alerta != null}">
					<div class="alert alert-success" role="alert">${alerta}</div>

				</c:if>
				<form class="form-horizontal"
					action='<c:url value="/abastecimento/enviar"></c:url>'
					method="post">
					<div class="form-group">
						<label class="col-sm-2 control-label">Motorista: </label>
						<div class="col-sm-10">
							<select class="form-control" name="motorista">
								<option>Selecione o motorista</option>
								<option>Lucio</option>
								<option>Rafael</option>
								<option>Claudio</option>
								<option>Xavier</option>
								<option>Celso</option>
								<option>Nilson Dave</option>
								<option>Murilo (Meia roda)</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Litros: </label>
						<div class="col-sm-10">
							<input class="form-control" type="number" placeholder="0"
								name="litros">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Nº Cupom Fiscal: </label>
						<div class="col-sm-10">
							<input class="form-control" type="number" placeholder="0"
								name="num_fiscal">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">KM Inicial: </label>
						<div class="col-sm-10">
							<input class="form-control" type="number" placeholder="000.000"
								name="kmInicial">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">KM Final: </label>
						<div class="col-sm-10">
							<input class="form-control" type="number" placeholder="000.000"
								name="kmFinal">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Local: </label>
						<div class="col-sm-10">
							<select class="form-control" name="local">
								<option>Selecione o local</option>
								<option>Garagem</option>
								<option>Posto AE (Xanxerê)</option>
								<option>Posto Ligeirinho (Ponte Serrada)</option>
								<option>Estrada</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Placa: </label>
						<div class="col-sm-10">
							<select class="form-control" name="placa">
								<option>Selecione o Veiculo</option>
								<option>HRO-9001 - Marcopolo GV 1800 DD</option>
								<option>GSW-5505 - Mercedes-Benz Sprintter CDI</option>
								<option>FFW-1250 - Comil Campione 3.25</option>
								<option>FFW-1273 - Comil Campione 3.25</option>
								<option>OJG-8805 - Mascarello Roma 310</option>
								<option>NEN-8359 - Marcopolo Andare Class</option>
								<option>DXX-6541 - GM Corsa</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">Combustivel: </label>
						<div class="col-sm-10">
							<select class="form-control" name="tipoCombustivel">
								<option>Selecione o combustivel</option>
								<option>Gasolina Comum</option>
								<option>Gasolina Adtivada</option>
								<option>Etanol</option>
								<option>Diesel comum</option>
								<option>Diesel S-10</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<button class="btn btn-success" type="submit">Cadastrar</button>
					</div>
				</form>

				<form action="<c:url value="/abastecimento/loginadm"></c:url>"
					method="post">
					<a href="<c:url value = "/abastecimento/cadastro"/>"><button
							class="btn btn-primary btn-block" type="submit">Listar
							abastecimentos</button></a>

				</form>
				<c:if test="${camposenha != null}">
					<c:if test="${alerta2 != null}">
						<div class="alert alert-danger" role="alert">${alerta2}</div>

					</c:if>
					<form class=""
						action="<c:url value="/abastecimento/registros"></c:url>"
						method="post">

						<div class="form-group">
							<label>Informe o codigo de acesso: </label> <input
								class="form-control" type="password" name="senha"
								required="required" placeholder="Senha administração" />
						</div>

						<div class="form-group">
							<button class="btn btn-success" type="submit">Acessar</button>
						</div>
					</form>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>