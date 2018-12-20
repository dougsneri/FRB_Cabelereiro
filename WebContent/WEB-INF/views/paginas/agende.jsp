<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="<c:url value='/resources/css/estilos.css' />" />
<link rel="stylesheet" href="<c:url value='/resources/css/forms.css' />" />
<link rel="stylesheet" href="<c:url value='/resources/css/menu.css' />" />
<title>Agende</title>
</head>

<body class="body2">
	<header>
		<nav>
			<ul class="menu1" id="menuTopo">
				<li><a href=<c:url value="/"/>>Inicio</a></li>
				<li><a href=<c:url value="/consulte_agendamentos"/>>Consulte
						agendamentos</a></li>
				<li><a href=<c:url value="/agende"/>>Agende</a></li>
				<li><a href=<c:url value="/portifolio"/>>Portifólio</a></li>
				<li><a href=<c:url value="/cadastroProcedimento"/>>Cadastro
						de Procedimentos</a></li>
				<li><a href=<c:url value="cadastroCliente"/>>Cadastro de
						Clientes</a></li>
				<li class="icon"><a href="javascript:void(0)"
					onclick="mostrarMenu()">&#9776;</a></li>
			</ul>
		</nav>
	</header>

	<div class="container">
		<h1>Agende seu cliente</h1>

		<form action=<c:url value="/cadagenda"/> method="post">

			<div class="borda">

				<div class="linha">
				
					<label class="coluna col-2">Cliente:</label>
					<div class="col-8">
						<select name="idcliente" class="form-control">
							<c:forEach var="cliente" items="${lista_clientes}">
								<option value="${cliente.idCliente}">${cliente.nome} - Tel. ${cliente.telefone} - ${cliente.genero}</option>
							</c:forEach>
						</select>
					</div>

				</div>

				<div class="linha">
					<label class="coluna col-2">Data:</label>
					<div class="col-10">
						<input type="date" id="data" name="data" required="required">
					</div>
				</div>

				<div class="linha">
					<label class="coluna col-2" for="procedimento">Procedimento:</label>
					<div class="col-8">
						<select name="idprocedimento" class="form-control">
							<c:forEach var="procedimento" items="${lista_procedimentos}">
								<option value="${procedimento.idProcedimento}">${procedimento.descricao} - R$ ${procedimento.valor}</option>
							</c:forEach>
						</select>
					</div>
				</div>

				<div class="linha">
					<input type="submit" value="Incluir Agendamento" class="btn btn-info" />
				</div>
			</div>
		</form>
	</div>

	<script src="../scripts/listaVagas.js"></script>
</body>

</html>