function pagefilterPage(){
	alert("oka");
	window.location.replace("pageFiltroPaquete");
}

$("#checkfilter").change(function(){
	if(this.checked){
		this.val("1");
	} else{
		this.val("0");
	}
});


function searchPaquets(){
	
	var url = 'searchFilterPaquet';
	var datas = new FormData();
	var other_data = $('#form_filter').serializeArray();	
	$.each(other_data,function(key,input){
		datas.append(input.name,input.value);
	});
	var oferta = $("#checkfilter").val();
	datas.append("oferta",oferta);
	alert("gsfg34 "+oferta);
	$.ajax({
		url: url,
		type: 'POST',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data:datas,      
		success: function(result){
			if(result){  
				alert('sucess search paquet!' + result);                        
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

function clearFilters(){
	$("#fecha_salida").val("");
	$("#fecha_regreso").val("");
	$("#numPersonas").val("0");
	$("#destino").val("");
	$("#numPersonas").val("0");
	$("#tipo_actividad").val("Aventura");
	$("#checkfilter").val("0");
	$('#checkfilter').attr('checked', false);
}