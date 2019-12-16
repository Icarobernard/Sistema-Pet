<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title> Área adm</title>
    </head>
    <%@ include file = "header.jsp" %>
    
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



















<%@ include file = "footer.jsp" %>



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