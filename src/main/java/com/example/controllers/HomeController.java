package com.example.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.AdminDao;
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Paquete;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.util.JSONPObject;


/* CLASE para responder a Solicitudes  desde HOME */
@Controller
public class HomeController {
	
	@Autowired
	PaqueteDao paquetDao;

		
	/* Request para pagina principal */
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView index(ModelAndView model) throws IOException{
		
		model.setViewName("index");	 		
		return model;
	}
	
	/* Request para formulario de registro de usurio */
	@RequestMapping(value="registrar", method=RequestMethod.GET)
	public ModelAndView register(ModelAndView model) throws IOException{
		model.setViewName("registrar");
		return model;
	}
	
    /* request para devolver pagina de filtro de paquete */
	@RequestMapping(value="pageFiltroPaquete", method=RequestMethod.GET)
	public ModelAndView getPageFilterPaquet(ModelAndView model) throws IOException{
		model.setViewName("mispaquetes");
		return model;
	}
	
	
	@RequestMapping(value="searchFilterPaquet", method=RequestMethod.POST)
	@ResponseBody 
	public String searchFilterPaquet(MultipartHttpServletRequest request) throws IOException{   
	
		System.out.println(request.getParameter("oferta"));
		System.out.println(request.getParameter("destino"));
		System.out.println(request.getParameter("fecha_regreso"));
		System.out.println(request.getParameter("fecha_salida"));
		System.out.println(request.getParameter("tipo_actividad"));	
		System.out.println(request.getParameter("num_personas"));
		
		Paquete paquet = new Paquete();
		paquet.setDestinoPaquete(request.getParameter("destino"));
		paquet.setCapacidadPaquete(Integer.parseInt(request.getParameter("num_personas")));
		paquet.setOfertaPaquete(request.getParameter("oferta").charAt(0));
		
		List<Paquete> listFilterPaquet = paquetDao.listFilterPaquetes(paquet);
		
		if(listFilterPaquet.size() > 0) {
			System.out.println("SIZE: "+listFilterPaquet.size());
			for(Paquete p: listFilterPaquet){
				System.out.print(p.getNombrePaquete());
			}
		}
		
		return "true";
	}
	
	

}
