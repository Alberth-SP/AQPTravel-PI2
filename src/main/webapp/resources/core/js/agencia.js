function addAgencia(){	
	
	if($('#nombreAgencia').val().length == 0){
		alert("Ingrese nombre de agencia");
		return;
	}
	
	if($('#emailAgencia').val().length == 0){
		alert("debe ingresar un email");
		return;
	}
	
	if($('#telefonoAgencia').val()!= "" > 0 && isNaN($('#telefonoAgencia').val())){
		alert("debe ingresar un numero telefonico");
		return;
	}
	
var url = "agencia/saveAgencia";
	
	$.ajax({
		url: url,
		type: 'POST',
		data: $('#form_regAgencia').serialize(),      
		success: function(result){
			if(result){  

				alert('Se ha aregado nueva agencia');    
				window.location.replace("agencias");
			}
			else{
				alert('ocurrio algun ERROR, vuelva a intentarlo ');
			}   

		},
		error: function(){
			alert('Error!!');
		}
	});
	
}




function changeStateAgencia(id,state){  
	var url = "agencia/changeStateAgencia";
   
	$.ajax({
		url: url,
		type: 'POST',
		data: {"key": id, "state":state},      
		success: function(result){
			if(result){  
				alert('Se ha cambiado estado');
			}
			else{
				alert('ocurrio algun ERROR, vuelva a intentarlo ');

			}   
		},
		error: function(){
			alert('Ocurrio un error en el Procefso');
		}
	});
}

function changeCheckBoxAgencia(id, check){

	var state = "0";
	if(check.checked){
		   state="1";
    }
	changeStateAgencia(id, state);		
}