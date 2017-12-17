package com.example.controllers;

import java.io.IOException;
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
				System.out.println("controller paquete! "+paquet.getEstadoPaquete());
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
	
		Paquete paquete = new Paquete();
		paquete.setNombrePaquete(request.getParameter("nombrePaquete"));	
		paquete.setDescripcionPaquete(request.getParameter("descripcionPaquete"));		
		System.out.println(request.getParameter("tipoPaquete"));
		System.out.println(request.getParameter("duracionPaquete"));
		System.out.println(request.getParameter("capacidadPaquete"));		
		System.out.println(request.getParameter("precioPaquete"));
		System.out.println(request.getParameter("precioOferta"));
		System.out.println(request.getParameter("stockPaquete"));
		
		System.out.println(request.getParameter("descripcionPaquete"));
		System.out.println(request.getParameter("itinerarioPaquete"));
		System.out.println(request.getParameter("recomendacionesPaquete"));
		System.out.println(request.getParameter("serviciosPaquete"));
		
		System.out.println(request.getParameter("destinosPaquete"));
		
		MultipartFile image1 = request.getFile("image1");
		MultipartFile image2 = request.getFile("image2");		
		
		paquetDao.addPaquete(paquete);	
		System.out.println("sdfdfdfddfdfdfdf");
		
		return "true";
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
		Paquete paquete = paquetDao.findPaqueteById(imageId); 		
		return paquete.getMapaPaquete();
	}
	

}

/* 
 * <tr>
                                			<td>Arequipa Fullday</td>
                                			<td>Agencia Arequipa Travel</td>
                                			<td>
                                				<div class='onoffswitch'>
												    <input type='checkbox' name='onoffswitch' class='onoffswitch-checkbox' id='myonoffswitch' checked>
												    <label class='onoffswitch-label' for='myonoffswitch'>
												        <span class='onoffswitch-inner'></span>
												        <span class='onoffswitch-switch'></span>
												    </label>
												</div>
                                			</td>
                                			<td>
                                				
                                			</td>
                                		</tr>
                                		*/
