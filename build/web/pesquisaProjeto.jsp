<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title> Projetos</title>
    </head>
    <%@include file ="header.jsp" %>
    <body>

        <div class="site-section" id="programs-section" style="background-image: url('https://i.pinimg.com/originals/53/d9/cd/53d9cd303086eae0decfed3d000fc976.jpg');">


            <div class="container">

                <div class="row">

                    <div class="owl-carousel col-12 nonloop-block-14">
                        <c:forEach items="${projetos}" var="projeto">
                            <tbody>
                            <div class="course bg-white h-100 align-self-stretch">

                                <div class="course-inner-text py-4 px-4">
                                    <c:if test="${projeto.status == 't'}">
                                        <span style="background: green"class="course-price">Concluído</span>
                                    </c:if>
                                    <c:if test="${projeto.status == 'f'}">
                                        <span style="background: #FFD700"class="course-price">Progresso</span>
                                    </c:if>
                                    <div class="meta"><span class="icon-clock-o"></span><c:out value="${projeto.quantidadeTarefa}" /> Tarefas / 

                                    </div>

                                    <h3><a href="ProjetoController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${projeto.id}" />">
                                            <c:out value="${projeto.nome}" /></a></h3>

                                    <p><c:out value="${projeto.descricao}" /> </p>
                                </div>
                                <div class="d-flex border-top stats">
                                    <!--<div class="py-3 px-4"><span class="icon-users"></span> 2,193 students</div>-->
                                    <div class="py-3 px-4 w-25 ml-auto border-left"><span class="icon-trash"></span>
                                        <a href="ProjetoController?acao=prepararOperacao&operacao=Excluir&id=<c:out value="${projeto.id}" />">
                                            delete</a></div>
                                </div>
                            </div>
                            </tbody>
                        </c:forEach>





                        <!--  <div class="course bg-white h-100 align-self-stretch">
                              <figure class="m-0">
                                  <a href="course-single.html"><img src="images/img_4.jpg" alt="Image" class="img-fluid"></a>
                              </figure>
                              <div class="course-inner-text py-4 px-4">
                                  <span class="course-price">$20</span>
                                  <div class="meta"><span class="icon-clock-o"></span>4 Lessons / 12 week</div>
                                  <h3><a href="#">Study Law of Physics</a></h3>
                                  <p>Lorem ipsum dolor sit amet ipsa nulla adipisicing elit. </p>
                              </div>
                              <div class="d-flex border-top stats">
                                  <div class="py-3 px-4"><span class="icon-users"></span> 2,193 students</div>
                                  <div class="py-3 px-4 w-25 ml-auto border-left"><span class="icon-chat"></span> 2</div>
                              </div>
                          </div>
      
                        -->



                    </div>



                </div>

            </div>

            <div class="row mb-5 align-items-center">
                <div class="col-lg-7 mb-5" data-aos="fade-up" data-aos-delay="100">
                    <img src="images/undraw_youtube_tutorial.svg" alt="Image" class="img-fluid">
                </div>
                <div class="col-lg-4 ml-auto" data-aos="fade-up" data-aos-delay="200">
                    <h2 class="text-white mb-4">Projetos  <a href="ProjetoController?acao=prepararOperacao&operacao=Incluir"><button class="customPrevBtn btn btn-primary m-1" type="submit" name="btnIncluir" >Add <i class="fas fa-user-plus"></i></button></a></h2> 
               
                            <!-- <button class="customPrevBtn btn btn-primary m-1">Prev</button>
                             <button class="customNextBtn btn btn-primary m-1">Next</button>
                            -->
                           

                    
                    <p class="mb-4">Listagem dos projetos</p>

                    <c:forEach items="${projetos}" var="projeto">
                        <a href="ProjetoController?acao=prepararOperacao&operacao=Editar&id=<c:out value="${projeto.id}" />">
                            <div class="d-flex align-items-center custom-icon-wrap mb-2">
                                <span class="custom-icon-inner mr-3"><span class="icon icon-check"></span></span>

                                <div><h3 class="m-0">${projeto.nome}</h3></div>

                            </div>
                        </a>
                    </c:forEach>


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