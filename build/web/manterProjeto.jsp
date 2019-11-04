<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title>Projeto</title>
    </head>
    <%@include file ="header.jsp" %>
    <body>
        <div class="intro-section" id="home-section">

            <div class="slide-1" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12">
                            <div class="row align-items-center">
                                <div class="col-lg-6 mb-4">

                                    <c:if test="${operacao == 'Excluir'}"> 
                                        <h1 data-aos="fade-up" data-aos-delay="100">
                                            Excluir Projeto
                                        </h1>
                                        <p class="mb-4"  data-aos="fade-up" data-aos-delay="200">Deseja excluir ${projeto.nome}?</p>
                                    </c:if>

                                    <c:if test="${operacao == 'Incluir'}"> 
                                        <h1 data-aos="fade-up" data-aos-delay="100">
                                            Cadastrar Projeto
                                        </h1>
                                        <p class="mb-4"  data-aos="fade-up" data-aos-delay="200">Inclusão de novo usuário.</p>
                                    </c:if>

                                    <c:if test="${operacao == 'Editar'}"> 
                                        <h1 data-aos="fade-up" data-aos-delay="100">
                                            Editar Projeto
                                        </h1>
                                        <p class="mb-4"  data-aos="fade-up" data-aos-delay="200">Deseja editar ${projeto.nome}?</p>
                                    </c:if>






                                </div>

                                <div class="col-lg-5 ml-auto" data-aos="fade-up" data-aos-delay="500">
                                    <form action="ProjetoController?acao=confirmaOperacao&operacao=${operacao}" method="POST"
                                          class="form-box">

                                        <input input type="HIDDEN" name="id"
                                               required value="${projeto.id}"
                                               <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>


                                               <h3 class="h4 text-black mb-4">Dados</h3>
                                               <div class="form-group">
                                                   <input type="text" class="form-control" placeholder="Nome do projeto " name="txtNomeProjeto" required value="${projeto.nome}"
                                                      <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                               </div>
                                               <div class="form-group">
                                                   <input type="text" class="form-control" style="height: 50px" placeholder="Descrição" name="txtDescricaoProjeto" required value="${projeto.descricao}"
                                                         <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                               </div>
                                               <div class="form-group mb-4">
                                                   <select name="optStatusProjeto" class="form-control"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>

                                                   <option value="t"  <c:if test="${projeto.status== 't'}"> selected</c:if>>Concluído</option>
                                                   <option value="f"  <c:if test="${projeto.status== 'f'}"> selected</c:if>>Em progresso</option>
                                                   </select>
                                                  
                                               </div>
                                        <c:if test="${operacao == 'Excluir'}">
                                            <div class="form-group">
                                                <a href="ProjetoController?acao=Only" class="btn btn-secondary btn-pill" value="Cancelar">Voltar</a>
                                                <input type="submit" class="btn btn-danger btn-pill" value="Excluir">

                                            </div>
                                        </c:if>

                                        <c:if test="${operacao == 'Incluir'}">
                                            <div class="form-group">
                                                <a href="ProjetoController?acao=Only" class="btn btn-secondary btn-pill" value="Cancelar">Voltar</a>
                                                <input type="submit" class="btn btn-primary btn-pill" value="Cadastrar">

                                            </div>
                                        </c:if>

                                        <c:if test="${operacao == 'Editar'}">
                                            <div class="form-group">
                                                <a href="ProjetoController?acao=Only" class="btn btn-secondary btn-pill" value="Cancelar">Voltar</a>
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