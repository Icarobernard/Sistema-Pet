<%-- 
    Document   : header
    Created on : 02/11/2019, 01:11:37
    Author     : Samsung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Pet System</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


        <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
        <link rel="stylesheet" href="fonts/icomoon/style.css">

        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/jquery-ui.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <link rel="stylesheet" href="css/jquery.fancybox.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">

        <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/style.css">

    </head>
    <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

        <!-- Modal pequeno -->


        <div class="modal fade bd-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <a class="btn btn-primary" data-toggle="modal" data-target=".aluno" style="color: white">Logar como aluno</a>
                    <a class="btn btn-success" data-toggle="modal" data-target=".administrador" style="color: white">Logar como administrador</a>
                </div>
            </div>
        </div>

        <div class="modal fade aluno" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <form action="LoginAluno" method="post" class="form-box">
                        <h3 class="h4 text-black mb-4">Login</h3>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email " name="txtEmail" required>
                        </div>

                        <div class="form-group mb-4">
                            <input type="password" class="form-control" placeholder="Senha" name="txtSenha" required>
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-primary btn-pill" value="Logar">
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="modal fade administrador" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <form action="LoginAdministrador" method="post" class="form-box">
                        <h3 class="h4 text-black mb-4">Login</h3>
                        <div class="form-group">
                            <input type="email" class="form-control" placeholder="Email " name="txtEmail" required>
                        </div>

                        <div class="form-group mb-4">
                            <input type="password" class="form-control" placeholder="Senha" name="txtSenha" required>
                        </div>

                        <div class="form-group">
                            <input type="submit" class="btn btn-primary btn-pill" value="Logar">
                        </div>
                    </form>
                </div>
            </div>
        </div>


        <div class="site-wrap">

            <div class="site-mobile-menu site-navbar-target">
                <div class="site-mobile-menu-header">
                    <div class="site-mobile-menu-close mt-3">
                        <span class="icon-close2 js-menu-toggle"></span>
                    </div>
                </div>
                <div class="site-mobile-menu-body"></div>
            </div>


            <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

                <div class="container-fluid">
                    <div class="d-flex align-items-center">
                        <div class="site-logo mr-auto w-25"><a href="index.jsp">Pet System</a></div>

                        <div class="mx-auto text-center">
                            <nav class="site-navigation position-relative text-right" role="navigation">
                                <ul class="site-menu main-menu js-clone-nav mx-auto d-none d-lg-block  m-0 p-0">
                                    <c:if test="${sessionScope.tipo != null}">
                                       <!-- <li><a href="TarefaController?acao=Only" class="nav-link">Tarefas</a></li>-->
                                        <li><div class="dropdown">
                                            <a  class="nav-link dropdown-toggle" href="#" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                Tarefas
                                            </a>

                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                                                <a class="dropdown-item" href="TarefaController?acao=Only">Todas tarefas</a>
                                                <a class="dropdown-item" href="TarefaController?acao=Completo">Tarefas completas</a>
                                                <a class="dropdown-item" href="TarefaController?acao=Solicitado">Solicitações</a>
                                            </div>
                                        </div>
                                        </li>
                                        <li><a href="ProjetoController?acao=Only" class="nav-link">Projetos</a></li>
                                            <c:if test="${sessionScope.tipo == 'administrador'}">
                                            <li><a href="AlunoController?acao=Only" class="nav-link">Alunos</a></li>


                                            <li><a href="AdministradorController?acao=Only" class="nav-link">Administradores</a></li>
                                            </c:if>

                                        <c:if test="${sessionScope.tipo == 'aluno'}">

                                            <li><a href="AlunoController?acao=prepararOperacao&operacao=Editar&id=${sessionScope.id}" class="nav-link">Editar perfil</a></li>
                                            </c:if>

                                    </c:if>
                                </ul>

                            </nav>
                        </div>

                        <div class="ml-auto w-25">
                            <nav class="site-navigation position-relative text-right" role="navigation">
                                <c:if test="${sessionScope.tipo == null}">
                                    <ul class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-lg-block m-0 p-0">
                                        <li class="cta"><a href="" class="nav-link" data-toggle="modal" data-target=".bd-example-modal-sm"><span>Login</span></a></li>
                                    </ul>
                                </c:if>
                                <c:if test="${sessionScope.tipo != null}">
                                    <a href="LogoutController" class="btn btn-secondary btn-pill" >Logout</a>


                                </c:if>
                            </nav>
                            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right"><span class="icon-menu h3"></span></a>
                        </div>
                    </div>
                </div>

            </header>
            
            
            
    </body>
    
</html>
