<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title> Tarefas adm</title>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.css">
 
 
    </head>
     <%@include file ="header.jsp" %>
    <body>
           


        <br><br><br><br><br><br><br><br>
                                        <div data-aos="fade-up" data-aos-delay="100">
                                    
       <button id="button" class="btn btn-secondary">removeAll</button>
       <script>    $('#table').bootstrapTable('destroy'); //Destroy bootstrap table
    $('#table').bootstrapTable(); //Rebuild bootstrap table</script>
         <a href="TarefaController?acao=prepararOperacao&operacao=Incluir"><button class="customPrevBtn btn btn-primary m-1" type="submit" name="btnIncluir" >Add <i class="fas fa-user-plus"></i></button></a>
             <table   id="table"
                             data-toggle="table"
                           
                             data-search="true"
                           
                             
                             
                             class="table-light"
                             data-search-align="center"

                             >
                            
                        <thead>
                            <tr>
                                <th data-sortable="true">Nome aluno</th>
                                <th>Nome tarefa</th>
                                <th>Data final</th>
                                <th>Operação</th>
                            </tr>
                        </thead>
                       
                           <c:forEach items="${tarefas}" var="tarefa">

                        <tbody>
                       
                            <tr>
                                
                             
                                <th><c:out value="${tarefa.aluno}" /></th>
                                <th><c:out value="${tarefa.nome}" /></th>
                              
                                
                                <td><c:out value="${tarefa.dataFim}" /></td>
                                 <td><c:if test="${sessionScope.tipo == 'administrador'}">
                                   <a style="color: #FF0000" href="TarefaController?acao=prepararOperacao&operacao=Excluir&id=<c:out
                                                                           value="${tarefa.id}" />" > Excluir <i class="fas fa-trash-alt"></i></a>  
                                       </c:if>
                                 </td>
                          
                            </tr>
                         

                        </tbody>
                    </c:forEach>
                      
                        </table>
                                            <script>
  var $table = $('#table')
  var $button = $('#button')

  $(function() {
    $button.click(function () {
      $table.bootstrapTable('removeAll')
    })
  })
</script>
                       </div>
                                            <a href="AdministradorController?acao=prepararOperacao&operacao=Incluir"><button class="btn btn-outline-info" type="submit" name="btnIncluir" >Add <i class="fas fa-user-plus"></i></button></a>
                                      
          










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
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://unpkg.com/bootstrap-table@1.15.5/dist/bootstrap-table.min.js"></script>
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