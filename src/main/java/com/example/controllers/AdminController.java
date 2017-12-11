package com.example.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.AdminDao;
import com.example.logic.Admin;

/* CLASE para responder a Solicitudes  desde ADMIN */

@Controller
public class AdminController {

	@Autowired
	AdminDao adminDao;

	/* Request para obtener lista de usaurios */
	@RequestMapping(value="admin/list_admin",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String listContact(ModelAndView model) throws IOException{
		List<Admin> listContact = adminDao.listAllAdmin();

		String response="";
		int cont = 0;
		for(Admin admin : listContact){
			response += "<tr>" +
					"<td>"+ (++cont) +"</td>" +
					"<td>"+admin.getName()+"</td>" +
					"<td>"+admin.getLastname()+"</td>" +
					"<td>"+admin.getEmail()+"</td>";

			if(admin.getState() == '1'){
				response += " <td> "
						+ "<input type='checkbox' name='onoffswitch' class='checkAdmin ' id='' value='activo' onchange='changeCheckBox("+admin.getIdAdmin()+", this)' checked>"
						+ "</td></tr>";

			}else if(admin.getState() == '0'){
				response += " <td> "
						+ "<input type='checkbox' name='onoffswitch' class='checkAdmin ' id='' value='desactivo' onchange='changeCheckBox("+admin.getIdAdmin()+", this)' >"
						+ "</td></tr>";
			}			
		}
		return response; 
	}

	/* Request para cargar la pagina del Admin */
	@RequestMapping(value="admin", method=RequestMethod.GET)
	public ModelAndView index(ModelAndView model) throws IOException{
		ModelAndView model2 = new ModelAndView();
		model2.setViewName("usuarios_admin");
		
		return model2;
	}
	

	/* Request para agregar usuario a la BD */
	@RequestMapping(value="admin/saveAdmin", method=RequestMethod.POST)
	@ResponseBody 
	public String saveAdmin(@RequestBody MultiValueMap<String,String> params) throws IOException{    
	
		Admin admin = new Admin();

		admin.setName(params.getFirst("nombre"));
		admin.setLastname(params.getFirst("apellidoAdmin"));
		admin.setPhone(params.getFirst("celularAdmin"));
		admin.setEmail(params.getFirst("correoAdmin"));
		admin.setAddress(params.getFirst("direccionAdmin"));
		admin.setPassword(params.getFirst("contrasenaAdmin"));		
		
		adminDao.addAdmin(admin);
		return "true";
	} 	

	/* Request para envio de pagina de Paquete */
	@RequestMapping(value="admin/paquetes", method=RequestMethod.GET)
	public ModelAndView paquetes(ModelAndView model) throws IOException{

		ModelAndView model2 = new ModelAndView();
		model2.setViewName("paquete_admin");	 
		
		return model2;

	}
	
	/* Request para envio de Formulario de Paquete */	
	@RequestMapping(value="admin/agregar_paquetes", method=RequestMethod.GET)
	public ModelAndView formPaquetes(ModelAndView model) throws IOException{

		ModelAndView model2 = new ModelAndView();
		model2.setViewName("agregar_paquete_admin");	 
		
		return model2;

	}

	
	/*  Request cambiar stado de usuario */
	
	@RequestMapping(value="admin/changeStateAdmin", method=RequestMethod.POST)
	@ResponseBody
	public String changeStateAdmin(HttpServletRequest request) throws IOException{
		
		String []a1 = request.getParameterValues("key");	
		String []a2 = request.getParameterValues("state");
	
		adminDao.changeStateAdmin(Integer.parseInt(a1[0]), a2[0].charAt(0));		
		return "true";		
		
	}

		/*
	 * @RequestMapping(value="admin/list_admin", produces="text/html;charset=UTF-8")
	@ResponseBody
	public String listContact(ModelAndView model) throws IOException{
		List<Admin> listContact = adminDao.listAllAdmin();
		//model.addObject("listAdmin", listContact);
		//model.setViewName("admin/admin_page"); 
		String response="";
		int cont = 0;
		for(Admin admin : listContact){
			response += "<tr>" +
			"<td>"+ (++cont) +"</td>" +
			"<td>"+admin.getNombre()+"</td>" +
			"<td>"+admin.getApellidoAdmin()+"</td>" +
			"<td>"+admin.getCorreoAdmin()+"</td>" +
			" <td> <div class='onoffswitch'>"
			+ "<input type='checkbox' name='onoffswitch' class='onoffswitch-checkbox' id='myonoffswitch' checked>"
					+ "  <label class='onoffswitch-label' for='myonoffswitch'>"
							+ "        <span class='onoffswitch-inner'></span>"
									+ "	        <span class='onoffswitch-switch'></span>"
											+ "	    </label>"
											+ "	</div> </td>"+
			"</tr>";			
		}


		return response; 
	}*/
	
	


}
