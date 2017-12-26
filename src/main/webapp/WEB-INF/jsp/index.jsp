<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html >
<head>
 
  <title>PERUVIAJES</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta content="" name="keywords">
  <meta content="" name="description">



   <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<c:url value="/resources/lib/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<c:url value="/resources/lib/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/lib/animate/animate.min.css"/>" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/css/bootstrap-datetimepicker.min.css"/>" rel="stylesheet">
  
  <!-- FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
</head>
<body>
	<header id="header">
    <div class="container">

      <div id="logo" class="pull-left">
        <a href="#hero"><img src="<c:url value="/resources/img/LOGO1.png"/>" alt="" title="" /></img></a>
        <!-- Uncomment below if you prefer to use a text logo -->
        <!--<h1><a href="#hero">Regna</a></h1>-->
      </div>

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index">Inicio</a></li>
          <li><a href="#portfolio">Destinos</a></li>
          <li><a href="#services">Actividades</a></li>
          <li><a href="#call-to-action">Ofertas</a></li>
          <li><a href="#team">Nosotros</a></li>
          <li><a href="#contact">Contacto</a></li>
          <li><a href="login">Iniciar Sesión</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Hero Section
  ============================-->
  <section id="hero">
    <div class="hero-container">
      <h1>TURISMO y MÁS</h1>
      <h2 class="barra">Cultura,Entretenimiento y Relax, Reserve ahora y obtenga grandes descuentos </h2>
     
    </div>
  </section><!-- #hero -->

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about">
      <div class="container">
        <div class="row about-container">

          <div class="col-lg-6 content order-lg-1 order-2 personalizado-form">
            <h2 class="title">Paquetes Personalizados</h2>
            <p style="font-size: 15px;font-weight: bold;">
              Encuentra el paquete que más se ajuste a tus necesidades.
            </p>

            <form>
                <div class="form-group row">
                  
                  <div class="col-md-6">
                      <span style="font-size: 15px; font-weight: bold;"
									class="help-block">Fecha de Salida:</span>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-calendar"></span></span> <input size="5" type="text"
										name="fecha_salidaI" class="form-control" id="fecha_salidaI"
										placeholder="--/--/--" readonly>
								</div>
                  </div>
                  <div class="col-md-6">
                      <span style="font-size: 15px; font-weight: bold;"
									class="help-block">Fecha de Regreso:</span>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-calendar"></span></span> <input size="5" type="text"
										name="fecha_regresoI" class="form-control" id="fecha_regresoI"
										placeholder="--/--/--" readonly>
								</div>
                  </div>
                </div>
                
                <div class="form-group row">
                <div class="col-md-12">
                <span style="font-size: 15px; font-weight: bold;"
									class="help-block">Ingrese Destino:</span>
								<div class="input-group">
									<span class="input-group-addon"><span
										class="fa fa-globe"></span></span> <input size="5" type="text"
										placeholder="..." class="form-control" name="destinoI" id="destinoI">
								</div>
                
                
                </div>
                </div>
                
                
                <div class="form-group row">
                <div class="col-md-12">
                <span style="font-size: 14px; font-weight: bold;"
									class="help-block">Numero de Personas:</span> <select
									id="num_personasI" name="num_personasI" class="form-control"
									title="Numero de Pesonas">

									<option value="1" selected>1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
								</select>                
                
                </div>
                
                
                </div>             
                                
         
                <div class="form-group row justify-content-between" id = "seccion3-1-footer">
                    <div id= "seccion3-1-help2" class="col-sm-auto align-self-end">
                      <a href="#seccion3-1-help2"><span class="Icon-svg"></span> Opciones Avanzadas</a>
                    </div>
                    <div class="col-sm-auto">
                      <button type="button" class = "btn btn-md btn-outline-info" onclick="pagefilterPage()" ><span class="Icon-search"></span> Buscar</button>
                    </div>
                </div>
                 </form>
        
         </div>

           <div class="col-lg-6 background order-lg-2 order-1 wow fadeInRight personalizado2">
              
              <div class="row">
                
                 <div class="col-lg-5 background1"></div>
                 <div class="col-lg-7 acerca-de">
                   <h3 class="title">Nosotros</h3>
                   <p><strong>PERUVIAJES</strong>, les da la bienvenida. Nuestra pasión por el turismo les asegurará una experiencia inolvidable y de gran calidad.</p>
                 </div>
              </div>

           </div>
        </div>

      </div>
    </section><!-- #about -->
    
    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Paquetes</h3>
          <p class="section-description">Reserva el paquete ideal para sus necesidades.</p>
        </div>
        <div class="row">

          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter=".filter-app, .filter-card, .filter-logo, .filter-web" class="filter-active">Todo</li>
              <li data-filter=".filter-app">Aventura</li>
              <li data-filter=".filter-card">Cultura</li>
              <li data-filter=".filter-logo">Relax</li>
              <li data-filter=".filter-web">Naturaleza</li>
            </ul>
          </div>
        </div>

        <div class="row" id="portfolio-wrapper">
          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/aventura1.jpg"/>" alt="">
              <div class="details">
                <h4>Paracas - $200</h4>
                <div  class="link-mas">Detalles</div>
              </div>
            </div>
          </div>
<!-- Inicio Modal -->

    <div class="portfolio-modal modal fade modal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
               . 
            <div class="modal-content">
               
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                  <br>
                  <br>
                    <center><h2 class="letraCS">Paracas</h2></center><br>     
                <div class="container">
                  
                  
                  <!--Error-->
                  
                   <div class="row">
               
                            <div class="modal-body">
                                <!-- Project Details Go Here -->
                                 <p class="text-justify ">
                 
                                    <strong>itinerario</strong><br>
                                    <strong>3:00</strong> Recogo de su hotel en Arequipa, se sale de la ciudad blanca tomando la carretera hacia el noreste que conduce por Yura carretera que va hacia PUNO-CUZCO, hasta el cruce de Patahuasi de ahi se va hacia la izquierda.<br>
                                    <strong>6:30</strong> Llegamos a Chivay donde se tomará desayuno despues se continuara el viaje a Paracas haciendo una parada en el poblado de Yanque para dobservar la danza del wititi.<br>
                                    <strong>7:00-7:30</strong>Luego siguiendo el viaje hasta la cruz del condor, obejtivo principal del viaje donde usted tendrá una hora para poder disfrutar del maravilloso paisaje, la profondidad del Cañon del Colca uno de los mas profundos del Mundo, mientras se espera el majestuoso vuelo del condor.<br>
                                    <strong>11:00</strong>  Seguidan,ente se retorna haciendo paradas en los miradores: Huayrapunco, Antawilque, Maca, piscina de aguas termales de Yanque<br>
                                    <strong>13:00</strong> Almuerzo buffet en un restaurante turistico en Chivay, despues del alumerzo retorno a la ciudad de Arequipa haciendo paradas:
                                    en el mirador de los volcanes parte mas alta de la ruta 4,910 m.s.n.m, Reserva Nacional de Salinas y aguada blanca, donde usted verá los caméllidos SudAmericanos: Llama, Alpaca y Vicuñas.<br>
                                    <strong>5:30</strong> Arrivamos a la ciudad de Arequipa                                                

                                    </p>
                                  <center>
                                  <div class="row">
                                  <div class="col-sm-6" >
                                    <div class="alert alert-info text-left">
                                      <strong>Incluye</strong> <br>
                                      <span class="glyphicon glyphicon-road"></span>  Transporte<br>
                                      <span class="glyphicon glyphicon-home"></span>  Hotel<br>
                                      <span class="glyphicon glyphicon-cutlery"></span>  Desayuno<br>
                                      <span class="glyphicon glyphicon-bitcoin"></span>  Guia Bilingue(Español-Inglés)<br>
								</div>
														
                                    </div>
                                    <div class="col-sm-6" >	
                                       <div class="alert alert-warning text-left">

                                      <strong>No Incluye</strong> <br>
                                     <span class="glyphicon glyphicon-list-alt"></span>  Ticket Turístico<br>
                                      <span class="glyphicon glyphicon-cutlery"></span>  Almuerzo<br>
                                    <span class="glyphicon glyphicon-ok"></span>  Entrada a las piscinas termales<br>

                                    </div><br>
                                  </div>
                                   </div>
                                           <!--button type="button" class="btn btn-primary btn-md">Comprar</button>
                                            <button  type="button" class="btn btn-primary btn-md" >Reservar</button-->
                                                               
                            <!---Stripe--->
                           <center>  
                            <form action="https://checkout.stripe.com/validation.js" method="POST">
                                  <script
                                    src="https://checkout.stripe.com/checkout.js" class="stripe-button"
                                    data-key="pk_test_5MYbqVS9s3IdfhxryW8HFL29"
                                    data-amount="999"
                                    data-name="AqpTravel"
                                    data-description="Disfruta"
                                    data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
                                    data-locale="auto"
                                    data-zip-code="true"
                                    data-currency="dol">
                                  </script>
                                </form>
                             </center>   
                           <!--  Fni Stripe-->
                                   

                             </div>
                                            <br>
                                           <br>
                                           <br>
                                       <!--Contenido de publicidad -->
                                       
                                        <!--fin de publicidad-->
                                    </div>
                  <!--fin Error-->
                </div>


<br>
                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Regresar</button>
                            
                                

                            </div>
                        </div>
                    </div>  

<!-- Fin Modal -->
          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/naturaleza2.jpg"/>" alt="">
              <div class="details">
                <h4>Titicaca - $230</h4>
                <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
             <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/aventura3.jpg"/>" alt="">
              <div class="details">
                <h4>Ayacucho - $170</h4>
                <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
           <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/cultura1.jpg"/>" alt="">
              <div class="details">
                <h4>Lambayeque - $250</h4>
                <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/cultura2.jpg"/>" alt="">
              <div class="details">
                <h4>Arequipa - $175</h4>
               <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/naturaleza3.jpg"/>" alt="">
              <div class="details">
                <h4>Cañon Colca - $200</h4>
               <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
             <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/cultura3.jpg"/>" alt="">
              <div class="details">
                <h4>Cusco - $250</h4>
               <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
             <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/aventura2.jpg"/>" alt="">
              <div class="details">
                <h4>Piura - $300</h4>
                <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-logo">
            <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/relax1.jpg"/>" alt="">
              <div class="details">
                <h4>Mancora - $450</h4>
                <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-logo">
           <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/relax3.jpg"/>" alt="">
              <div class="details">
                <h4>Cañete - $250</h4>
              <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/naturaleza1.jpg"/>" alt="">
              <div class="details">
                <h4>Manu - $350</h4>
           <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-logo">
            <div data-toggle="modal" data-target=".modal1">
              <img src="<c:url value="/resources/img/portfolio/relax2.jpg"/>" alt="">
              <div class="details">
                <h4>Tambopata - $275</h4>
             <div data-toggle="modal" data-target=".modal1" class="link-mas">Detalles</div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #portfolio -->
    
<!--==========================
    Call To Action Section
    ============================-->
    <section id="call-to-action">
      <div class="container wow fadeIn">
        <div class="row">
          <div class="col-lg-9 text-center text-lg-left">
            <h3 class="cta-title">Descuentos y Promociones</h3>
            <p class="cta-text"> Obtén descuentos y promociones especiales uniendote en nuestra página y participando de nuestras actividades. Acumula bonos de descuento por la compra de nuestros paquetes</p>
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
            <a class="cta-btn align-middle" href="login">Iniciar Sesión</a>
          </div>
        </div>

      </div>
    </section><!-- #call-to-action -->
    
    <!--==========================
      Services Section
    ============================-->
    <section id="services">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">Servicios Adicionales</h3>
          <p class="section-description">Para mejorar la experiencia de nuestros clientes, los paquetes incluyen: </p>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.2s">
            <div class="box">
              <div class="icon"><a href=""><i class="fa fa-desktop"></i></a></div>
              <h4 class="title"><a href="">Multimedia</a></h4>
              <p class="description">Nuestras unidades de transporte cuentan con modernos dispositivos multimedia(TV,Internet,etc).</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.4s">
            <div class="box">
              <div class="icon"><a href=""><i class="fa fa-bar-chart"></i></a></div>
              <h4 class="title"><a href="">Guía Turística</a></h4>
              <p class="description">Contamos con personal de guías calificados en todos nuestros recorridos. </p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.6s">
            <div class="box">
              <div class="icon"><a href=""><i class="fa fa-shopping-bag"></i></a></div>
              <h4 class="title"><a href="">Refrigerio</a></h4>
              <p class="description">Brindamos refrigerios y bebidas según nuestros recorridos.</p>
            </div>
          </div>

         
        </div>

      </div>
    </section><!-- #services -->

    <!--==========================
      Registro Agencias
    ============================-->
    <section id="services">
      <div class="container wow fadeIn">
        <div class="section-header">
          <h3 class="section-title">Desea que su empresa aparezca en el sitio</h3>
          <p class="section-description">Para el registro de su empresa puede seguir el siguiente <a href="admin/agregar_agencias">enlace</a> </p>
        </div>
      </div>
    </section><!-- #services -->

    
    <!--==========================
      Team Section
    ============================-->
    

    <!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container wow fadeInUp">
        <div class="section-header">
          <h3 class="section-title">Contacto</h3>
          <p class="section-description">Para mayor información de nuestros servicios:</p>
        </div>
      </div>

     

      <div class="container wow fadeInUp">
        <div class="row justify-content-center">

          <div class="col-lg-3 col-md-4">

            <div class="info">
              <div>
                <i class="fa fa-map-marker"></i>
                <p>A108 Elm Street<br>Arequipa</p>
              </div>

              <div>
                <i class="fa fa-envelope"></i>
                <p>peruviajes@gmail.com</p>
              </div>

              <div>
                <i class="fa fa-phone"></i>
                <p> 123411</p>
              </div>
            </div>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>

          <div class="col-lg-5 col-md-8">
            <div class="form">
              <div id="sendmessage">Mensaje Enviado</div>
              <div id="errormessage"></div>
              <form method="POST" action="http://formspree.io/darwinqsot@gmail.com" id="my-formContacto" >
                <div class="form-group">
                  <input type="text" name="name" class="form-control" id="name" placeholder="Nombre" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Correo" data-rule="email" data-msg="Please enter a valid email" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Asunto" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Mensaje"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit">Enviar Mensaje</button></div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->
    

  </main>
  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">

      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>PeruViajes</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Regna
        -->
        Epis Team<a href="https://bootstrapmade.com/">EPISUNSA</a>
      </div>
    </div>
  </footer><!-- #footer -->

  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- JavaScript Libraries -->
  <script src="<c:url value="/resources/lib/jquery/jquery.min.js"/>"></script>
  <script src="<c:url value="/resources/lib/jquery/jquery-migrate.min.js"/>"></script>
  <script src="<c:url value="/resources/lib/bootstrap/js/bootstrap.bundle.min.js"/>"></script>
  <script src="<c:url value="/resources/lib/easing/easing.min.js"/>"></script>
  <script src="<c:url value="/resources/lib/wow/wow.min.js"/>"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>

  <script src="<c:url value="/resources/lib/waypoints/waypoints.min.js"/>"></script>
  <script src="<c:url value="/resources/lib/counterup/counterup.min.js"/>"></script>
  <script src="<c:url value="/resources/lib/superfish/hoverIntent.js"/>"></script>
  <script src="<c:url value="/resources/lib/superfish/superfish.min.js"/>"></script>
  <script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>"></script>

  <!-- Contact Form JavaScript File -->
  <script src="<c:url value="/resources/contactform/contactform.js"/>"></script>

  <!-- Template Main Javascript File -->
  <script src="<c:url value="/resources/js/main.js"/>"></script>
  <script src="<c:url value="/resources/js/enviar_correo.js"/>"></script>
  <script src="<c:url value="/resources/js/form_object.js"/>"></script>
  <script type="text/javascript">
    $("#fecha_salidaI").datetimepicker({
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: 1
    });
    $("#fecha_regresoI").datetimepicker({
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: 1
    });
    
    $(function() {
	    $('input[type=text]').on('keypress', function(e) {
	        if (e.which == 32){
	        	if($(this).val().length==0)return false;
	        }	            
	    });
	});
  </script>
  
  <script src="<c:url value="/resources/js/filterIndex.js"/>"></script>
	
</body>
</html>