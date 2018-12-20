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
                <li>
                    <a href=<c:url value="/"/>>Inicio</a>
                </li>
                <li>
                	<a href=<c:url value="/consulte_agendamentos"/>>Consulte agendamentos</a>
                </li>
                <li>
                	<a href=<c:url value="/agende"/>>Agende</a>
                </li>
                <li>
                    <a href=<c:url value="/portifolio"/>>Portifólio</a>
                </li>
                <li>
                    <a href=<c:url value="/cadastroProcedimento"/>>Cadastro de Procedimentos</a>
                </li>
                <li>
                    <a href=<c:url value="cadastroCliente"/>>Cadastro de Clientes</a>
                </li>
                <li class="icon">
                    <a href="javascript:void(0)" onclick="mostrarMenu()">&#9776;</a>
                </li>
            </ul>
        </nav>
    </header>

	<div class="container" style="margin-top: 50px;">
		<div class="row">
			<div class="col-sm-6">

				<div class="form-horizontal">
					<h1>Cadastro de Procedimentos</h1>

					<form action=<c:url value="/cadprocedimento"/> method="post">

						<div class="form-group">
							<label class="control-label col-sm-3" for="descricao">Descrição
								do Procedimento:</label>
							<div class="col-sm-9">
								<input class="form-control" type="text" name="descricao"
									id="descricao" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-sm-3" for="valor">Valor:</label>
							<div class="col-sm-9">
								<input class="form-control" type="text" name="valor"
									id="valor" />
							</div>
						</div>

						<div class="form-group">
							<input type="submit" value="Incluir Procedimento"
								class="btn btn-info" />
						</div>

					</form>
				</div>
			</div>
		</div>

	</div>

	<script src="../scripts/listaVagas.js"></script>
</body>

</html>