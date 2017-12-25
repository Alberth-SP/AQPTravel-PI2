package com.example.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import com.example.dao.DestinyDao;
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Agencia;
import com.example.logic.Agency;
import com.example.logic.Destiny;
import com.example.logic.FotosPaquete;
import com.example.logic.Paquete;

@Controller
public class PaquetController {
	
	@Autowired
	PaqueteDao paquetDao;
	
	@Autowired
	DestinyDao destinyDao;
	
	
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
			
			response += "<td> <a class='btn btn-warning' data-toggle='modal' href='../admin/paquetes/"+paquet.getIdPaquete()+"/updatePaquete' data-target='#myModal' aria-label='Delete'>"
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

		paquete.setAnioModPaquete(Integer.parseInt(request.getParameter("anio")));
		paquete.setMesModPaquete(Integer.parseInt(request.getParameter("mes")));
		paquete.setDiaModPaquete(Integer.parseInt(request.getParameter("dia")));
		
		System.out.println("size: "+paquete.getDescripcionPaquete().length()+" - "
				+ paquete.getItinerario().length() +" - "+ paquete.getServicios().length() +" - " +paquete.getRecomendaciones().length());
		int idReg = paquetDao.addPaquete(paquete);	
		
		if(idReg > 0){
			if(image1 != null){
				String namePhoto = image1.getOriginalFilename();
				if(namePhoto.length() > 32) namePhoto = namePhoto.substring(0, 32);
				paquetDao.addFotoPaquete(new FotosPaquete(idReg, namePhoto, image1.getBytes()));
			}
			if(image2 != null){
				String namePhoto = image2.getOriginalFilename();
				if(namePhoto.length() > 32) namePhoto = namePhoto.substring(0, 32);
				paquetDao.addFotoPaquete(new FotosPaquete(idReg,namePhoto, image2.getBytes()));
			}
			if(paquete.getDestinoPaquete().length() > 0){
				
				
				List<Integer> destinations = obtainList(paquete.getDestinoPaquete());
				paquetDao.insertDestinations(idReg, destinations);
				paquetDao.insertOneDestiny(idReg, destinations.get(0));
			}
			
		
		}		
		return "true";
	} 	
	
	@RequestMapping(value="admin/paquete/updatePaquete", method=RequestMethod.POST)
	@ResponseBody 
	public String updatePaquete(MultipartHttpServletRequest request) throws IOException{    
	
		HashMap<String, String> data = new HashMap<>();
		 
		System.out.println("id>>"+request.getParameter("idPaquete"));
		

		data.put("nombrePaquete", request.getParameter("nombrePaquete"));
		data.put("tipoPaquete", request.getParameter("tipoPaquete"));		
		data.put("duracionPaquete", request.getParameter("duracion"));
		data.put("capacidadPaquete", request.getParameter("capacidadPaquete"));
		data.put("precioPaquete", request.getParameter("precioPaquete"));
		data.put("precioOferta", request.getParameter("precioOferta"));		
		data.put("ofertaPaquete", request.getParameter("ofertaPaquete"));
		data.put("tiempoOferta", request.getParameter("duracionOf"));
		data.put("stockPaquete", request.getParameter("numPaquete"));
		
		data.put("descripcionPaquete", request.getParameter("descripcionPaquete"));
		data.put("itinerarioPaquete", request.getParameter("itinerario"));
		data.put("recomendacionesPaquete", request.getParameter("recomendaciones"));
		data.put("serviciosPaquete", request.getParameter("servicios"));
		data.put("destinosPaquete", request.getParameter("destinosPaquete"));	
		
		
			
		MultipartFile image1 = request.getFile("image1");
		MultipartFile image2 = request.getFile("image2");	
		
		Paquete paquete = new Paquete(data);
		paquete.setIdPaquete(Integer.parseInt(request.getParameter("idPaquete")));
		
		
		System.out.println("actualizando aqui: "+paquete.getCapacidadPaquete());
		int idReg = paquetDao.updatePaquete(paquete);
		
		List<FotosPaquete> fotos = paquetDao.getImagePaquete(idReg);
		
		System.out.println("-->>"+idReg);

		//dos fotos registradas previamente para modificandr
		if(idReg > 0 && fotos.size()==2){
			if((image1 != null) && (fotos.get(0) != null)){ 
				
				fotos.get(0).setNombreFoto(image1.getOriginalFilename());
				fotos.get(0).setImagenFoto(image1.getBytes());
				paquetDao.updFotoPaquete(fotos.get(0));
				
			}
			if((image2 != null) && (fotos.get(1) != null)){ 
				fotos.get(1).setNombreFoto(image2.getOriginalFilename());
				fotos.get(1).setImagenFoto(image2.getBytes());
				paquetDao.updFotoPaquete(fotos.get(1));
			};

		}	
		
		//modificacuando no hay ningun registro de foto previo(registrando)
		if(idReg > 0 && fotos.size()==0){
			
			if(image1 != null) paquetDao.addFotoPaquete(new FotosPaquete(idReg, image1.getOriginalFilename(), image1.getBytes()));
			if(image2 != null) paquetDao.addFotoPaquete(new FotosPaquete(idReg, image2.getOriginalFilename(), image2.getBytes()));
			if(paquete.getDestinoPaquete().length() > 0){
				
				
				List<Integer> destinations = obtainList(paquete.getDestinoPaquete());
				paquetDao.insertDestinations(idReg, destinations);
			}
		}
		
		/// 1 registro de foto previo
		//[1]no modfica nada, [2]modifica 1, [3]modifica 2 fotos
		if(idReg > 0 && fotos.size()==1){
			System.out.println("aquiii");
			if((image1)==null && (image2)==null){/*nada*/}
			
			if((image1)==null || (image2)==null){
				
				if((image1 != null) && (fotos.get(0) != null)){ 
					
					fotos.get(0).setNombreFoto(image1.getOriginalFilename());
					fotos.get(0).setImagenFoto(image1.getBytes());
					paquetDao.updFotoPaquete(fotos.get(0));
					
				}
				if((image2 != null) && (fotos.get(0) != null)){ 
					fotos.get(0).setNombreFoto(image2.getOriginalFilename());
					fotos.get(0).setImagenFoto(image2.getBytes());
					paquetDao.updFotoPaquete(fotos.get(0));
				};
				
				
			}
			
			//[3]modifica 2 fotos ==> 1 añade, 1 actualiza
			if((image1)!= null && (image2) != null){
				
				//modifica
				if((image1 != null) && (fotos.get(0) != null)){ 
					
					fotos.get(0).setNombreFoto(image1.getOriginalFilename());
					fotos.get(0).setImagenFoto(image1.getBytes());
					paquetDao.updFotoPaquete(fotos.get(0));
					
				}
				//añade
				if(image2 != null){ 
					if(image2 != null) paquetDao.addFotoPaquete(new FotosPaquete(idReg, image2.getOriginalFilename(), image2.getBytes()));
					if(paquete.getDestinoPaquete().length() > 0){
						
						
						List<Integer> destinations = obtainList(paquete.getDestinoPaquete());
						paquetDao.insertDestinations(idReg, destinations);
					}
					
				}
				
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
	
	@RequestMapping(value = "/admin/paquetes/{id}/updatePaquete", method = RequestMethod.GET)
	public String updateAgencia(@PathVariable("id") int id, Model model) {

		//logger.debug("showUpdateUserForm() : {}", id);

		//User user = userService.findById(id);
		Paquete tmpPaquete = new Paquete();
		
		tmpPaquete=paquetDao.findPaqueteById(id);
		
		System.out.println("->> "+tmpPaquete.getNombrePaquete());
		System.out.println("->> "+tmpPaquete.getPrecioPaquete());
		model.addAttribute("paqueteForm", tmpPaquete);
		
		//populateDefaultModel(model);
		populateDefaultModel(model);
		
		return "updatePaquete";

	}
	
	@RequestMapping(value = "admin/paquetes/{id}/getDestinos", method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String getDestinos(@PathVariable("id") int id,ModelAndView model) throws IOException {
		
		List<Destiny> listDestiny = destinyDao.listAllDestiny();
		String response="";
		
		Paquete tmpPaquete=paquetDao.findPaqueteById(id);
		List<Integer> destinations = obtainList(tmpPaquete.getDestinoPaquete());
		
		int i=0,max=0;
		max=destinations.size();
		for(Destiny destiny : listDestiny){
			
			if(i<max && destinations.get(i)==destiny.getIdDestino()){
				response += "<option value='"+destiny.getIdDestino()+"' selected>"+destiny.getNombreDestino()+"</option>";
				i++;
			}else{
				response += "<option value='"+destiny.getIdDestino()+"'>"+destiny.getNombreDestino()+"</option>";
			}
			
			
		
		}					
		
		return response;		
	}
	
	
	@SuppressWarnings("null")
	private void populateDefaultModel(Model model) {
		
		
		List<Integer> numPersonas = new ArrayList<Integer>();
		
		numPersonas.add(1);
		numPersonas.add(2);
		numPersonas.add(3);
		numPersonas.add(4);
		numPersonas.add(5);
		numPersonas.add(6);
		numPersonas.add(7);
		numPersonas.add(8);
		numPersonas.add(9);

		model.addAttribute("numberPersonas", numPersonas);
		
		
		Map<String, String> tipPaquete = new LinkedHashMap<String, String>();

		tipPaquete.put("Aventura", "Aventura");
		tipPaquete.put("Naturaleza", "Naturaleza");
		tipPaquete.put("Historia y cultura", "Historia y cultura");
		tipPaquete.put("Naturaleza", "Naturaleza");
		tipPaquete.put("Descanso y relax", "Descanso y relax");
		tipPaquete.put("Entretenimiento", "Entretenimiento");
		tipPaquete.put("Turismo", "Turismo");

		model.addAttribute("tipPaquete", tipPaquete);
		
		
			//response += "<option value='"+destiny.getIdDestino()+"'>"+destiny.getNombreDestino()+"</option>";					
		
		
	}
	

}

