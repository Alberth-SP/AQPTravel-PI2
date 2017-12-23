package com.example.controllers;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.example.dao.AdminDao;
import com.example.dao.AgenciaDao;
import com.example.dao.DestinyDao;
import com.example.logic.Admin;
import com.example.logic.Destiny;
import com.example.logic.Utilidades;
import com.example.logic.Agency;

/* CLASE para responder a Solicitudes  desde ADMIN */

@Controller
@SessionAttributes("iduser")
public class ServicesController {
	@Autowired
	AdminDao adminDao;
	
	@RequestMapping(value = "plogin", method = RequestMethod.POST)
	public String login(@RequestBody MultiValueMap<String, String> params, ModelMap modelp) throws Exception{
		
		String c=params.getFirst("correo");
		String passEnviada=Utilidades.Encriptar(params.getFirst("contrasena"));
		Admin admin=adminDao.findAdminByEmail(c);
		String passBaseDatos=Utilidades.Desencriptar(admin.getPassword());
		// Verificacion Admin
		if (passEnviada.equals(passBaseDatos))
		{
			modelp.put("iduser",adminDao.findAdminByEmail(c).getEmail());
			return "usuarios_admin";
		}
		modelp.put("nombre", "no ingreso "+ " "+ passBaseDatos);
		return "welcome";
	}
}
