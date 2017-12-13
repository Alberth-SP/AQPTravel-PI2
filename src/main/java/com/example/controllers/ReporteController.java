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
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Agencia;
import com.example.logic.Paquete;
import com.example.logic.Reporte;

@Controller
public class ReporteController {
	
	@Autowired
	Reporte report;
	
	
	//@RequestMapping(value="paquete/list_paquetes",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String reportes(ModelAndView model) throws IOException{
		return null;
 
	}
}
