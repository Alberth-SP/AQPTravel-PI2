function pagination(pag){
	searchPaquets(pag);
}


function pagefilterPage(){
	window.location.replace("pageFiltroPaquete");
}

$("#checkfilter").change(function(){	
	if(this.checked){
		$("#checkfilter").val('1');
	} else{
		$("#checkfilter").val('0');;
	}
});

function searchPaquets(pag){
	
	var url = 'searchFilterPaquet';
	var datas = new FormData();
	var other_data = $('#form_filter').serializeArray();	
	
	$.each(other_data,function(key,input){
		datas.append(input.name,input.value);
	});
	
	var oferta = $("#checkfilter").val();
	
	datas.append("oferta",oferta);
	datas.append("pagina",pag);
	
	
	$.ajax({
		url: url,
		type: 'POST',
		enctype: 'multipart/form-data',
		processData: false,
		contentType: false,
		data:datas,      
		success: function(result){
			if(result){      
				if(("true".localeCompare(result[0])) == 0){
					$('#pagination').html(result[2]);
					$('#listPaquete').html(result[1]); 
					alert("success");
				}else{
					$('#pagination').html("");
					$('#listPaquete').html("No se Encontraron resultados");
					alert("No se encontraron registros");
				}				
				
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
