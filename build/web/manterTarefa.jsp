<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title>Projeto</title>
    </head>
    <%@include file ="header.jsp" %>
    <body>
     
        
        <div class="site-section bg-light" id="contact-section">
            <div class="container">

                <div class="row justify-content-center">
                    <div class="col-md-7">


                        <c:if test="${operacao == 'Excluir'}"> 
                            <h2 class="section-title mb-3" data-aos="fade-up" data-aos-delay="200">
                                Deletar tarefa ${tarefa.nome}</h2>
                            </c:if>

                        <c:if test="${operacao == 'Incluir'}"> 
                            <h2 class="section-title mb-3" data-aos="fade-up" data-aos-delay="200">Cadastrar tarefa</h2>

                        </c:if>

                        <c:if test="${operacao == 'Editar'}"> 
                            <h2 class="section-title mb-3" data-aos="fade-up" data-aos-delay="200">
                                Editar tarefa ${tarefa.nome}</h2>
                            </c:if>


                        <form action="TarefaController?acao=confirmaOperacao&operacao=${operacao}" method="POST" data-aos="fade">

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <input type="text" name="txtNomeTarefa" class="form-control" placeholder="Nome" 
                                           <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                           <small  class="form-text text-muted">Nome da tarefa</small>
                                    </div>
                                </div>

                                <div class="form-group row">

                                    <div class="col-md-6 mb-3 mb-lg-0">
                                        <input type="date" name="txtDataInicio" class="form-control" placeholder="Data de início"
                                        <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                        <small  class="form-text text-muted">Quando começa</small>
                                    </div>
                                    <div class="col-md-6">
                                        <input type="date"  name="txtDataFim" class="form-control" placeholder="Data de fim"
                                        <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                        <small id="emailHelp" class="form-text text-muted">Quando termina</small>
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <textarea class="form-control" name="txtDescricaoTarefa" id="" cols="30" rows="10" placeholder="Descrição do que fazer na tarefa"></textarea>
                                        <small id="emailHelp" class="form-text text-muted">O que fazer na tarefa?</small>
                                    </div>
                                </div>
                                <div class="form-group row">



                                    <div class="col-md-6 mb-3 mb-lg-0">
                                        <select class="form-control" required name="optAluno" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                        <option required value="0" <c:if test="${tarefa.aluno == null}"> selected</c:if>> </option>  
                                        <c:forEach items="${alunos}" var="aluno">
                                            <option required value="${tarefa.aluno}" <c:if test="${tarefa.aluno.id == aluno.id}"> selected</c:if>>${aluno.nome}</option>  
                                        </c:forEach>
                                    </select>
                                    <small  class="form-text text-muted">Aluno</small>
                                </div>


                                <div class="col-md-6 mb-3 mb-lg-0">
                                    <select class="form-control" required name="optProjeto" <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                        <option required value="0" <c:if test="${tarefa.projeto == null}"> selected</c:if>> </option>  
                                        <c:forEach items="${projetos}" var="projeto">
                                            <option required value="${tarefa.projeto}" <c:if test="${tarefa.projeto.id == projeto.id}"> selected</c:if>>${aluno.nome}</option>  
                                        </c:forEach>
                                    </select>
                                    <small  class="form-text text-muted">Referente ao projeto</small>
                                </div>
                            </div>

                               <div class="form-group row">
                                <div class="col-md-12">
                                   <select name="optStatus" class="form-control"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>

                                                   <option value="t"  <c:if test="${tarefa.status== 't'}"> selected</c:if>>Concluído</option>
                                                   <option value="f"  <c:if test="${tarefa.status== 'f'}"> selected</c:if>>Em progresso</option>
                                                   </select>
                                           <small  class="form-text text-muted">Status</small>
                                    </div>
                                </div>

                                
                            <c:if test="${operacao == 'Excluir'}"> 
                                <div class="col-md-6">
                                    <input type="submit" class="btn btn-danger py-3 px-5 btn-block btn-pill" value="Deletar">
                               
                                </div>
                            </c:if>

                        <c:if test="${operacao == 'Incluir'}"> 
                                <div class="col-md-6">
                                    <input type="submit" class="btn btn-primary py-3 px-5 btn-block btn-pill" value="Cadastrar">
                               
                                </div>

                        </c:if>

                        <c:if test="${operacao == 'Editar'}"> 
                                <div class="col-md-6">
                                    <input type="submit" class="btn btn-primary py-3 px-5 btn-block btn-pill" value="Editar">
                               
                                </div>
                            </c:if>
                                
                                
                            </div>

                        </form>
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