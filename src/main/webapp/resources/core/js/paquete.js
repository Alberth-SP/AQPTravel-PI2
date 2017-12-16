
function addPaquete(){	
	alert("inside");
var url = "paquete/savePaquete";
var datas = new FormData();
var other_data = $('#form_regPaquete').serializeArray();

$.each(other_data,function(key,input){
	datas.append(input.name,input.value);
});
	$.ajax({
		url: url,		
		type: 'POST',
		data: datas,  
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data: datas,      
		success: function(result){
			if(result){  

				alert('sucess add Admin!' + result);                        
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


function changeStatePaquete(id,state){  
	var url = "paquete/changeStatePaquete";
   alert("vals: "+id + " "+state);
	$.ajax({
		url: url,
		type: 'POST',
		data: {"key": id, "state":state},      
		success: function(result){
			if(result){  
				alert('sucess change State paquete!' + result);
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

function changeCheckBox2(id, check){

	var state = "0";
	if(check.checked){
		   state="1";
    }
	changeStatePaquete(id, state);		
}

