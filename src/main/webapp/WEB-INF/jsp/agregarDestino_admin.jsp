<%@ page session="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<div class="modal-content">
	<br />
<spring:url value="/admin/destinos/agregarDestino_admin" var="userActionUrl" />
	<form:form class="form-horizontal" method="post" modelAttribute="destinoForm" id="form_regDestino"  action="${userActionUrl}">
	<form:hidden path="idDestiny" name="idDestiny"/>
    		
    			<div class="panel panel-default" style=" font-family: 'Ruda', sans-serif;">
    				<div class="panel-heading" style="border-bottom:solid #CCC 1px; padding-top:25px; padding-left:25px">
                    	<h3 class="panel-title"><strong style="font-size:30px">Agregar Nuevo Destino </strong> Formulario</h3>   
                    </div>
                    <div class="panel-body">
                    	<div class="col-md-6">
                    		<fieldset>
                                        <legend> Datos del Sitio</legend>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 control-label">Nombre de Destino</label>
                                                <div class="col-md-9">                                            
                                                    <div class="input-group">
                                                        <span class="input-group-addon"><span class="fa fa-pencil"></span></span>
                                                        <input type="text" class="form-control" name="nombreDestino" /> 
                                                  
                                                    </div>                                            
                                                       <span class="help-block">Ingrese el Nombre de la agencia</span>
                                                </div>
                                            </div><br>

                           
								<div class="form-group">
                                    <label class="col-md-3 control-label">EstadoDestino </label>
                                    <div class="col-md-9">                                            
                                        <div class="input-group">
	                                        <label class="radio-inline"><input type="radio" name="estadoDestino" value="0">0</label>
											<label class="radio-inline"><input type="radio" name="estadoDestino" value="1">1</label>
                                         </div>   
                                          <span class="help-block">Ingrese estado del destino </span>                                         
                                    </div>
                                </div>

	                          	
                    		</fieldset>
                          	
                    	</div>
                    	
                    </div>
    				<div class="panel-footer">
    				<button class="btn btn-default">Limpiar</button>
    				
    			    <button type="button" class="btn btn-primary pull-right"  onclick="addDestino()" >Registrar</button>
    				
                   	 	</div>
    			</div>
    	
	</form:form>
</div>
</body>
</html>