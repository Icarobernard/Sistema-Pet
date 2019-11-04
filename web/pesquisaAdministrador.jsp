<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title> Área adm</title>
    </head>
     <%@include file ="header.jsp" %>
    <body>
            <div class="intro-section" id="home-section">

                <div class="slide-1" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-12">
                                <div>
                                    <div class="col-md-12">



                                        <div data-aos="fade-up" data-aos-delay="100">
                                            <div class="search-list">
                                                <table class="table table-list-search table" id="myTable">
                                                    <thead>
                                                        <tr>
                                                            <th>Id</th>
                                                            <th>Nome</th>
                                                            <th>Email</th>
                                                            <th>Senha </th>
                                                            <th>operação</th>


                                                        </tr>

                                                    </thead>
                                                    <c:forEach items="${administradores}" var="administrador">
                                                        <tbody>
                                                            <tr>
                                                                <td><c:out value="${administrador.id}" /></td>
                                                                <td><c:out value="${administrador.nome}" /></td>
                                                                <td><c:out value="${administrador.email}" /></td>
                                                                <td><c:out value="${administrador.senha}" /></td>

                                                                <td><a style="color: #00F5FF " href="AdministradorController?acao=prepararOperacao&operacao=Editar&id=<c:out
                                                                           value="${administrador.id}" />" >Editar <i class="fas fa-user-edit"></i>   </a>

                                                                    <a style="color: #FF0000" href="AdministradorController?acao=prepararOperacao&operacao=Excluir&id=<c:out
                                                                           value="${administrador.id}" />" > Excluir <i class="fas fa-trash-alt"></i></a>  

                                                                </td>

                                                            </tr>

                                                        </c:forEach>

                                                    </tbody>
                                                    <hr style="height:2px; border:none; color:white; background-color: white; margin-top: 0px; margin-bottom: 0px;"/>
                                                </table>  
                                            </div>
                                            <a href="AdministradorController?acao=prepararOperacao&operacao=Incluir"><button class="btn btn-outline-info" type="submit" name="btnIncluir" >Add <i class="fas fa-user-plus"></i></button></a>
                                        </div>
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