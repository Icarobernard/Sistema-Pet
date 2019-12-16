<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title>Completa</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




    </head>
    <%@include file ="header.jsp" %>
    <body>
        <div class="site-section" id="programs-section" style="background-image: url('https://i.pinimg.com/originals/53/d9/cd/53d9cd303086eae0decfed3d000fc976.jpg');">

            <div class="container">
                <br><br>



                <h2 style="color: greenyellow">Tarefas completas</h2>

                <div class="container table-responsive py-5"> 


                    <input id="myInput" type="text" placeholder="Pesquisar..." >


                    <table class="table table-bordered table-hover">

                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">Nome</th>
                                <th scope="col">Aluno</th>
                                <th scope="col">Projeto</th>
                                  <th scope="col">Status </th>
                                <th scope="col">Data conclus�o</th>
                                <th scope="col">Opera��o</th>
                            </tr>
                        </thead>
                         <!-- ${completo = "concluido"}-->
                        <c:forEach items="${tarefas}" var="tarefa">
                      
                           <c:if test="${tarefa.status.equals(completo)}">
                            <tbody id="myTable">
                                <tr>
                                    <th scope="row"><c:out value="${tarefa.nome}"/></th>
                                    <td><c:out value="${tarefa.aluno}" /></td>
                                    <td><c:out value="${tarefa.projeto}" /></td>
                                    <td><c:out value="${tarefa.status}" /></td>
                                    <td><c:out value="${tarefa.dataFim}" /></td>
                                    <td>
                                        <c:if test="${sessionScope.nome == tarefa.aluno}">
                                            <a style="color: #00F5FF " href="TarefaController?acao=prepararOperacao&operacao=Editar&id=<c:out
                                                   value="${tarefa.id}" />" >Editar <i class="fas fa-user-edit"></i>   </a>
                                        </c:if>
                                        <c:if test="${sessionScope.tipo == 'administrador'}">
                                            
                                              
                                            
                                            <a style="color: #00F5FF " href="TarefaController?acao=prepararOperacao&operacao=EditarCompleto&id=<c:out
                                                   value="${tarefa.id}" />" >Editar <i class="fas fa-user-edit"></i>   </a>
                                                 
                                                 
                                            <a style="color: #FF0000" href="TarefaController?acao=prepararOperacao&operacao=Excluir&id=<c:out
                                                   value="${tarefa.id}" />" > Excluir <i class="fas fa-trash-alt"></i></a>
                                            </c:if>                                
                                    </td>
                                </tr>
                            </c:if>
                            </tbody>
                        </c:forEach>
                    </table>
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