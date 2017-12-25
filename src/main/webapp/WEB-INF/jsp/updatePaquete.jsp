
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<!DOCTYPE html>
<html lang="en">

<div class="modal-content">


	<br />
<spring:url value="/admin/paquete/updatePaquete" var="userActionUrl" />



	
	<form:form class="form-horizontal" method="post" modelAttribute="paqueteForm" id="form_regPaquete"  action="${userActionUrl}">
	
	

	
	

	    		<form id="form_regPaquete" >
    			<div class="panel panel-default" style=" font-family: 'Ruda', sans-serif;">
    				<div class="panel-heading" style="border-bottom:solid #CCC 1px; padding-top:25px; padding-left:25px">
                    	<h3 class="panel-title"><strong style="font-size:30px">Agregar Nuevo Producto </strong> Formulario</h3>   
                    </div>
                    <div class="panel-body">
                    	<div class="col-md-6">
                    		<fieldset>
                                        <legend> Datos del Producto </legend>
                                            <form:hidden path="idPaquete" name="idPaquete"/>
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Nombre del Paquete</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <form:input path="nombrePaquete" type="text" class="form-control" name="nombrePaquete" />
                                                        
                                                    </div>                                            
                                                    <span class="help-block">Ingrese el Nombre del Paquete a Agregar</span>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
													<label class="col-md-3 control-label">Tipo de
														Paquete</label>
													<div class="col-md-9">
													
													
														<form:select path="tipoPaquete" class="form-control" name="tipoPaquete">
														
														<form:options items="${tipPaquete}" />
														</form:select>
														
												
														 <span class="help-block">Seleccione el tipo de
															paquete</span>
													</div>
												</div>
												
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Duraci&oacute;n del Paquete</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                        <input type="text" class="form-control" name="duracionPaquete" id="duracionPaquete" readonly />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese la duraci&oacute;n del Paquete a Agregar</span>
                                                </div>
                                            </div>
                                            
                                            <!--Aqui se llena la lista con la base de datos-->
                                          
                                          <div class="form-group">
													<label for="num_personas" class="col-md-3 control-label">Nro.
														Personas: </label>
													<div class="col-md-9">
													
														<form:select path="capacidadPaquete" class="form-control" name="capacidadPaquete">
														
														<form:options items="${numberPersonas}" />
														</form:select>
														
												
														
														<span class="help-block">Ingrese el numero
															m&oacute;aximo de Personas</span>
													</div>
												</div>
												
												
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Imagen 1</label>
                                                <div class="col-md-9">                                                                                                                                        
                                                    <input type="file" class="fileinput btn" name="imagen1" id="imagen1" title="Browse file" style="font-size:13px"/>
                                                    <span class="help-block">Cargue la Imagen 1 a mostrar del Paquete</span>
                                                </div>
                                            </div>
                                            
                                              <div class="form-group">
                                                <label class="col-md-3 control-label">Imagen 2</label>
                                                <div class="col-md-9">                                                                                                                                        
                                                    <input type="file" class="fileinput btn" name="imagen2" id="imagen2" title="Browse file" style="font-size:13px"/>
                                                    <span class="help-block">Cargue la Imagen 2 a mostrar del Paquete</span>
                                                </div>
                                            </div>
                                            
                                            
                                            
                                            <!--Aqui se llena la lista de los destinos turiticos para seleccionar varios(getselects metodo para obtener la lista de seleccionados http://wenzhixin.net.cn/p/multiple-select/docs/#constructor)-->
                                            
                                          <div class="form-group">
													<label class="col-md-3 control-label">Destino de
														Paquete</label>
													<div class="col-md-9" style="font-size: 12px">
													
	
														<select id="multiselectDestino" name="multiselectDestinos" class="form-control" multiple="multiple"
															title="Choose one of the following...">
														
															
														</select> <span class="help-block">Seleccione llos destinosturisticos del paquete</span>
													
													</div>
												</div>
                                         
                        	</fieldset>
                        	
                        	<fieldset>
                                <legend>Precio y Stock </legend>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Precio Paquete: S/.</label>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa  fa-usd"></span></span>
                                                        
                                                        <form:input path="precioPaquete" type="text" class="form-control" name="precioPaquete" maxlength="5" pattern="+[1-9]*[0-9]{3}\\+.*[0.9]{2}"/>                                            
                                                    </div>
                                                    <span class="help-block">Ingrese precio sin Descuentos</span>
                                                </div>
                                            </div>
                                            
                                            
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Precio Descuento: S/.</label>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa  fa-usd"></span></span>
                                                        <form:input path="precioOferta" type="text" name="precioOferta" class="form-control"  maxlength="5" pattern="+[1-9]*[0-9]{3}\\+.*[0.9]{2}"/>                                            
                                                    </div>
                                                    <span class="help-block">Ingrese precio para Decuentos</span>
                                                </div>
                                            </div>
                                            
                                             <div class="form-group">                                        
                                                <label class="col-md-3 control-label">Stock</label>
                                                <div class="col-md-9">
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-refresh"></span></span>
                                                        <form:input path="numPaquete" type="text" class="form-control" name="stockPaquete" maxlength="5" pattern="[0-9]"/>                                            
                                                    </div>
                                                    <span class="help-block">Ingrese Stock actual del Paquete</span>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                            	<label class="col-md-3 control-label">Oferta</label>
                                                <div class="col-md-9">     
                                                	<div class="btn-group" data-toggle="buttons">			
														<label class="btn btn-success active" id="labelOferta">
															<input type="checkbox" value="1" autocomplete="off" id="ofertaPaquete" checked>
															
															<span class="fa fa-check" id="checkPaquete"></span>
															
															
														</label>
														<span class="input-group-addon" style="font-size:16px;height:34px;"> &nbsp;&nbsp;Seleccione si est&aacute; en Oferta</span>
													</div>
                                                    <span class="help-block">secci&oacute;n oferta</span>
                                                </div>
                                            </div>
                                            
                                           
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Duraci&oacute;n de Oferta</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                        <input type="text" class="form-control" name="duracionOfertaPaquete" id="duracionOfertaPaquete" readonly />
                                                    </div>                                            
                                                    <span class="help-block">Ingrese la duraci&oacute;n de la Oferta del Paquete</span>
                                                </div>
                                            </div>
                                       
                        	</fieldset>
                        	
                    	</div>
                    	
                    	<div class="col-md-6">
                    		<fieldset>
	                    		<legend> Descripci&oacute;n General </legend>
	                    		<div class="form-group">
	                            	<label class="col-md-3 control-label">DescripciÃ³n del Paquete</label>
	                              	<div class="col-md-9 col-xs-12">       
	                                                               
	                                	<form:textarea path="descripcionPaquete" class="form-control" rows="6" name="descripcionPaquete"/>
	                                    <span class="help-block">Ingrese la descripciÃ³n detallada del Paquete</span>
	                              	</div>
	                          	</div>
	                          	
	                          	<div class="form-group">
	                            	<label class="col-md-3 control-label">Itinerario del Paquete</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<form:textarea path="itinerario" class="form-control" rows="10" name="itinerarioPaquete"/>
	                                    <span class="help-block">Ingrese el itinerario del Paquete</span>
	                              	</div>
	                          	</div>
	                          	
	                          	<div class="form-group">
	                            	<label class="col-md-3 control-label">Recomendaciones del Paquete</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<form:textarea path="recomendaciones" class="form-control" rows="6" name="recomendacionesPaquete"/>
	                                    <span class="help-block">Ingrese las recomendaciones del Paquete</span>
	                              	</div>
	                          	</div>
	                          	
	                          	<div class="form-group">
	                            	<label class="col-md-3 control-label" >Servicios incluidos en el Paquete</label>
	                              	<div class="col-md-9 col-xs-12">                                            
	                                	<form:textarea path="servicios" class="form-control" rows="6" name="serviciosPaquete"/>
	                                    <span class="help-block">Ingrese los servicios incluidos en el Paquete</span>
	                              	</div>
	                          	</div>
                    		</fieldset>
                          	
                    	</div>
                    	
                    </div>
    				<div class="panel-footer">
    				<button class="btn btn-default">Limpiar</button>
    				
    				<button type="button" class="btn btn-primary pull-right"  onclick="updtPaquete()" >Registrar</button>
                   	 	</div>
    			</div>
    		</form>




	
	</form:form>

</div>
<script>

            
$("#duracionPaquete").datetimepicker({
	format : 'yyyy-mm-dd',
	minView : 2,
	autoclose : 1
});

$("#duracionOfertaPaquete").datetimepicker({
	format : 'yyyy-mm-dd',
	minView : 2,
	autoclose : 1
});
checkPaquete
$("#labelOferta").click(function() {
	if($("#ofertaPaquete").attr('checked')) {		
		$('#ofertaPaquete').attr('checked', false);
		//$('#checkPaquete').hide();
		$('#ofertaPaquete').val('0');
	}	
	else {		
		$('#ofertaPaquete').attr('checked', true);
		$('#ofertaPaquete').val('1');
		//$('#checkPaquete').show();
	}
	
});

</script>
<script>



$(document).ready(function() {
	
    $('#multiselectDestino').multiselect({
    	includeSelectAllOption: true,
    	nonSelectedText: 'selecciona los destinos',
    	enableFiltering: true,
    	enableCaseInsensitiveFiltering:true,
    	
    }); 
    
  

    var id=document.getElementById("idPaquete").value;
    
    $.post("paquetes/"+id+"/getDestinos",function(data){    
    	
  
    	$("#multiselectDestino").html(data);
    	$('#multiselectDestino').multiselect('rebuild');
	});
    
      
    
});

</script>

	
		
</body>
</html>