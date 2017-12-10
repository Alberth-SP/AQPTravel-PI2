package com.aqptravel.controllers;


import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.aqptravel.dao.AdminDao;
import com.aqptravel.dao.PaqueteDao;
import com.aqptravel.logic.Admin;
import com.aqptravel.logic.Agencia;
import com.aqptravel.logic.Paquete;

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
						+ "<input type='checkbox' name='onoffswitch' class='checkAdmin ' id='' value='activo' onchange='changeCheckBox2("+paquet.getIdPaquete()+", this)' checked>"
						+ "</td>";

			}else{
				response += " <td> "
						+ "<input type='checkbox' name='onoffswitch' class='checkAdmin ' id='' value='desactivo' onchange='changeCheckBox2("+paquet.getIdPaquete()+", this)' >"
						+ "</td>";
			}			
			
			response += "<td> <a class='btn btn-warning' href='editar_paquete_admin.html' aria-label='Delete'>"
					+ "	<i class='fa fa-pencil' aria-hidden='true'></i>&nbsp;Editar	</a> </td></tr>";
		}
		
		return response; 
	}

}