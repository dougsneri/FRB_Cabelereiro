<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="<c:url value='/resources/css/produtos.css' />"/>
 	<link rel="stylesheet" href="<c:url value='/resources/css/estilos.css' />"/>
 	<link rel="stylesheet" href="<c:url value='/resources/css/forms.css' />"/>
 	<link rel="stylesheet" href="<c:url value='/resources/css/menu.css' />"/>

    <title>Portifólio</title>
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

    <div class="row margin-top">
        <div class="col-xs-12">
            <div id="slides" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#slides" data-slide-to="0" class="active"></li>
                    <li data-target="#slides" data-slide-to="1"></li>
                    <li data-target="#slides" data-slide-to="2"></li>
                    <li data-target="#slides" data-slide-to="3"></li>
                    <li data-target="#slides" data-slide-to="4"></li>
                    <li data-target="#slides" data-slide-to="5"></li>
                    <li data-target="#slides" data-slide-to="6"></li>
                    <li data-target="#slides" data-slide-to="7"></li>
                    <li data-target="#slides" data-slide-to="8"></li>
                    <li data-target="#slides" data-slide-to="9"></li>
                    <li data-target="#slides" data-slide-to="10"></li>
                    <li data-target="#slides" data-slide-to="11"></li>
                </ol>

                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="./resources/imagens/carousel01.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel02.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel03.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel04.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel05.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel06.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel07.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel08.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel09.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel10.jpg" alt="">
                    </div>
                    <div class="item">
                        <img src="./resources/imagens/carousel11.jpg" alt="">
                    </div>
                </div>
            </div>


            <a class="left carousel-control" href="#slides" 
            role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"
                    aria-hidden="true"></span>
                <span class="sr-only">Anterior</span>
            </a>

            <a class="right carousel-control" href="#slides" 
            role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"
                    aria-hidden="true"></span>
                <span class="sr-only">Proximo</span>
            </a>            
        </div>
    </div>


    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>