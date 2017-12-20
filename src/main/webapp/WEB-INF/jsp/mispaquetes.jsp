<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html >
<head>
 
  <title>AQP-TRAVEL</title>
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
  <link href="<c:url value="/resources/css/mystyle.css"/>" rel="stylesheet">
  
</head>
<body>
	<header id="header" style="background:#37454d;">
    <div class="container">  
    
    <div id="logo" class="pull-left">
        <h3 style="color:white;"> AQP-TRAVEL</h3>
        <!-- Uncomment below if you prefer to use a text logo -->
        <!--<h1><a href="#hero">Regna</a></h1>-->
      </div>   

      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index">Inicio</a></li>
          <li><a href="#portfolio">Destinos</a></li>
          <li><a href="#services">Actividades</a></li>
          <li><a href="#call-to-action">Ofertas</a></li>
          <li><a href="mispaquetes">Mis Paquetes</a></li>
          <li><a href="#team">Nosotros</a></li>
         
          <li><a href="#contact">Contacto</a></li>
        </ul>
      </nav><!-- #nav-menu-container -->
    </div>
  </header><!-- #header -->

  <!--==========================
    Hero Section
  ============================-->

  <section id="" style="padding-top:50px;">
    <div class="container">
    
    <div class="row about-container" style="margin: 100px 10px 80px 10px;">

          <div class="col-lg-4 content order-lg-1  personalizado-form" style="height:700px;padding:20px 50px 0px 50px; background:white;  border: 1px solid;
    box-shadow: 5px 10px 8px #888888;">
            <h6 style="font-weight: bold;">Encuentra tu Paquete!!</h46>
       
            <form>           
            
            
            
            <div class="form-group row" style="margin-top:30px;">
            <span style="font-size: 15px;font-weight: bold;" class="help-block">Fecha de Regreso:</span>
                           <div class="input-group">
                      <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                      <input size="5" type="text" placeholder="--/--/--" class="form-control" id="fecha_regreso" readonly>
                      </div>
                </div>        
                                         
                                              
           
            
                           <div class="form-group row">                           
            <span style="font-size: 15px;font-weight: bold;" class="help-block">Fecha de Salida:</span>
                           <div class="input-group">
                      <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                      <input size="5" type="text" class="form-control" id="fecha_ida" placeholder="--/--/--" readonly>
                      </div>
                </div>
                
                 
                 <div class="form-group row">
                  <span style="font-size: 15px;font-weight: bold;" class="help-block">Ingrese Destino:</span>
                           <div class="input-group">
                      <span class="input-group-addon"><span class="fa fa-globe"></span></span>
                      <input size="5" type="text" placeholder="..." class="form-control" id="fecha_ida" >
                      </div>
                </div>
                
                
              
                
                <div class="form-group row">   
                		<span style="font-size: 14px;font-weight: bold;" class="help-block">Numero de Personas:</span>
														<select id="num_niños" name="capacidadPaquete"  
															class="form-control" title="Numero de Pesonas">
															
															<option value="0" selected>0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
														</select> 
													
													
												</div>
                
                 
                <div class="form-group row">
                  
              <span style="font-size: 14px;font-weight: bold;" class="help-block">Tipo de Actividad:</span>
                    <select id="actividad" class="form-control">
                      <option value= "aventura" selected>Aventura</option>
                      <option value= "naturaleza" >Naturaleza</option>
                      <option value= "cultural" >Cultural</option>
                      <option value= "relax" >Relax</option>
                      <option value= "entretenimiento" >Compras/Entretenimiento</option>
                      <option value= "Festividades" >Festividades</option>          
                    </select>
                  
                </div>
                
                <div class="form-group row">
                  
              
                     <span style="font-size: 14px;font-weight: bold;" class="help-block">  <input type="checkbox" >  Ver Solo Ofertas.</span>
                  
                </div>
         
                <div class="panel-footer">
    				
    			
    				<button type="button" class="btn btn-success pull-right col-md-12" style="margin:15px 0px;" onclick="" >Buscar</button>
                   	 	<button class="btn btn-default col-md-12" style="margin:10px 0px;">Limpiar</button>
                   	 	</div>
                
                 </form>
        
           </div>

		   <div id = "resultados" class="col-lg-8  order-lg-2 order-2 ">   
		   
		              
              <div class="container wow fadeInRight" >               

                <div class="row" id="resultados-wrapper" style="padding:12px 10px 10px 0px; margin:10px 0px;background:white;border: 1px solid;
    box-shadow: 5px 8px 8px #888888;">
                
                  <div class="col-lg-6 resultados-item filter-app" >
                    
                    <a href="">
                      <img src="<c:url value="/resources/img/portfolio/aventura1.jpg"/>" alt="">
                      <div class="details">
                        
                        <h4> PARACAS - $200</h4>
                        <a href="" class="link-mas">Detalles</a>                      
                      </div>
                    </a>  
                   
                  </div> 
                  
                  <div class="col-lg-6 " >                  
                   
                   <a href=""> <h4 style="font-weight:bold;color:black;"> LA MONTAÑA ARCO IRIS VINICUNCA - FULL DAY </h4></a>
                    <span> 
	                    <i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
					</span>
                    
                    <p  style="font-size: 14px;"> Este lugar es reconocido</p>
                  </div>                   
               </div>
               
               <div class="row" id="resultados-wrapper" style="padding:12px 10px 10px 0px; margin:10px 0px;background:white;border: 1px solid;
    box-shadow: 5px 8px 8px #888888;">
                
                  <div class="col-lg-6 resultados-item filter-app" >
                    
                    <a href="">
                      <img src="<c:url value="/resources/img/portfolio/aventura2.jpg"/>" alt="">
                      <div class="details">
                        
                        <h4> PARACAS - $200</h4>
                        <a href="" class="link-mas">Detalles</a>                      
                      </div>
                    </a>  
                   
                  </div> 
                  
                  <div class="col-lg-6 " >                  
                   
                   <a href=""> <h4 style="font-weight:bold;color:black;"> LA MONTAÑA ARCO IRIS VINICUNCA - FULL DAY </h4></a>
                    <span> 
	                    <i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
					</span>
                    
                    <p  style="font-size: 14px;"> Este lugar es reconocido</p>
                  </div>                   
               </div>
               
               
               <div class="row" id="resultados-wrapper" style="padding:12px 10px 10px 0px; margin:10px 0px;background:white;border: 1px solid;
    box-shadow: 5px 8px 8px #888888;">
                
                  <div class="col-lg-6 resultados-item filter-app" >
                    
                    <a href="">
                      <img src="<c:url value="/resources/img/portfolio/aventura3.jpg"/>" alt="">
                      <div class="details">
                        
                        <h4> PARACAS - $200</h4>
                        <a href="" class="link-mas">Detalles</a>                      
                      </div>
                    </a>  
                   
                  </div> 
                  
                  <div class="col-lg-6 " >                  
                   
                   <a href=""> <h4 style="font-weight:bold;color:black;"> LA MONTAÑA ARCO IRIS VINICUNCA - FULL DAY </h4></a>
                    <span> 
	                    <i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
					</span>
                    
                    <p  style="font-size: 14px;"> Este lugar es reconocido</p>
                  </div>                   
               </div>
               
               
               <div class="row" id="resultados-wrapper" style="padding:12px 10px 10px 0px; margin:10px 0px;background:white;border: 1px solid;
    box-shadow: 5px 8px 8px #888888;">
                
                  <div class="col-lg-6 resultados-item filter-app" >
                    
                    <a href="">
                      <img src="<c:url value="/resources/img/portfolio/cultura1.jpg"/>" alt="">
                      <div class="details">
                        
                        <h4> PARACAS - $200</h4>
                        <a href="" class="link-mas">Detalles</a>                      
                      </div>
                    </a>  
                   
                  </div> 
                  
                  <div class="col-lg-6 " >                  
                   
                   <a href=""> <h4 style="font-weight:bold;color:black;"> LA MONTAÑA ARCO IRIS VINICUNCA - FULL DAY </h4></a>
                    <span> 
	                    <i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
					</span>
                    
                    <p  style="font-size: 14px;"> Este lugar es reconocido</p>
                  </div>                   
               </div>
               
               
               <div class="row" id="resultados-wrapper" style="padding:12px 10px 10px 0px; margin:10px 0px;background:white;border: 1px solid;
    box-shadow: 5px 8px 8px #888888;">
                
                  <div class="col-lg-6 resultados-item filter-app" >
                    
                    <a href="">
                      <img src="<c:url value="/resources/img/portfolio/cultura2.jpg"/>" alt="">
                      <div class="details">
                        
                        <h4> PARACAS - $200</h4>
                        <a href="" class="link-mas">Detalles</a>                      
                      </div>
                    </a>  
                   
                  </div> 
                  
                  <div class="col-lg-6 " >                  
                   
                   <a href=""> <h4 style="font-weight:bold;color:black;"> LA MONTAÑA ARCO IRIS VINICUNCA - FULL DAY </h4></a>
                    <span> 
	                    <i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
						<i class="fa fa-star" aria-hidden="true" style="color: #FFD700;"></i>
					</span>
                    
                    <p  style="font-size: 14px;"> Este lugar es reconocido</p>
                  </div>                   
               </div>
               
               
               
               
               
                  
                  
                  
              </div>

           </div>
        </div>
      
    </div>
  </section><!-- #hero -->

  <main id="main">

    <!--==========================
      About Us Section
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