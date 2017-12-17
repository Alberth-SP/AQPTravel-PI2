function addAgencia(){	
	alert("inside");
var url = "agencia/saveAgencia";
	
	$.ajax({
		url: url,
		type: 'POST',
		data: $('#form_regAgencia').serialize(),      
		success: function(result){
			if(result){  

				alert('sucess add Admin Agencia!' + result);                        
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







function changeStateAgencia(id,state){  
	var url = "agencia/changeStateAgencia";
   alert("vals: "+id + " "+state);
	$.ajax({
		url: url,
		type: 'POST',
		data: {"key": id, "state":state},      
		success: function(result){
			if(result){  
				alert('sucess change State Agemncia!' + result);
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

function changeCheckBoxAgencia(id, check){

	var state = "0";
	if(check.checked){
		   state="1";
    }
	changeStateAgencia(id, state);		
}