<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Erro</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

</head>
<body>
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
<%-- 	<%@include file="../cabecalho.jsp" %> --%>
	<div class="container alert alert-danger" style="margin-top:50px;">
		<h2>Ocorreu o seguinte erro:</h2>
		<div>${erro}</div>
	</div>

</body>
</html>