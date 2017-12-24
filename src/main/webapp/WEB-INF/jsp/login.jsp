<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>ViajaArequipa-Página de Inicio</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tourism web template" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--// Meta tag Keywords -->
<!-- css files -->
<link href="<c:url value="/resources/css/bootstrap.css"/> " rel="stylesheet" 	media="all">

<link href="<c:url value="/resources/css/styleUser.css"/> " rel="stylesheet" 	media="all">

<link href="<c:url value="/resources/css/font-awesome.css"/> " rel="stylesheet" 	media="all">



<!-- //css files -->
<!-- online-fonts -->
<link href="https://fonts.googleapis.com/css?family=Barlow+Semi+Condensed|IM+Fell+English|Source+Sans+Pro|Tenor+Sans" rel="stylesheet">
<!-- //online-fonts -->

<!-- js-scripts -->			
	<!-- js -->
<script src="<c:url value="/resources/js/jquery-2.1.4.min.js" />"></script> 

<script src="<c:url value="/resources/js/bootstrap.js" />"></script> 

<script src="<c:url value="/resources/js/easyResponsiveTabs.js" />"></script> 


				
	<script type="text/javascript">
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true   // 100% fit in a container
			});
		});
	</script>
	<!-- //Easy Responsivetabs -->
	<!-- strat-date-piker -->

	<!-- //End-date-piker -->
	<!-- Numscroller -->

<script src="<c:url value="/resources/js/numscroller-1.0.js" />"></script> 

	<!-- //Numscroller -->
<!-- //js-scripts -->



</head>
<body> 
<div class="main-agile">
	<!-- banner -->
	<div id="home" class="w3ls-banner"> 
		<!-- banner-text -->
		<div class="w3layouts-banner-top">
			<div class="container">
				<div class="agileits-banner-info">
					<div class="rw-wrapper">
                        <div class="rw-sentence">
                            <div class="rw-words rw-words-1" style="font-size:55px; margin-left:36%;">
                                <span><strong>AREQUIPA</strong></span>
                                <span><strong>AREQUIPA</strong></span>
                                <span><strong>AREQUIPA</strong></span>
                                <span><strong>AREQUIPA</strong></span>
                                <span><strong>AREQUIPA</strong></span>
                            </div>
                          <div class="rw-words rw-words-1" style="font-size:28px; margin:0% 38%; ">
                                <span style="color:#600"><strong>Tiene un plan para ti</strong></span>
                                <span style="color:#600"><strong>Tiene un plan para ti</strong></span>
                                <span style="color:#600"><strong>Tiene un plan para ti</strong></span>
                                <span style="color:#600"><strong>Tiene un plan para ti</strong></span>
                                <span style="color:#600"><strong>Tiene un plan para ti</strong></span>
                                
                            </div>
                          <div class="rw-words rw-words-2">
                                <span style="margin-left:13%">DISFRUTA SU CULTURA</span>
                                <span style="margin-left:10%">DISFRUTA LA NATURALEZA</span>
                                <span style="margin-left:13%">DISFRUTA LA AVENTURA</span>
                                <span style="margin-left:13%">DISFRUTA SU CULTURA</span>
                                <span style="margin-left:10%">DISFRUTA LA NATURALEZA</span>
                                <span style="margin-left:13%">DISFRUTA LA AVENTURA</span>
                            </div>
                        </div>
                    </div>
				</div>	
				<div class="sap_tabs">	
					<div id="horizontalTab" style="display: block; width: 100%; margin: 0px; ">
						<ul class="resp-tabs-list">
							<li class="resp-tab-item grid1"><span><i class="glyphicon glyphicon-plane" aria-hidden="true" style="color:#FFF"></i>Busca el tour que se ajuste a tus preferencias</span></li>
							
						</ul>				  	 
						<div class="resp-tabs-container">
							<div class="tab-1 resp-tab-content">
								<div class="facts">
									<form action="#" method="post">
										<div class="reservation">
											<ul>		
												<li  class="span1_of_1 desti">
													 <div class="book_date">
                                                     		<h4>¿Cuándo llegas a Arequipa?</h4>
															 <select  class="typeahead1 input-md form-control tt-input" style="font-family: 'Barlow Semi Condensed', sans-serif;">
                                                                                                                            										<option>Seleccione Mes</option>
                                                                <option>Enero</option>
                                                                <option>Febrero</option>
                                                                <option>Marzo</option>
                                                                <option>Abril</option>
                                                                <option>Mayo</option>
                                                                <option>Junio</option>
                                                                <option>Julio</option>
                                                                <option>Agosto</option>
                                                                <option>Octubre</option>
                                                                <option>Noviembre</option>
                                                                <option>Diciembre</option>
                                                              </select>           
														
													 </div>					
												 </li>
											</ul>
										</div>
										<div class="reservation">
											<ul>	
												 <li  class="span1_of_1">
													 <h5>¿Qué quieres hacer?</h5>
													 <div class="book_date">
													<div class="book_date">
															
															<select class="typeahead1 input-md form-control tt-input" id="actividad" style="font-family: 'Barlow Semi Condensed', sans-serif; width:100%; margin-left:0; margin-top:8%">
                                                                <option>Seleccione opción</option>
                                                                <option>Aventura</option>
                                                                <option>Naturaleza</option>
                                                                <option>Historia y Cultura</option>
                                                                <option>Descanso y Relax</option>
                                                                <option>Festividades</option>
                                                                <option>Turismo Vivencial</option>
                                                              
                                                              </select>
														 
													</div>	
													 </div>		
												 </li>
												 <li  class="span1_of_1 left">
													 <h5>¿Qué lugar turístico quieres visitar?</h5>
													 <div class="book_date">
                                                     		<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
                                                     		<input type="text" placeholder="Ingrese sitio turístico" class="typeahead1 input-md form-control tt-input" style="height:40px; margin-top:0%">				
													 </div>					
												 </li>
											</ul>
										</div>
										<div class="reservation w3l-submit">
											<ul>	
												 <li class="span1_of_3">
														<div class="date_btn">
																<input type="submit" value="Mostrar Ofertas" />
														</div>
												 </li>
											</ul>
										</div>
									</form>
								<div class="clearfix"></div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>			
</div>
<!-- //banner-text -->
<!-- //banner --> 
<!-- header -->
<div class="header-w3layouts"> 
	<!-- Navigation -->
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Turismo</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div> 
		<div class="logo-agile-1"> 
			<h1><a class="logo" href="login"><i class="fa fa-plane" aria-hidden="true"></i>&nbsp;&nbsp;ViajaArequipa</a></h1>
		</div> 
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse navbar-ex1-collapse">
			<ul class="nav navbar-nav navbar-right">
				<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
				<li class="active"><a href="login">Inicio</a></li>
				<li><a class="" href="destinos.jsp">Destinos</a></li>
                <li><a class="" href="festividades.html">Festividades</a></li>
				<li><a class="" href="ofertas.jsp">Ofertas</a></li>
               
			</ul>
            
            <!--UN IF PARA UN USUARIO LOGUEADO Y PARA UNO QUE NO-->
			<div class="w3ls-social-icons-2">
            
				<a class="inicio" href="#" data-toggle="modal" data-target="#myModal" data-dismiss="modal" data-backdrop="false"><i class="fa fa-user fa-3x" aria-hidden="true" style="font-size: 2em;"></i></a>
                <!--MOdal-->
                <div class="modal" id="myModal" role="dialog">
                            <div class="modal-dialog">
    
                              <!-- Modal content-->
                              <div class="modal-content">
                                <div class="modal-header" style="padding:35px 50px;">
                                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                                  <h4><span class="glyphicon glyphicon-lock"></span>&nbsp;Inicia Sesi&oacute;n</h4>
                                </div>
                               	<div class="modal-body" style="padding:40px 50px;">
                                  <form role="form" method="post" action="/loginServlet">
                                    <div class="form-group">
                                      <label for="usrname"><span class="glyphicon glyphicon-user"></span> Usuario</label>
                                      <br>
                                      <input type="text" class="form-control" name="id" id="nombre" required placeholder="Ingrese su Usuario">
                                    </div>
                                    <div class="form-group">
                                      <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
                                      <input type="password" class="form-control" name="contrasena" id="pass" required placeholder="Ingrese Password">
                                    </div>
                                    
                                      <button type="submit" class="btn  btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Ingresar</button>
                                  </form>
                                </div>
                                <div class="modal-footer">
                                  <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Salir</button>
                                  <br>
                                  <br>
                                  <p>¿NO ESTÁ REGISTRADO?<a href="Registrar">&nbsp;&nbsp;REGISTRARSE AQUÍ</a></p>
                                  
                                </div>
                              </div>
                              
                            </div>
                          </div>
                          
                          <script>
                        $(document).ready(function(){
                            $("#myBtn").click(function(){
                                $("#myModal").modal();
                            });
                        });
                        </script>
                          
                          
				<a class="linkedin" href="preguntas.html"><i class="fa fa-question-circle fa-3x" aria-hidden="true" style="font-size: 2em;"></i></a>
                
                <!--solo aparece si esta logueado-->
				<a class="tumblr" href="carritoVacio.jsp"><i class="fa fa-shopping-cart fa-3x" aria-hidden="true" style="font-size: 2em;"></i></a>
			</div>
		</div>
        
        				
		<!-- //navbar-collapse -->
	</nav>  
	<div class="clearfix"> </div>
</div>	
<!-- //header -->
<!-- welcome -->
<div class="about w3layouts-agileinfo">
	<div class="container">
		<div class="about-top w3ls-agile">
			<div class="col-md-6 red-w3l">
				<img class="img-responsive" src="/resources/images/arequipa.jpg" alt="">
				<img class="img-responsive" src="/resources/images/imagen2.jpg" alt="">
				<div class="position-w3l"></div>
			</div>
			<div class="col-md-6 come">
				<div class="about-wel">
					<h5>Bienvenido a Arequipa</h5>
					<p>Conocida como la Ciudad Blanca por su arquitectura esculpida en sillar, Arequipa resplandece favorecida por un clima siempre soleado todo el año y un cielo azul que te invitan a caminar y admirar la belleza de sus monumentos, nevados, volcanes y profundos cañones, además de disfrutar de su exquisita gastronomía y una vida nocturna que te animarán a regresar más de una vez. <strong>¿Qué esperas? ¡Empecemos el viaje!</strong></p>
					<p>Nuestro sitio te ofrece infinidad de opciones para que planifiques tu viaje, con la tranquilidad y la seguridad que nosotros ofrecemos</p>
				</div>
				<div class="steps-wel">
					<h5>¿Qué Ofrecemos?</h5>
					<div class="col-md-3 col-sm-3 col-xs-3 w3ls_banner_bottom_grids first-posi-w3l">
						<div class="w3l_banner_bottom_grid1">
							<i class="fa fa-map-marker hvr-pulse-shrink" aria-hidden="true"></i>
						</div>
						<div class="w3l_banner_bottom_grid1">
							<i class="fa fa-users hvr-pulse-shrink" aria-hidden="true"></i>
						</div>
						<div class="w3l_banner_bottom_grid1">
							<i class="fa fa-car hvr-pulse-shrink" aria-hidden="true"></i>
						</div>
					</div>
					<div class="col-md-2 col-sm-2 col-xs-2 w3ls_banner_bottom_grids">
						<h6>1</h6>
						<h6>2</h6>
						<h6>3</h6>
					</div>
					<div class="col-md-7 col-sm-7 col-xs-7 w3ls_banner_bottom_grids">
						<p style="font-family: 'Source Sans Pro', sans-serif; color:#333; font-size:15px;">Facilidad y Comparación de Precios: Cientos de tours en un solo lugar</p>
						<p style="font-family: 'Source Sans Pro', sans-serif; color:#333; font-size:15px">Tours hechos a medida: Puedes elegir las carácterísticas que quieras</p>
						<p style="font-family: 'Source Sans Pro', sans-serif; color:#333; font-size:15px">Seguridad: Trabajamos con agencias formales pertenecientes al APAVIT</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- //welcome -->
<!-- stats -->
<div class="stats">
	<div class="container">
		<div class="stats-info">
			<div class="col-md-3 col-sm-3 stats-grid slideanim">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='1200' data-delay='.5' data-increment="1">1200</div>
				<h4 class="stats-info">CLIENTES</h4>
			</div>
			<div class="col-md-3 col-sm-3 stats-grid slideanim">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='800' data-delay='.5' data-increment="1">800</div>
				<h4 class="stats-info">VISITAS</h4>
			</div>
			<div class="col-md-3 col-sm-3 stats-grid slideanim">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='120' data-delay='.5' data-increment="10">120</div>
				<h4 class="stats-info">TOURS</h4>
			</div>
			<div class="col-md-3 col-sm-3 stats-grid slideanim">
				<div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='60' data-delay='.5' data-increment="1">60</div>
				<h4 class="stats-info">AGENCIAS</h4>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //stats -->
<!-- Popular -->
<div class="albums">
	<div class="container">
		<h3 class="agile-title">OFERTAS M&Aacute;S POPULARES</h3> 
		<div class="w3layouts_header">
			<p><span><i class="fa fa-plane sub-w3l" aria-hidden="true"></i></span></p>
		</div>
		<div class="col-md-6 w3lsalbums-grid" style="border-color:#666">
			<div class="albums-left"> 
				<div class="wthree-almub" style="background-image:url(/resources/images/fullday2.jpg)no-repeat center;">   
				</div>
			</div>
			<div class="albums-right">
            	<!--LLENAR DE BD-->
				<h4>Arequipa Full Day</h4>
				<p>De 8:00am a 5:00pm</p>
          
                    <div class="col-sm-1" style="width:60%;float:left">
                    	<div style="width:100%;padding-left:1%">
                        	<p style="font-family: 'Barlow Semi Condensed', sans-serif;font-size:14.5px;color:#333;">Locaci&oacute;n: Arequipa</p>
                            
                        </div>
                        <div class="star" style="width:100%;">
                        	<ul>
                            	<li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            </ul>
                     
                        </div>
                    </div>
                    <div class="col-sm-1" style="width:40%;padding-bottom:1%; float:right">
                    	<!--JALAR PRECIO-->
                    	<h1 style="font-family: 'Barlow Semi Condensed', sans-serif;color:#600;">&nbsp;$500</h1>
                    </div>
                	<div class="detalle" style="width:100%;float:inherit;   display: flex; justify-content: center; align-items: center;">
						<button type="button" class="btn btn-default">Ver detalle</button>
                    </div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-6 w3lsalbums-grid">
        	<!--Imagen de paquete-->
			<div class="albums-left"> 
				<div class="wthree-almub" style="background-image:url(/resources/images/fullday2.jpg)no-repeat center;">   
				</div>
			</div>
			<div class="albums-right">
            	<!--LLENAR DE BD-->
				<h4>Arequipa Full Day</h4>
				<p>De 8:00am a 5:00pm</p>
          
                    <div class="col-sm-1" style="width:60%;float:left">
                    	<div style="width:100%;padding-left:1%">
                        	<p style="font-family: 'Barlow Semi Condensed', sans-serif;font-size:14.5px;color:#333;">Locaci&oacute;n: Arequipa</p>
                            
                        </div>
                        <div class="star" style="width:100%;">
                        	<ul>
                            	<li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            </ul>
                     
                        </div>
                    </div>
                    <div class="col-sm-1" style="width:40%;padding-bottom:1%; float:right">
                    	<!--JALAR PRECIO-->
                    	<h1 style="font-family: 'Barlow Semi Condensed', sans-serif;color:#600;">&nbsp;$500</h1>
                    </div>
                	<div class="detalle" style="width:100%;float:inherit;   display: flex; justify-content: center; align-items: center;">
						<button type="button" class="btn btn-default">Ver detalle</button>
                    </div>
			</div>
			<div class="clearfix"></div>
		</div>  
		<div class="col-md-6 w3lsalbums-grid">
			<div class="albums-left"> 
				<div class="wthree-almub" style="background-image:url(/resources/images/fullday2.jpg)no-repeat center;">  
				</div>
			</div>
			<div class="albums-right">
            	<!--LLENAR DE BD-->
				<h4>Arequipa Full Day</h4>
				<p>De 8:00am a 5:00pm</p>
          
                    <div class="col-sm-1" style="width:60%;float:left">
                    	<div style="width:100%;padding-left:1%">
                        	<p style="font-family: 'Barlow Semi Condensed', sans-serif;font-size:14.5px;color:#333;">Locaci&oacute;n: Arequipa</p>
                            
                        </div>
                        <div class="star" style="width:100%;">
                        	<ul>
                            	<li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            </ul>
                     
                        </div>
                    </div>
                    <div class="col-sm-1" style="width:40%;padding-bottom:1%; float:right">
                    	<!--JALAR PRECIO-->
                    	<h1 style="font-family: 'Barlow Semi Condensed', sans-serif;color:#600;">&nbsp;$500</h1>
                    </div>
                	<div class="detalle" style="width:100%;float:inherit;   display: flex; justify-content: center; align-items: center;">
						<button type="button" class="btn btn-default">Ver detalle</button>
                    </div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="col-md-6 w3lsalbums-grid">
			<div class="albums-left"> 
				<div class="wthree-almub" style="background-image:url(/resources/images/fullday2.jpg)no-repeat center;">   
				</div>
			</div>
			<div class="albums-right">
            	<!--LLENAR DE BD-->
				<h4>Arequipa Full Day</h4>
				<p>De 8:00am a 5:00pm</p>
          
                    <div class="col-sm-1" style="width:60%;float:left">
                    	<div style="width:100%;padding-left:1%">
                        	<p style="font-family: 'Barlow Semi Condensed', sans-serif;font-size:14.5px;color:#333;">Locaci&oacute;n: Arequipa</p>
                            
                        </div>
                        <div class="star" style="width:100%;">
                        	<ul>
                            	<li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                                <li><i class="fa fa-star-o" aria-hidden="true"></i></li>
                            </ul>
                     
                        </div>
                    </div>
                    <div class="col-sm-1" style="width:40%;padding-bottom:1%; float:right">
                    	<!--JALAR PRECIO-->
                    	<h1 style="font-family: 'Barlow Semi Condensed', sans-serif;color:#600;">&nbsp;$500</h1>
                    </div>
                	<div class="detalle" style="width:100%;float:inherit;   display: flex; justify-content: center; align-items: center;">
						<button type="button" class="btn btn-default">Ver detalle</button>
                    </div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div> 
	</div>
</div>
<!-- //Popular --> 
<!-- footer -->
<footer>
	<div class="agileinfo-footer">
		<div class="container">
			<div class="agileits-footer-top">
				<div class="col-sm-4 w3ls-address-grid">
					<i class="glyphicon glyphicon-map-marker"></i>
					<div class="w3-address1">
						<p>Av.Independencia S/N - Arequipa</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-sm-4 w3ls-address-grid">
					<i class="glyphicon glyphicon-phone"></i>
					<div class="w3-address1">
						<p>953719528</p>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="col-sm-4 w3ls-address-grid">
					<i class="fa fa-book" aria-hidden="true" style="color:#FFF"></i>
					<div class="w3-address1">
						<p><a href="libro.jsp">Quejas y Sugerencias</a></p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			
			<!-- Counter -->
			<div class="services-bottom">
				<div class="counter-agile">
					<div class="counter-subw3l">
						<p><a href="login" style="font-family: 'Tenor Sans', sans-serif; font-size:25px"><i class="fa fa-plane" aria-hidden="true"></i>ViajaAqp</a></p>
					</div>
					<div class="ftr-menu">
						 <ul>
							<li class="active"><a href="login">Inicio</a></li>
                            <li><a class="" href="destinos.jsp">Destinos</a></li>
                            <li><a class="" href="festividades.html">Festividades</a></li>
                            <li><a class="" href="ofertas.jsp">Ofertas</a></li>
						 </ul>
					</div>
					<div class="counter-subw3l w3l-right-footer">
						<ul class="w3layouts-agileits-social">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-youtube"></i></a></li>
				
						</ul>
						<div class="clearfix"> </div>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
			<!-- //Counter -->
		</div>
		<div class="agileits-footer-bottom">
			<p class="footer-class">&copy; 2017 ViajaArequipa Todos los Derechos Reservados | Dise&ntilde;ado por:  <a href="www.tecsoft.com" target="_blank">TecSoft</a> </p>
		</div>
	</div>
</footer>
<!-- //footer -->
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%-- 	pageEncoding="ISO-8859-1"%> --%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->


<!-- <html lang="es"> -->
<!-- <head> -->

<!-- <meta name="viewport" -->
<!-- 	content="width=device-width, initial-scale=1, shrink-to-fit=no"> -->

<!-- <title>Registrar</title> -->
<%-- <link href="<c:url value="/resources/css/bootstrap.min.css"/> " --%>
<!-- 	rel="stylesheet"> -->
<%-- <link href="<c:url value="/resources/css/miEstilo.css"/> " --%>
<!-- 	rel="stylesheet"> -->
<%-- <link href="<c:url value="/resources/css/languages.min.css"/> " --%>
<!-- 	rel="stylesheet"> -->
<%-- <link href="<c:url value="/resources/css/style2.css"/> " rel="stylesheet"> --%>
<!-- </head> -->
<!-- <body class="container"> -->
<!-- 	<div class="test"></div> -->


<!-- 	<div class="row justify-content-center "> -->
<!-- 		<div id="div_registro_usuario" class="col col-md-6 "> -->
<!-- 			<form id="form_login" action="plogin" method="POST"> -->
				
				
<!-- 				<div class="form-group"> -->
<!-- 					<label for="correo"><span class="Icon-user3"></span> Correo</label> -->
<!-- 					<input type="text" class="form-control" id="correo" name="correo" -->
<!-- 						placeholder="Ingrese Correo"> -->
<!-- 				</div> -->
<!-- 				<div class="form-group"> -->
<!-- 					<label for="contrasena"><span class="Icon-lock"></span> -->
<!-- 						Contraseña</label> -->
<!-- 					<div class="input-group mb-2 mb-sm-0"> -->
<!-- 						<input type="password" class="form-control" id="contrasena"  -->
<!-- 							name="contrasena" placeholder="Ingrese Contraseña"> -->
<!-- 					</div> -->
<!-- 				</div>				 -->

<!-- 				<div id="div_sub_reg" class="form-group justify-content-center"> -->
<%-- 					<center> --%>
<!-- 						<button type="submit" class="btn btn-success btn-lg btn_reg_cli" onclick="login()"> -->
<!-- 							<span class="Icon-floppy-disk"></span> Ingresar -->
<!-- 						</button> -->
<%-- 					</center> --%>

<!-- 				</div> -->

<!-- 			</form> -->
<!-- 		</div> -->

<!-- 	</div> -->



<%-- 	<script src="<c:url value="/resources/js/jquery.min.js" />"></script> --%>


<!-- </body> -->
<!-- </html> -->