package com.example.controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.AgencyDao;
import com.example.logic.Agency;


/* CLASE para responder a Solicitudes  desde ADMIN */

@Controller
public class AgencyController {
	
	@Autowired
	AgencyDao agencyDao;
	
	/* Request para obtener lista de Usuarios */

	@RequestMapping(value="agency/list_agency", produces="text/html;charset=UTF-8")
	@ResponseBody
	public String listContact(ModelAndView model) throws IOException{
		List<Agency> listContact = agencyDao.listAllAgency();
		//model.addObject("listAdmin", listContact);
		//model.setViewName("admin/admin_page"); 
		String response="";
		//int cont = 0;
		for(Agency agency : listContact){
			response += "<tr>" +
			"<td>"+agency.getIdAgency() +"</td>" +
			"<td>"+agency.getNameAgency()+"</td>" +
			"<td>"+agency.getRucAgency()+"</td>" +
			"<td>"+agency.getPhoneAgency()+"</td>" +
			"</tr><br>";			
		}
		
		return response; 
	}
	
	/* Request para cargar la pagina del Admin */
	@RequestMapping(value="agency", method=RequestMethod.GET)
	public ModelAndView index(ModelAndView model) throws IOException{
		
		model.setViewName("agency/usuarios_agency");	 		
		return model;
	}
	
	/* Request para agregar Usuario a la BD */
	@RequestMapping(value="agency/saveagency", method=RequestMethod.POST)
	@ResponseBody 
	public String saveAdmin(@RequestBody MultiValueMap<String,String> params) throws IOException{    
       System.out.println("controollerxxxxxxxxxx!!");
       Agency agency = new Agency();
		//System.out.println(55);
       
       agency.setNameAgency(params.getFirst("nombreAgencia"));
       agency.setEmailAgency(params.getFirst("correoAgencia"));
       agency.setRucAgency(params.getFirst("rucAgencia"));
       agency.setSocialReasonAgency(params.getFirst("razonsocialAgencia"));
       agency.setUbigeoAgency(params.getFirst("ubigeoAgencia"));
       agency.setAddressAgency(params.getFirst("direccionAgencia"));
       agency.setRateAgency(Integer.parseInt(params.getFirst("valoracionAgencia")));
       agency.setDescriptionAgency(params.getFirst("descripcionAgencia"));
       agency.setPhoneAgency(params.getFirst("telefonoAgencia"));
       agency.setDayModAgency(Integer.parseInt(params.getFirst("DiaModAgencia")));
       agency.setMonthModAgency(Integer.parseInt(params.getFirst("MesModAgencia")));
       agency.setYearModAgency(Integer.parseInt(params.getFirst("AnioModAgencia")));
       agency.setCodAdminAgency(params.getFirst("idAdmin"));
       agency.setPasswordAgency(params.getFirst("contrasenaAgencia"));
       agency.setStateAgency(params.getFirst("estadoAgencia").charAt(0));
       
		
		agencyDao.addAgency(agency);
		
		//System.out.println(admin.getApellidoAdmin());
		return "true";
	} 	

}