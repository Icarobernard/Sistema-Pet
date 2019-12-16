<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title>Tarefa</title>
    </head>
    <%@include file ="header.jsp" %>
    <body>

        <div class="intro-section" id="home-section">
            <div class="slide-1" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
                <div class="container">

                    <div class="row justify-content-center">
                        <div class="col-md-7">
                            <br><br><br>

                            <c:if test="${operacao == 'Excluir'}"> 
                                <h2 style="color: red"class="section-title mb-3" data-aos="fade" data-aos-delay="400">
                                    Deletar tarefa ${tarefa.nome}</h2>
                                </c:if>

                            <c:if test="${operacao == 'Incluir'}"> 
                                <h2 style="color: white "class="section-title mb-3" data-aos="fade" data-aos-delay="400">Cadastrar tarefa</h2>

                            </c:if>

                            <c:if test="${operacao == 'EditarSolicitado' || 'Editar'|| 'EditarCompleto'}"> 
                                <h2 style="color: white"class="section-title mb-3" data-aos="fade" data-aos-delay="400">
                                    Editar tarefa ${tarefa.nome}</h2>
                            </c:if>
                                
                          


                            <form action="TarefaController?acao=confirmaOperacao&operacao=${operacao}" method="POST" data-aos="fade">

                                <input input type="HIDDEN" name="id"
                                       required value="${tarefa.id}"
                                       <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                       <div class="form-group row">
                                           <div class="col-md-12">
                                               <input type="text" name="txtNomeTarefa" class="form-control" placeholder="Nome" value="${tarefa.nome}"
                                                  <c:if test="${operacao == 'Excluir' || sessionScope.tipo == 'aluno'}"> readonly</c:if>>
                                                  <small  class="form-text text-muted">Nome da tarefa</small>
                                           </div>
                                       </div>

                                       <div class="form-group row">

                                           <div class="col-md-6 mb-3 mb-lg-0">
                                               <input type="date" name="txtDataInicio" class="form-control" placeholder="Data de início" value="${tarefa.dataInicio}"
                                                  <c:if test="${operacao == 'Excluir' || sessionScope.tipo == 'aluno'}"> readonly</c:if>>
                                                  <small  class="form-text text-muted">Quando começa</small>
                                           </div>
                                           <div class="col-md-6">
                                               <input type="date"  name="txtDataFim" class="form-control" placeholder="Data de fim" value="${tarefa.dataFim}"
                                                  <c:if test="${operacao == 'Excluir' || sessionScope.tipo == 'aluno'}"> readonly</c:if>>
                                                  <small id="emailHelp" class="form-text text-muted">Quando termina</small>
                                           </div>
                                       </div>

                                       <div class="form-group row">
                                           <div class="col-md-12">
                                               <input class="form-control" name="txtDescricaoTarefa" value ="${tarefa.descricao}"id="" cols="30" rows="10" placeholder="Descrição: ${tarefa.descricao}" 
                                               <c:if test="${operacao == 'Excluir' || sessionScope.tipo == 'aluno'}"> readonly</c:if>>
                                               <small id="emailHelp" class="form-text text-muted">O que fazer na tarefa?</small>
                                           </div>
                                       </div>
                                               
                                       <div class="form-group row"> 


                                       <c:if test="${sessionScope.tipo == 'administrador'}">
                                           <div class="col-md-6 mb-3 mb-lg-0">
                                               <select class="form-control"  name="optAluno" <c:if test="${operacao == 'Excluir' || sessionScope.tipo == 'aluno'}"> readonly</c:if>>
                                                   <c:forEach items="${alunos}" var="aluno">


                                                       <option required value="${aluno.nome}">${aluno.nome}</option>  
                                                   </c:forEach>


                                               </select>
                                               <small  class="form-text text-muted">Aluno</small>
                                           </div>


                                           <div class="col-md-6 mb-3 mb-lg-0">
                                               <select class="form-control" required name="optProjeto" <c:if test="${operacao == 'Excluir' || sessionScope.tipo == 'aluno'} "> readonly</c:if>>
                                                   <c:forEach items="${projetos}" var="projeto">

                                                       <option required value="${projeto.nome}" >${projeto.nome}</option>  
                                                   </c:forEach>
                                               </select>
                                               <small  class="form-text text-muted">Referente ao projeto</small>
                                           </div>
                                       </div>
                                </c:if>
                                <div class="form-group row">
                                    <div class="col-md-12">
                                        <select name="optStatus" class="form-control"  <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                            <option value="progresso"  <c:if test="${tarefa.status== 'progresso'}"> selected</c:if>>Em progresso</option>    
                                            <option value="solicitado"  <c:if test="${tarefa.status== 'solicitado'}"> selected</c:if>>Concluído</option>
                                            <c:if test="${sessionScope.tipo == 'administrador'}">
                                             <option value="concluido"  <c:if test="${tarefa.status== 'concluido'}"> selected</c:if>>Finalizar Conclusão</option>
                                           </c:if>
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

                                <c:if test="${operacao == 'Editar' ||operacao ==  'EditarCompleto'|| operacao == 'EditarSolicitado'}"> 
                                    <div class="col-md-6">
                                        <input type="submit" class="btn btn-primary py-3 px-5 btn-block btn-pill" value="Editar">

                                    </div>
                                </c:if>

                            </form>
                        </div>


                    </div>
                </div>
            </div>
        </div>

<%@ include file = "footer.jsp" %>



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