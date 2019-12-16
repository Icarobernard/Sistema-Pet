<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title> Todas tarefas</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




    </head>
    <%@include file ="header.jsp" %>
    <body >
        <div   class="site-section" id="programs-section" style="background-image: url('https://i.pinimg.com/originals/53/d9/cd/53d9cd303086eae0decfed3d000fc976.jpg');">

            <div class="container" >
                <br><br>



                <h2 > Todas tarefas</h2>

                <div class="container table-responsive py-5"> 

                    <c:if test="${sessionScope.tipo == 'administrador'}">
                        <a href="TarefaController?acao=prepararOperacao&operacao=Incluir">
                            <button class="btn btn-primary" type="submit" name="btnIncluir" >add +
                                <i class="fas fa-user-plus"></i></button>
                        </a>

                    </c:if>
                    <input id="myInput" type="text" placeholder="Pesquisar..." >


                    <table class="table table-bordered table-hover" >

                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Nome</th>
                                <th scope="col">Aluno</th>
                                <th scope="col">Projeto</th>
                                <th scope="col">Operação</th>
                            </tr>
                        </thead>
                        <c:forEach items="${tarefas}" var="tarefa">
                            <tbody id="myTable">
                                <tr>
                                    <th scope="row"><c:out value="${tarefa.nome}"/></th>
                                    <td><c:out value="${tarefa.aluno}" /></td>
                                    <td><c:out value="${tarefa.projeto}" /></td>
                                    <td>
                                        <c:if test="${sessionScope.nome == tarefa.aluno}">
                                            <a style="color: #00F5FF " href="TarefaController?acao=prepararOperacao&operacao=Editar&id=<c:out
                                                   value="${tarefa.id}" />" >Editar <i class="fas fa-user-edit"></i>   </a>
                                        </c:if>
                                        <c:if test="${sessionScope.tipo == 'administrador'}">
                                                 <a style="color: #00F5FF " href="TarefaController?acao=prepararOperacao&operacao=Editar&id=<c:out
                                                   value="${tarefa.id}" />" >Editar <i class="fas fa-user-edit"></i>   </a>
                                            <a style="color: #FF0000" href="TarefaController?acao=prepararOperacao&operacao=Excluir&id=<c:out
                                                   value="${tarefa.id}" />" > Excluir <i class="fas fa-trash-alt"></i></a>
                                            </c:if>                                
                                    </td>
                                </tr>

                            </tbody>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
            <script>
                $(document).ready(function () {
                    $("#myInput").on("keyup", function () {
                        var value = $(this).val().toLowerCase();
                        $("#myTable tr").filter(function () {
                            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                        });
                    });
                });

            </script>
<%@ include file = "footer.jsp" %>
    </body>
</html>