
function addPaquete(){	
	alert("inside");
var url = "paquete/savePaquete";

var destinos = $('#multiselectDestino').val();
var image1 = $("#imagen1")[0].files[0];
var image2 = $("#imagen2")[0].files[0];
var datas = new FormData();
var other_data = $('#form_regPaquete').serializeArray();

$.each(other_data,function(key,input){
	datas.append(input.name,input.value);
});

if(destinos !=null) datas.append("destinosPaquete",destinos);
if(image1 !=null) datas.append("image1",image1);
if(image2 !=null) datas.append("image2",image2);

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

