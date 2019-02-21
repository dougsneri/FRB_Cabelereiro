<html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 	<link rel="stylesheet" href="<c:url value='/resources/css/estilos.css' />"/>
 	<link rel="stylesheet" href="<c:url value='/resources/css/menu.css' />"/>
    <title>Sabidos Beauty</title>
</head>

<body class="body1">
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


    <div class="container">
        <section>
            <article>
                <header>
                    <h2 class="font">Sabidos Beauty</h2>
                    <p class="font">
                        Este Sistema tem por objetivo auxilia-lo no agendamento de seus clientes, controle aqui sua agenda.
                        <br/> <h2 class="font"><i> "O Segredo do sucesso é a organização!"</i></h2>
                    </p>
                </header>
                <p class="font">
                    Conheça nossos <a href="" class="font">serviços</a> e descubra o que podemos fazer por você!
                </p>
            </article>
        </section>
<!--
        <aside>
            <h2 class="font">depoimentos de nossos clientes</h2>
            <p class="font">Excelente qualidade, ótimos profissionais</p>
            <p class="font">
                estava buscando uma solução para minha clínica e a ABC nos criou um sistema sob medida, mioto acima das nossas expectativas.
                Recomendo!
            </p>
        </aside>
-->

    </div>
    <footer class="footer">
        <p class="font">
            Avenida dos Sabidos, 1997 - Bairro Recanto dos Sabidos<br/>
            São Paulo, SP - CEP 00000-000

        </p>
        <p>&copy; Copyright 2018 - Todos os direitos reservados</p>
    </footer>

    <script>
        function mostrarMenu(){
            var elemento = document.getElementById("menuTopo");
            if(elemento.className === "menu"){
                elemento.className += " responsive";
            } else {
                elemento.className = "menu";
            }
        }
    </script>
</body>

</html>