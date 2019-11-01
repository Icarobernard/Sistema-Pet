<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title> Área adm</title>
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
                        <div class="site-logo mr-auto w-25"><a href="index.html">OneSchool</a></div>

                        <div class="mx-auto text-center">
                            <nav class="site-navigation position-relative text-right" role="navigation">
                                <ul class="site-menu main-menu js-clone-nav mx-auto d-none d-lg-block  m-0 p-0">
                                    <li><a href="#home-section" class="nav-link">Home</a></li>
                                    <li><a href="#courses-section" class="nav-link">Courses</a></li>
                                    <li><a href="#programs-section" class="nav-link">Programs</a></li>
                                    <li><a href="#teachers-section" class="nav-link">Teachers</a></li>
                                </ul>
                            </nav>
                        </div>

                        <div class="ml-auto w-25">
                            <nav class="site-navigation position-relative text-right" role="navigation">
                                <ul class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-lg-block m-0 p-0">
                                    <li class="cta"><a href="#contact-section" class="nav-link"><span>Contact Us</span></a></li>
                                </ul>
                            </nav>
                            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right"><span class="icon-menu h3"></span></a>
                        </div>
                    </div>
                </div>

            </header>

            <div class="intro-section" id="home-section">

                <div class="slide-1" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-12">
                                <div class="row align-items-center">
                                    <div class="col-lg-6 mb-4">
                        
                        <c:if test="${operacao == 'Excluir'}"> 
                            <h1 data-aos="fade-up" data-aos-delay="100">
                                Excluir Administrador
                            </h1>
                             <p class="mb-4"  data-aos="fade-up" data-aos-delay="200">Deseja excluir ${administrador.nome}?</p>
                        </c:if>

                        <c:if test="${operacao == 'Incluir'}"> 
                            <h1 data-aos="fade-up" data-aos-delay="100">
                                Cadastrar Administrador
                            </h1>
                            <p class="mb-4"  data-aos="fade-up" data-aos-delay="200">Inclusão de novo usuário.</p>
                        </c:if>

                        <c:if test="${operacao == 'Editar'}"> 
                            <h1 data-aos="fade-up" data-aos-delay="100">
                                Editar Administrador
                            </h1>
                            <p class="mb-4"  data-aos="fade-up" data-aos-delay="200">Deseja editar ${administrador.nome}?</p>
                        </c:if>
                                        
                                        
                                        
                                        


                                    </div>

                                    <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
                                        <form action="AdministradorController?acao=confirmaOperacao&operacao=${operacao}" method="POST"
                                              class="form-box">

                                            <input input type="HIDDEN" name="id"
                                                   required value="${administrador.id}"
                                                   <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                            
                                            
                                            <h3 class="h4 text-black mb-4">Dados</h3>
                                            <div class="form-group">
                                                <input type="email" class="form-control" placeholder="Email " name="txtEmailAdministrador" required value="${administrador.email}"
                                                   <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" class="form-control" placeholder="Nome" name="txtNomeAdministrador" required value="${administrador.nome}"
                                                   <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                            </div>
                                            <div class="form-group mb-4">
                                                <input type="password" class="form-control" placeholder="Senha" name="txtSenhaAdministrador" required value="${administrador.senha}"
                                                   <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                            </div>
                                            <c:if test="${operacao == 'Excluir'}">
                                            <div class="form-group">
                                               <a href="AdministradorController?acao=Only" class="btn btn-secondary btn-pill" value="Cancelar">Voltar</a>
                                                <input type="submit" class="btn btn-danger btn-pill" value="Excluir">
                                                 
                                            </div>
                                           </c:if>
                                            
                                            <c:if test="${operacao == 'Incluir'}">
                                            <div class="form-group">
                                                <a href="AdministradorController?acao=Only" class="btn btn-secondary btn-pill" value="Cancelar">Voltar</a>
                                                <input type="submit" class="btn btn-primary btn-pill" value="Cadastrar">
                                                 
                                            </div>
                                            </c:if>
                                            
                                            <c:if test="${operacao == 'Editar'}">
                                            <div class="form-group">
                                                <a href="AdministradorController?acao=Only" class="btn btn-secondary btn-pill" value="Cancelar">Voltar</a>
                                                <input type="submit" class="btn btn-primary btn-pill" value="Editar">
                                                
                                            </div>  
                                            </c:if>
                                          
                                           
                                                                                    
                                        </form>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>



















            <footer class="footer-section bg-white">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <h3>About OneSchool</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro consectetur ut hic ipsum et veritatis corrupti. Itaque eius soluta optio dolorum temporibus in, atque, quos fugit sunt sit quaerat dicta.</p>
                        </div>

                        <div class="col-md-3 ml-auto">
                            <h3>Links</h3>
                            <ul class="list-unstyled footer-links">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Courses</a></li>
                                <li><a href="#">Programs</a></li>
                                <li><a href="#">Teachers</a></li>
                            </ul>
                        </div>

                        <div class="col-md-4">
                            <h3>Subscribe</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt incidunt iure iusto architecto? Numquam, natus?</p>
                            <form action="#" class="footer-subscribe">
                                <div class="d-flex mb-5">
                                    <input type="text" class="form-control rounded-0" placeholder="Email">
                                    <input type="submit" class="btn btn-primary rounded-0" value="Subscribe">
                                </div>
                            </form>
                        </div>

                    </div>

                    <div class="row pt-5 mt-5 text-center">
                        <div class="col-md-12">
                            <div class="border-top pt-5">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
            </footer>



        </div> <!-- .site-wrap -->

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