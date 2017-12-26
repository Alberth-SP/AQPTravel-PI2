<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Administrador-Agencias</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="<c:url value="/resources/css/bootstrap.css"/> " rel="stylesheet" 	media="all">
<!-- Custom Theme files -->
<link href="<c:url value="/resources/css/style2.css"/> " rel="stylesheet" 	media="all">
<!--js-->
<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<!--icons-css-->
<link href="<c:url value="/resources/css/font-awesome.css"/> " rel="stylesheet" 	media="all"> 
<!--Google Fonts-->
<link href="https://fonts.googleapis.com/css?family=Carrois+Gothic|Work+Sans:400,500,600" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Ruda" rel="stylesheet">
<link href="<c:url value="/resources/css/font-awesome.min.css"/> " rel="stylesheet" 	media="all"> 
<link href="<c:url value="/resources/css/multiple-select.css"/> " rel="stylesheet" 	media="all"> 


<!--scrolling js-->
		<script src="<c:url value="/resources/js/jquery.nicescroll.js" />"></script>
		<script src="<c:url value="/resources/js/scripts.js.js" />"></script>
		<!--//scrolling js-->
<script src="<c:url value="/resources/js/bootstrap.js" />"></script>
<script src="<c:url value="/resources/js/multiple-select.js" />"></script>
<link href="<c:url value="/resources/css/bootstrap-datetimepicker.min.css"/>" rel="stylesheet">

<script>
    $(function() {
        $('#ms').change(function() {
            console.log($(this).val());
        }).multipleSelect({
            width: '100%'
        });
    });
</script>



<style type="text/css" media=screen>
	.btn span.fa {    			
		opacity: 0;				
	}
	.btn.active span.fa {				
		opacity: 1;				
	}
	.help-block{
		font-size:12px;
	}
	.col-md-3.control-label {
		font-size:13px;
	}
	
</style>	

</head>
<body>	
<div class="page-container">	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
				<div class="header-main">
					<div class="header-left">
							<div class="logo-name">
									 <a href="index_admin.html"> <h1>AqpTravel</h1> 
									<!--<img id="logo" src="" alt="Logo"/>--> 
								  </a> 								
							</div>
							
							<div class="clearfix"> </div>
					</div>
						 <div class="header-right">
							<div class="profile_details_left"><!--notifications of menu start -->
								<ul class="nofitications-dropdown">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope fa-2x"></i><span class="badge">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>Tienes (3) mensajes nuevos</h3>
												</div>
											</li>
											<li><a href="#">
											   <div class="user_img"><img src="images/p4.png" alt=""></div>
											   <div class="notification_desc">
												<p>Jalar de BD mensaje</p>
												<p><span>Hace 1 hora</span></p>
												</div>
											   <div class="clearfix"></div>	
											</a></li>
											<li class="odd"><a href="#">
												<div class="user_img"><img src="images/p2.png" alt=""></div>
											   <div class="notification_desc">
												<p>Jalar de BD mensaje</p>
												<p><span>Hace 1 hora</span></p>
												</div>
											  <div class="clearfix"></div>	
											</a></li>
											<li><a href="#">
											   <div class="user_img"><img src="images/p3.png" alt=""></div>
											   <div class="notification_desc">
												<p>Jalar de BD mensaje</p>
												<p><span>Hace 2 horas</span></p>
												</div>
											   <div class="clearfix"></div>	
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="mensajes_admin.html">Ver Todos los mensajes</a>
												</div> 
											</li>
										</ul>
									</li>
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell fa-2x"></i><span class="badge blue">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>TÃº tienes (JalarBD) Paquetes agregados</h3>
												</div>
											</li>
											<li><a href="#">
												<div class="user_img"><img src="images/p5.png" alt=""></div>
											   <div class="notification_desc">
												<p>La agencia (JalarBD) agregÃ³ nuevo paquete</p>
												<p><span>Hace una hora</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/p6.png" alt=""></div>
											   <div class="notification_desc">
												<p>La agencia (JalarBD) agregÃ³ nuevo paquete</p>
												<p><span>Hace 1 hora</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li><a href="#">
												<div class="user_img"><img src="images/p7.png" alt=""></div>
											   <div class="notification_desc">
												<p>La agencia (JalarBD) agregÃ³ nuevo paquete</p>
												<p><span>Hace 1 hora</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li>
												<div class="notification_bottom">
													<a href="#">Ver todas las Notificaciones</a>
												</div> 
											</li>
										</ul>
									</li>	
										
								</ul>
								<div class="clearfix"> </div>
							</div>
                            
							<!--notification menu end -->
							<div class="profile_details">		
								<ul>
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="images/p1.png" alt=""> </span> 
												<div class="user-name">
													<p>Admin1</p>
													<span>Administrador</span>
												</div>
												<i class="fa fa-angle-down lnr"></i>
												<i class="fa fa-angle-up lnr"></i>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu"> 
											<li> <a href="#"><i class="fa fa-sign-out"></i>Cerrar Sesi&oacute;n</a> </li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="clearfix"> </div>				
						</div>
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
        
        
        
<!--ACA LLENAN USTEDES-->
<div class="inner-block">
    <div class="blank">
    	<div class="work-progres">
    	
    		<form id="form_regAgencia" >
    			<div class="panel panel-default" style=" font-family: 'Ruda', sans-serif;">
    				<div class="panel-heading" style="border-bottom:solid #CCC 1px; padding-top:25px; padding-left:25px">
                    	<h3 class="panel-title"><strong style="font-size:30px">Agregar Nueva Agencia </strong> Formulario</h3>   
                    </div>
                    <div class="panel-body">
                    	<div class="col-md-6">
                    		<fieldset>
                                        <legend> Datos de la Agencia</legend>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Nombre de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="nombreAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el Nombre de la agencia</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">RUC Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="rucAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese RUC de la agencia</span>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Raz. Social de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="razonsocialAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese Raz. Social de la agencia</span>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Email de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="emailAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el email de la agencia</span>
                                                </div>
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Ubigeo de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="ubigeoAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el Ubigeo de la agencia</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Direccion de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="direccionAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el Direccion de la agencia</span>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Telefono de Agencia</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="telefonoAgencia" />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el telefono de la agencia</span>
                                                </div>
                                            </div>





       
                                       
                        	</fieldset>
                        	
                    	</div>
                    	
                    	<div class="col-md-6">
                    		<fieldset>
	                    		<legend> Descripci&oacute;n General </legend>

	                    		<div class="form-group">
                                                <label class="col-md-3 control-label">Valoracion de la Agencia</label>
                                                <div class="col-md-9">                                                                                            
                                                    <select class="form-control select"  name="valoracionAgencia">
                                                        <option value="0">000</option>
                                                        <option value="1">111</option>
                                                        <option value="2">222</option>
                                                        <option value="3">333</option>
                                                        <option value="4">444</option>
                                                        <option value="5">555</option>
                                                    </select>
                                                    <span class="help-block">Seleccione valoracion de Agencia</span>
                                                </div>
                                            </div>




	                    		<div class="form-group">
	                            	<label class="col-md-3 control-label">Descripci&oacute;n de la Agencia</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<textarea class="form-control" rows="6" name="descripcionAgencia"></textarea>
	                                    <span class="help-block">Ingrese la descripción detallada de la agencia</span>
	                              	</div>
	                          	</div>



								<div class="form-group">
                                    <label class="col-md-3 control-label">Fecha de Agencia</label>
                                    <div class="col-md-9">                                            
                                        <div class="input-group">
                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                        <input size="16" type="text" class="form-control" id="fecha_ida" name="fechaAgencia" readonly>
                                         </div>                                            
                                            <span class="help-block">Ingrese fecha de la agencia</span>
                                    </div>
                                </div>

                                <div class="form-group">
                                                <label class="col-md-3 control-label">ADMIN de la Agencia</label>
                                                <div class="col-md-9">                                                                                            
                                                    <select class="form-control select"  name="adminAgencia">
                                                        <option value="0">000</option>
                                                        <option value="1">111</option>
                                                        <option value="2">222</option>
                                                        <option value="3">333</option>
                                                        <option value="4">444</option>
                                                        <option value="5">555</option>
                                                    </select>
                                                    <span class="help-block">Seleccione admin de Agencia</span>
                                                </div>
                                            </div>

                                <div class="form-group">
                                    <label class="col-md-3 control-label">Contraseña de Agencia</label>
                                    <div class="col-md-9">                                            
                                        <div class="input-group">
                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                        <input type="text" class="form-control" name="passAgencia" />
                                         </div>                                            
                                            <span class="help-block">Ingrese password de la agencia</span>
                                    </div>
                                </div>

                                

								<div class="form-group">
                                    <label class="col-md-3 control-label">EstadoAgencia</label>
                                    <div class="col-md-9">                                            
                                        <div class="input-group">
	                                        <label class="radio-inline"><input type="radio" name="estadoAgencia" value="0">0</label>
											<label class="radio-inline"><input type="radio" name="estadoAgencia" value="1">1</label>
                                         </div>                                            
                                            <span class="help-block">Ingrese estado de la agencia</span>
                                    </div>
                                </div>

	                          	






                    		</fieldset>
                          	
                    	</div>
                    	
                    </div>
    				<div class="panel-footer">
    				<button class="btn btn-default">Limpiar</button>
    				
    				<button type="button" class="btn btn-primary pull-right"  onclick="addAgencia()" >Registrar</button>
                   	 	</div>
    			</div>
    		</form>
    		
    		
    	</div>
    </div>
</div>
<!--inner block end here-->




<!--copy rights start here-->
<div class="copyrights">
	 <p>© 2017 AQPTravel Todos los derechos Reservados | Dise&ntilde;ado por  <a href="http://tecsofts.com/" target="_blank">TecSoft</a> </p>
</div>	
<!--COPY rights end here-->
</div>
</div>

<!--slider menu-->
    <div class="sidebar-menu">
		  	<div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span> 
			      <!--<img id="logo" src="" alt="Logo"/>--> 
			  </a> </div>		  
		    <div class="menu">
		      <ul id="menu" >
		        <li id="menu-home" ><a href="index.html"><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
		        <li><a href="#"><i class="fa fa-envelope"></i><span>Mensajes</span></a>
		         
		        </li>
		        <li id="menu-comunicacao" ><a href="#"><i class="fa fa-cogs"></i><span>Configuraciones</span><span class="fa fa-angle-right" style="float: right"></span></a>
                <ul>
		            <li><a href="admin">Usuarios</a></li>
		            <li><a href="agencias">Agencias Tur&iacute;sticas</a></li>	
                    <li><a href="paquetes">Paquetes Tur&iacute;sticas</a></li>
                    
					<!-- AGREGUEN ESTOOOOOOOOOOOOOOO -->                   
                    <li><a href="sitios_turisticos">Sitios Tur&iacute;sticos</a></li>	
                    
                    <li><a href="#">Restaurar Informaci&oacute;n</a></li>            
		          </ul>
		        </li>
		          <li><a href="#"><i class="fa fa-book nav_icon"></i><span>Reportes</span></a></li>
		       
		        
		      </ul>
		    </div>
	 </div>
	<div class="clearfix"> </div>
</div>
<!--slide bar menu end here-->
<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>
<!-- mother grid end here-->

	<script src="<c:url value="/resources/js/jquery.min.js" />"></script>
<script src="<c:url value="/resources/js/agencia.js" />"></script>
<script src="<c:url value="/resources/js/bootstrap-datetimepicker.min.js"/>"></script>

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
  
  <script type="text/javascript">
	
	$(function() {
	    $('input[type=text]').on('keypress', function(e) {
	        if (e.which == 32){
	        	if($(this).val().length==0)return false;
	        }	            
	    });
	});
	</script>
	
	
</body>
</html>                     
