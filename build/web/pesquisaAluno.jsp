<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title> Área aluno</title>

    </head>
    <%@include file ="header.jsp" %>
    <body>

        <c:if test="${sessionScope.tipo == null}"> 
 
            <script>
                alert("Cadastrado com sucesso");
                window.location.href = "index.jsp";
            </script>
   
        </c:if>
        <div class="intro-section" id="home-section">

            <div class="slide-1" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-12">


                            <div data-aos="fade-up" data-aos-delay="100">
                                <div class="search-list">
                                    <table class="table table-list-search table">
                                        <thead>
                                            <tr>
                                       
                                                <th>Nome</th>
                                                <th>Email</th>

                                                <th>operação</th>


                                            </tr>

                                        </thead>
                                        <c:forEach items="${alunos}" var="aluno">
                                            <tbody>
                                                <tr>

                                                    <c:if test="${sessionScope.nome == aluno.nome}"> 

                                                      
                                                        <td><c:out value="${aluno.nome}" /></td>
                                                        <td><c:out value="${aluno.email}" /></td>


                                                        <td><a style="color: #00F5FF " href="AlunoController?acao=prepararOperacao&operacao=Editar&id=<c:out
                                                                   value="${aluno.id}" />" >Editar <i class="fas fa-user-edit"></i>   </a>
                                                        </c:if>

                                                        <c:if test="${sessionScope.tipo == 'administrador'}"> 

                                                        <td><c:out value="${aluno.id}" /></td>
                                                        <td><c:out value="${aluno.nome}" /></td>
                                                        <td><c:out value="${aluno.email}" /></td>

                                                    </c:if>
                                                    <td>
                                                        <c:if test="${sessionScope.tipo == 'administrador'}">
                                                            <a style="color: #FF0000" href="AlunoController?acao=prepararOperacao&operacao=Excluir&id=<c:out
                                                                   value="${aluno.id}" />" > Excluir <i class="fas fa-trash-alt"></i></a>  
                                                            </c:if>
                                                    </td>

                                                </tr>

                                            </c:forEach>

                                        </tbody>
                                        <hr style="height:2px; border:none; color:white; background-color: white; margin-top: 0px; margin-bottom: 0px;"/>
                                    </table> 
                                    <script>
                                        var $table = $('#table')

                                        $(function () {
                                            $table.bootstrapTable()

                                            $('#locale').change(function () {
                                                $table.bootstrapTable('refreshOptions', {
                                                    locale: $(this).val()
                                                })
                                            })
                                        })
                                    </script>
                                </div>
                                <c:if test="${sessionScope.tipo == 'administrador'}">
                                    <a href="AlunoController?acao=prepararOperacao&operacao=Incluir">
                                        <button class="btn btn-primary btn-pill" type="submit" name="btnIncluir" >add
                                            <i class="fas fa-user-plus"></i></button></a>
                                        </c:if>
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