function addDestino(){	
	
var url = "destinos/saveDestino";
	
	$.ajax({
		url: url,
		type: 'POST',
		data: $('#form_regDestino').serialize(),      
		success: function(result){
			if(result){  

				alert('Se ha agregado nuevo destino');    
				window.location.replace("destinos");
			}
			else{
				alert('ocurrio algun ERROR, vuelva a intentarlo ');
			}   

		},
		error: function(){
			alert('Ocurrio un erro en el Proceso');
		}
	});
	
}
function changeStateDestino(id,state){  
	var url = "destinos/changeStateDestino";
   
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
			alert('Ocurrio un error en el Proceso');
		}
	});
}

function changeCheckBoxDestino(id, check){

	var state = "0";
	if(check.checked){
		   state="1";
    }
	changeStateDestino(id, state);		
}