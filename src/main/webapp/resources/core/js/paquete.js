<<<<<<< HEAD
var d = new Date();
alert("FECHA: "+d.getDate()+" "+(d.getMonth()+1)+" "+d.getFullYear());

function addPaquete(){	
	
	var url = "paquete/savePaquete";
	//var image1 = $("#imagen1")[0].files[0];
	//var image2 = $("#imagen2")[0].files[0];
	
	//var destinos = $('#multiselectDestino').val();	

	var datas = new FormData();
	var form_data = $('#form_regPaquete').serializeArray();
	
	$.each(form_data,function(key,input){
		datas.append(input.name,input.value);
	});
	
	//datas.append("image1", image1);
	//datas.append("image2", image2);
	//datas.append("destinos", destinos);
	alert("dfsdf");
	$.ajax({
		url: url,
=======

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
>>>>>>> origin/branch-noe
		type: 'POST',
		data: datas,  
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
<<<<<<< HEAD
=======
		data: datas,      
>>>>>>> origin/branch-noe
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
<<<<<<< HEAD
=======
	
>>>>>>> origin/branch-noe
}


function changeStatePaquete(id,state){  
	var url = "paquete/changeStatePaquete";
<<<<<<< HEAD
	alert("vals: "+id + " "+state);

=======
   alert("vals: "+id + " "+state);
>>>>>>> origin/branch-noe
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
<<<<<<< HEAD
		state="1";
	}
=======
		   state="1";
    }
>>>>>>> origin/branch-noe
	changeStatePaquete(id, state);		
}

