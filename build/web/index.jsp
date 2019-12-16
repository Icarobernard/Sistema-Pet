<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="pt">
    <head>
        <title>Home</title>
        <%@ include file = "header.jsp" %>
    </head>


    <body>
        <div class="intro-section" id="home-section">

            <div class="slide-1" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <div class="row align-items-center">
                                <div class="col-lg-6 mb-4">
                                    <h1  data-aos="fade-up" data-aos-delay="100">Bem-vindo ${sessionScope.nome}</h1>
                                    <p class="mb-4"  data-aos="fade-up" data-aos-delay="200">Sistema de gerenciamento de tarefas do PET. Um melhor controle 
                                        para os projetos.</p>


                                </div>

                                <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
                                    <form action="AlunoController?acao=confirmaOperacao&operacao=Incluir" method="post" class="form-box">
                                        <h3 class="h4 text-black mb-4">Cadastro</h3>
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Email " name="txtEmailAluno" required value="${aluno.email}"
                                                   <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Nome"name="txtNomeAluno" required value="${aluno.nome}"
                                                   <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                            </div>
                                            <div class="form-group mb-4">
                                                <input type="password" class="form-control" placeholder="Senha" name="txtSenhaAluno" required value="${aluno.senha}"
                                                   <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                        </div>

                                        <div class="form-group">
                                            <input type="submit" class="btn btn-primary btn-pill" value="Cadastrar">
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="site-section" id="programs-section">
        <div class="container">
            <div class="row mb-5 justify-content-center">
                <div class="col-lg-7 text-center"  data-aos="fade-up" data-aos-delay="">
                    <h2 class="section-title">Nossa proposta</h2>
                    <p>Em uma conversa sobre organização, o grupo PET encontrou o problema de não existir uma maneira mais fácil de organizar os processos internos
                        de forma mais elaborada. 
                    </p>
                </div>
            </div>


            <div class="row mb-5 align-items-center">
                <div class="col-lg-7 mb-5 order-1 order-lg-2" data-aos="fade-up" data-aos-delay="100">
                    <img src="images/undraw_teaching.svg" alt="Image" class="img-fluid">
                </div>
                <div class="col-lg-4 mr-auto order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
                    <h2 class="text-black mb-4">O que foi feito?</h2>
                    <p class="mb-4">Foi proposto pelo professor e coordenador do grupo Jabour, o desenvolvimento de uma plataforma que busca a solução.
                       </p>

    

                </div>
            </div>


        </div>
    </div>



    <div class="site-section bg-image overlay" style="background-image: url('images/hero_1.jpg');">
        <div class="container">
            <div class="row justify-content-center align-items-center">
                <div class="col-md-8 text-center testimony">
                    <img src="images/person_4.jpg" alt="Image" class="img-fluid w-25 mb-4 rounded-circle">
                    <h3 class="mb-4">Jerome Jensen</h3>
                    <blockquote>
                        <p>&ldquo; Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum rem soluta sit eius necessitatibus voluptate excepturi beatae ad eveniet sapiente impedit quae modi quo provident odit molestias! Rem reprehenderit assumenda &rdquo;</p>
                    </blockquote>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section pb-0">

        <div class="future-blobs">
            <div class="blob_2">
                <img src="images/blob_2.svg" alt="Image">
            </div>
            <div class="blob_1">
                <img src="images/blob_1.svg" alt="Image">
            </div>
        </div>
        <div class="container">
            <div class="row mb-5 justify-content-center" data-aos="fade-up" data-aos-delay="">
                <div class="col-lg-7 text-center">
                    <h2 class="section-title">Funcionalidades</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 ml-auto align-self-start"  data-aos="fade-up" data-aos-delay="100">

                    <div class="p-4 rounded bg-white why-choose-us-box">

                        <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                            <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-graduation-cap"></span></span></div>
                            <div><h3 class="m-0">(CRUD) Cria, edita, remove alunos.</h3></div>
                        </div>

                        <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                            <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-university"></span></span></div>
                            <div><h3 class="m-0">CRUD de administradores para gerenciar o sistema.</h3></div>
                        </div>

                        <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                            <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-graduation-cap"></span></span></div>
                            <div><h3 class="m-0">CRUD de projetos do PET.</h3></div>
                        </div>
                        
                        <div class="d-flex align-items-center custom-icon-wrap custom-icon-light mb-3">
                            <div class="mr-3"><span class="custom-icon-inner"><span class="icon icon-graduation-cap"></span></span></div>
                            <div><h3 class="m-0">CRUD de tarefas dos projetos.</h3></div>
                        </div>

                    </div>


                </div>
                <div class="col-lg-7 align-self-end"  data-aos="fade-left" data-aos-delay="200">
                    <img src="images/person_transparent.png" alt="Image" class="img-fluid">
                </div>
            </div>
        </div>
    </div>





<%@ include file = "footer.jsp" %>

    

    <!-- .site-wrap -->

    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.sticky.js"></script>


    <script src="js/main.js"></script>

</body>
</html>