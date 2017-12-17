package com.example.controllers;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
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
import com.example.dao.AgenciaDao;
import com.example.dao.PaqueteDao;
import com.example.logic.Admin;
import com.example.logic.Agencia;
import com.example.logic.Agency;
import com.example.logic.Agency.BuildAgency;
import com.example.logic.Paquete;

@Controller
public class AgencyController {
	
	@Autowired
	AgenciaDao agenciaDao;
	
	
	@RequestMapping(value="agencia/list_agencias",  method=RequestMethod.POST, produces="text/html;charset=UTF-8")
	@ResponseBody
	public String listAgency(ModelAndView model) throws IOException{
		
		List<Agency> listAgency = agenciaDao.listAll();
		
		//Agencia agencia = new Agencia();
		
		String response="";
		int cont = 0;
		for(Agency tmpAgencia : listAgency){
			
			response += "<tr>" +
					"<td>" + (++cont) + "</td>" +
					"<td>" + tmpAgencia.getName() + "</td>" +
					"<td>" + tmpAgencia.getRuc() + "</td>" +
					"<td>" + tmpAgencia.getSocialReason() + "</td>";
			
			if(tmpAgencia.getState()== '1'){
				System.out.println("controller Agencia! "+tmpAgencia.getState());
				response += " <td> "
						+ "<input type='checkbox' name='' class=' ' id='' value='activo' onchange='changeCheckBoxAgencia("+tmpAgencia.getIdAgency()+", this)' checked>"
						+ "</td>";

			}else{
				response += " <td> "
						+ "<input type='checkbox' name='' class=' ' id='' value='desactivo' onchange='changeCheckBoxAgencia("+tmpAgencia.getIdAgency()+", this)' >"
						+ "</td>";
			}			
			
			response += "<td> <a class='btn btn-warning' href='editar_agencia_admin.html' aria-label='Delete'>"
					+ "	<i class='fa fa-pencil' aria-hidden='true'></i>&nbsp;Editar	</a> </td></tr>";
		}
		
		return response; 
	}
	
	
	
	
	@RequestMapping(value="admin/agencia/changeStateAgencia", method=RequestMethod.POST)
	@ResponseBody
	public String changeStateAdmin(HttpServletRequest request) throws IOException{
		
		String []a1 = request.getParameterValues("key");	
		String []a2 = request.getParameterValues("state");
	
		agenciaDao.changeState(Integer.parseInt(a1[0]), a2[0].charAt(0));		
		return "true";		
		
	}
	
	
	@RequestMapping(value="admin/agencia/saveAgencia", method=RequestMethod.POST)
	@ResponseBody 
	public String saveAgencia(@RequestBody MultiValueMap<String,String> params) throws IOException{    
	/*
		System.out.println("en saveagencua->"+params.getFirst("nombreAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("rucAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("razonsocialAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("emailAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("ubigeoAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("direccionAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("valoracionAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("descripcionAgencia"));
		System.out.println("en saveagencua->fecha "+params.getFirst("fechaAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("adminAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("passAgencia"));
		System.out.println("en saveagencua->"+params.getFirst("estadoAgencia"));
*/
		BuildAgency a =new BuildAgency(params.getFirst("nombreAgencia"));
		a.setRuc(params.getFirst("rucAgencia"));
		a.setSocialReason(params.getFirst("razonsocialAgencia"));
		a.setEmail(params.getFirst("emailAgencia"));
		a.setUbigeo(params.getFirst("ubigeoAgencia"));
		a.setDirecction(params.getFirst("direccionAgencia"));
		a.setRate(Integer.parseInt(params.getFirst("valoracionAgencia")));
		a.setDescription(params.getFirst("descripcionAgencia"));
		a.setPhone(params.getFirst("telefonoAgencia"));
		a.setDayMod(Integer.parseInt(params.getFirst("fechaAgencia").substring(8, 10)));
		a.setMonthMod(Integer.parseInt(params.getFirst("fechaAgencia").substring(5, 7)));
		a.setYearMod(Integer.parseInt(params.getFirst("fechaAgencia").substring(0, 4)));
		a.setCodAdmin(Integer.parseInt(params.getFirst("adminAgencia")));
		a.setPassword(params.getFirst("passAgencia"));
		a.setState(params.getFirst("estadoAgencia").charAt(0));

		
		Agency agencia=new Agency(a);
		agenciaDao.add(agencia);
		
		return "true";
	} 

	


}

