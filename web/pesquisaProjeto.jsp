<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="en">
    <head>
        <title> Área adm</title>
    </head>
     <%@include file ="header.jsp" %>
    <body>
  
        <br><br><br><br><br><br><br><br><br>
        <div class="text-center" >
 <div class="site-section courses-entry-wrap" style="background-image: url('https://i.pinimg.com/originals/53/d9/cd/53d9cd303086eae0decfed3d000fc976.jpg');" data-aos="fade-up" data-aos-delay="100">

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
            <div class="row justify-content-center">
                <div class="col-7 text-center">
                   <!-- <button class="customPrevBtn btn btn-primary m-1">Prev</button>
                    <button class="customNextBtn btn btn-primary m-1">Next</button>
                    -->
                     <a href="ProjetoController?acao=prepararOperacao&operacao=Incluir"><button class="customPrevBtn btn btn-primary m-1" type="submit" name="btnIncluir" >Add <i class="fas fa-user-plus"></i></button></a>
                  
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