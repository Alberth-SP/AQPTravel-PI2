package com.example.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.AdminDao;
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Agencia;
import com.example.logic.FotosPaquete;
import com.example.logic.Paquete;

@Controller
public class PaquetController {
	
	@Autowired
	PaqueteDao paquetDao;
	
	
	@RequestMapping(value="paquete/list_paquetes",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String listContact(ModelAndView model) throws IOException{
		
		List<Paquete> listContact = paquetDao.listAllPaquetes();
		
		Agencia agencia = new Agencia();
		
		String response="";
		int cont = 0;
		for(Paquete paquet : listContact){
			
			response += "<tr>" +
					"<td>" + (++cont) + "</td>" +
					"<td>" + paquet.getNombrePaquete() + "</td>" +
					"<td>" + agencia.getNombreAgencia() + "</td>" +
					"<td>" + paquet.getDestinoPaquete() + "</td>";
			
			if(paquet.getEstadoPaquete() == '1'){
				
				response += " <td> "
						+ "<input type='checkbox' name='' class=' ' id='' value='activo' onchange='changeCheckBox2("+paquet.getIdPaquete()+", this)' checked>"
						+ "</td>";

			}else{
				response += " <td> "
						+ "<input type='checkbox' name='' class=' ' id='' value='desactivo' onchange='changeCheckBox2("+paquet.getIdPaquete()+", this)' >"
						+ "</td>";
			}			
			
			response += "<td> <a class='btn btn-warning' href='editar_paquete_admin.html' aria-label='Delete'>"
					+ "	<i class='fa fa-pencil' aria-hidden='true'></i>&nbsp;Editar	</a> </td></tr>";
		}
		
		return response; 
	}
	
	
	@RequestMapping(value="admin/paquete/savePaquete", method=RequestMethod.POST)
	@ResponseBody 
	public String savePaquete(MultipartHttpServletRequest request) throws IOException{    
	
		HashMap<String, String> data = new HashMap<>();
		 
		data.put("nombrePaquete", request.getParameter("nombrePaquete"));
		data.put("tipoPaquete", request.getParameter("tipoPaquete"));		
		data.put("duracionPaquete", request.getParameter("duracion"));
		data.put("capacidadPaquete", request.getParameter("capacidadPaquete"));
		data.put("precioPaquete", request.getParameter("precioPaquete"));
		data.put("precioOferta", request.getParameter("precioOferta"));		
		data.put("ofertaPaquete", request.getParameter("ofertaPaquete"));
		data.put("tiempoOferta", request.getParameter("duracionOf"));
		data.put("stockPaquete", request.getParameter("stockPaquete"));
		
		data.put("descripcionPaquete", request.getParameter("descripcionPaquete"));
		data.put("itinerarioPaquete", request.getParameter("itinerarioPaquete"));
		data.put("recomendacionesPaquete", request.getParameter("recomendacionesPaquete"));
		data.put("serviciosPaquete", request.getParameter("serviciosPaquete"));
		data.put("destinosPaquete", request.getParameter("destinosPaquete"));	
		
		
			
		MultipartFile image1 = request.getFile("image1");
		MultipartFile image2 = request.getFile("image2");	
		
		Paquete paquete = new Paquete(data);
		System.out.println("capa: "+paquete.getCapacidadPaquete());
		int idReg = paquetDao.addPaquete(paquete);	
		
		if(idReg > 0){
			if(image1 != null) paquetDao.addFotoPaquete(new FotosPaquete(idReg, image1.getOriginalFilename(), image1.getBytes()));
			if(image2 != null) paquetDao.addFotoPaquete(new FotosPaquete(idReg, image2.getOriginalFilename(), image2.getBytes()));
			if(paquete.getDestinoPaquete().length() > 0){
				
				
				List<Integer> destinations = obtainList(paquete.getDestinoPaquete());
				paquetDao.insertDestinations(idReg, destinations);
			}
			
		
		}		
		return "true";
	} 	
	
	private List<Integer> obtainList(String streamList){
		List<Integer> list = new ArrayList<>();
		
		int index = 0;
		int pos = 0;
		while(index < streamList.length()){
			if(streamList.charAt(index) == ','){
					list.add(Integer.parseInt(streamList.substring(pos,index)));
					pos = index+1;
			}
			if(index == (streamList.length()-1)){
				list.add(Integer.parseInt(streamList.substring(pos)));				
			}
			 index++;
		}				
		return list;		
	}
		
	
	@RequestMapping(value="admin/paquete/changeStatePaquete", method=RequestMethod.POST)
	@ResponseBody
	public String changeStateAdmin(HttpServletRequest request) throws IOException{
		
		String []a1 = request.getParameterValues("key");	
		String []a2 = request.getParameterValues("state");
	
		paquetDao.changeStatePaquete(Integer.parseInt(a1[0]), a2[0].charAt(0));		
		return "true";		
		
	}
	
	

	@RequestMapping(value = "admin/imageController/{imageId}")
	@ResponseBody
	public byte[] getImage(@PathVariable int imageId)  {
		List<FotosPaquete> fotos = paquetDao.getImagePaquete(imageId); 		
		return fotos.get(0).getImagenFoto();
	}
	

}

