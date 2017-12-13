package com.example.controllers;

import java.io.IOException;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;




/* CLASE para responder a Solicitudes  desde HOME */
@Controller
public class HomeController {

		
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

}

