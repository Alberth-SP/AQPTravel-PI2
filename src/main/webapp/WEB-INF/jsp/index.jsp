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



  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Poppins:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="<c:url value="/resources/lib/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="<c:url value="/resources/lib/font-awesome/css/font-awesome.min.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/lib/animate/animate.min.css"/>" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
  <link href="<c:url value="/resources/css/bootstrap-datetimepicker.min.css"/>" rel="stylesheet">
  
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
          <li class="menu-active"><a href="#hero">Inicio</a></li>
          <li><a href="#portfolio">Destinos</a></li>
          <li><a href="#services">Actividades</a></li>
          <li><a href="#call-to-action">Ofertas</a></li>
          <li><a href="#team">Nosotros</a></li>
         
          <li><a href="#contact">Contacto</a></li>
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
      <h2>Cultura,Entretenimiento y Relax, Reserve ahora y obtenga grandes descuentos </h2>
      <a href="registrar" class="btn-get-started">Registrarse</a>
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
            <p>
              Encuentra el paquete que más se ajuste a tus necesidades.
            </p>

            <form>
                <div class="form-group row">
                  
                  <div class="col-md-6">
                      <div class="form-group">
                      <label for="fecha_ida" class= "label-form">Fecha Ida:</label>
                      <input size="16" type="text" class="form-control" id="fecha_ida" readonly>
                  </div>
                  </div>
                  <div class="col-md-6">
                      <div class="form-group">
                      <label for="fecha_regreso" class= "label-form">Fecha Regreso:</label>
                      <input size="16" type="text" class="form-control" id="fecha_regreso" readonly>
                  </div>
                  </div>
                </div>
                <div class="form-group row">
                  <label for="num_adultos" class="col-sm-4 col-form-label label-form">Nro. Adultos:</label>
                  <div class="col-sm-auto">
                    <select id="num_adultos" class="form-control">
                      <option value= "0" selected>0</option>
                      <option value= "1">1</option>
                      <option value= "2">2</option>
                      <option value= "3">3</option>
                      <option value= "4">4</option>
                    </select>
                  </div>
                </div>
                 <div class="form-group row">
                  <label for="num_niños" class="col-sm-4 col-form-label label-form">Nro. Niños:</label>
                  <div class="col-sm-auto">
                    <select id="num_niños" class="form-control">
                      <option value = "0" selected>0</option>
                      <option value= "1">1</option>
                      <option value= "2">2</option>
                      <option value= "3">3</option>
                      <option value= "4">4</option>
                    </select>
                  </div>
                </div>
                <div class="form-group row justify-content-center">
                  <div id= "seccion3-1-help1" class="col-sm-auto align-self-end">¿Que quieres hacer?</div>
                  <div class="col-sm-auto">
                    <select id="actividad" class="form-control">
                      <option value= "aventura" selected>Aventura</option>
                      <option value= "naturaleza" >Naturaleza</option>
                      <option value= "cultural" >Cultural</option>
                      <option value= "relax" >Relax</option>
                      <option value= "entretenimiento" >Compras/Entretenimiento</option>
                      <option value= "Festividades" >Festividades</option>          
                    </select>
                  </div>
                </div>
         
                <div class="form-group row justify-content-between" id = "seccion3-1-footer">
                    <div id= "seccion3-1-help2" class="col-sm-auto align-self-end">
                      <a href="#seccion3-1-help2"><span class="Icon-svg"></span> Opciones Avanzadas</a>
                    </div>
                    <div class="col-sm-auto">
                      <button type="submit" class = "btn btn-md btn-outline-info"><span class="Icon-search"></span> Buscar</button>
                    </div>
                </div>
                 </form>
        
         </div>

          <div class="col-lg-6 background order-lg-2 order-1 wow fadeInRight personalizado2"></div>
        </div>

      </div>
    </section><!-- #about -->

    <!--==========================
      Facts Section
    ============================-->
    
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
            <a class="cta-btn align-middle" href="#">Iniciar Sesión</a>
          </div>
        </div>

      </div>
    </section><!-- #call-to-action -->

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
          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/aventura1.jpg"/>" alt="">
              <div class="details">
                <h4>Paracas</h4>
                <span>$200</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/naturaleza2.jpg"/>" alt="">
              <div class="details">
                <h4>Titicaca</h4>
                <span>$230</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/aventura3.jpg"/>" alt="">
              <div class="details">
                <h4>Ayacucho</h4>
                <span>$100</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-card">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/cultura1.jpg"/>" alt="">
              <div class="details">
                <h4>Lambayeque</h4>
                <span>$250</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-card">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/cultura2.jpg"/>" alt="">
              <div class="details">
                <h4>Arequipa</h4>
                <span>$175</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/naturaleza3.jpg"/>" alt="">
              <div class="details">
                <h4>Cañon Colca</h4>
                <span>$200</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-card">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/cultura3.jpg"/>" alt="">
              <div class="details">
                <h4>Cusco</h4>
                <span>$200</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-app">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/aventura2.jpg"/>" alt="">
              <div class="details">
                <h4>Piura</h4>
                <span>$300</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-logo">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/relax1.jpg"/>" alt="">
              <div class="details">
                <h4>Mancora</h4>
                <span>$500</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-logo">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/relax3.jpg"/>" alt="">
              <div class="details">
                <h4>Cañete</h4>
                <span>$250</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-web">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/naturaleza1.jpg"/>" alt="">
              <div class="details">
                <h4>Manu</h4>
                <span>$350</span>
              </div>
            </a>
          </div>

          <div class="col-lg-3 col-md-6 portfolio-item filter-logo">
            <a href="">
              <img src="<c:url value="/resources/img/portfolio/relax2.jpg"/>" alt="">
              <div class="details">
                <h4>Tambopata</h4>
                <span>$275</span>
              </div>
            </a>
          </div>

        </div>

      </div>
    </section><!-- #portfolio -->

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
              <form action="" method="post" role="form" class="contactForm">
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
  <script type="text/javascript">
    $("#fecha_ida").datetimepicker({
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: 1
    });
    $("#fecha_regreso").datetimepicker({
        format: 'yyyy-mm-dd',
        minView: 2,
        autoclose: 1
    });
  </script>
	
</body>
</html>