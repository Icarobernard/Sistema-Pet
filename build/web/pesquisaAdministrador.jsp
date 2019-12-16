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
                                        <c:if test="${sessionScope.tipo == 'administrador'}">
                                            <a href="AdministradorController?acao=prepararOperacao&operacao=Incluir">
                                                <button class="btn btn-primary btn-pill" type="submit" name="btnIncluir" >add
                                                    <i class="fas fa-user-plus"></i></button></a>
                                                </c:if>
                                    </div>
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