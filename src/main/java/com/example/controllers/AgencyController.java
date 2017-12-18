package com.example.controllers;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
			//../admin/agencias/20/updateAgencia
			response += "<td> <a class='btn btn-warning' data-toggle='modal' href='../admin/agencias/"+tmpAgencia.getIdAgency()+"/updateAgencia' data-target='#myModal' aria-label='Delete'>"
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
	
	
	
	
	
	@RequestMapping(value="admin/agencia/updateAgencia", method=RequestMethod.POST)
	@ResponseBody 
	public ModelAndView updateAgencia(@RequestBody MultiValueMap<String,String> params) throws IOException{    
	



		BuildAgency a =new BuildAgency(params.getFirst("name"));
		a.setRuc(params.getFirst("ruc"));
		a.setSocialReason(params.getFirst("socialReason"));
		a.setEmail(params.getFirst("email"));
		a.setUbigeo(params.getFirst("ubigeo"));
		a.setDirecction(params.getFirst("address"));
		a.setRate(Integer.parseInt(params.getFirst("rate")));
		a.setDescription(params.getFirst("description"));
		a.setPhone(params.getFirst("phone"));
		a.setDayMod(Integer.parseInt(params.getFirst("dayMod")));
		a.setMonthMod(Integer.parseInt(params.getFirst("monthMod")));
		a.setYearMod(Integer.parseInt(params.getFirst("yearMod")));
		a.setCodAdmin(Integer.parseInt(params.getFirst("codAdmin")));
		a.setPassword(params.getFirst("password"));
		a.setState(params.getFirst("state").charAt(0));
		
		Agency agencia=new Agency(a);
		agencia.setIdAgency(Integer.parseInt(params.getFirst("idAgency")));
		agenciaDao.update(agencia);
		
		

		return new ModelAndView("redirect:../agencias"); 
		
	} 
	
	@RequestMapping(value="admin/agencia/saveAgencia", method=RequestMethod.POST)
	@ResponseBody 
	public String saveAgencia(@RequestBody MultiValueMap<String,String> params) throws IOException{    

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
	
	//admin/agencia/saveAgencia
	// show update form
	@RequestMapping(value = "/admin/agencias/{id}/updateAgencia", method = RequestMethod.GET)
	public String updateAgencia(@PathVariable("id") int id, Model model) {

		//logger.debug("showUpdateUserForm() : {}", id);

		//User user = userService.findById(id);
		Agency tmpAgencia;
		
		tmpAgencia=agenciaDao.findById(id);
		
		model.addAttribute("agenciaForm", tmpAgencia);
		
		populateDefaultModel(model);
		
		return "updateAgencia";

	}
	
	
	
	private void populateDefaultModel(Model model) {

		List<String> frameworksList = new ArrayList<String>();
		frameworksList.add("Spring MVC");
		frameworksList.add("Struts 2");
		frameworksList.add("JSF 2");
		frameworksList.add("GWT");
		frameworksList.add("Play");
		frameworksList.add("Apache Wicket");
		model.addAttribute("frameworkList", frameworksList);

		Map<String, String> skill = new LinkedHashMap<String, String>();
		skill.put("Hibernate", "Hibernate");
		skill.put("Spring", "Spring");
		skill.put("Struts", "Struts");
		skill.put("Groovy", "Groovy");
		skill.put("Grails", "Grails");
		model.addAttribute("javaSkillList", skill);

		List<Integer> numbers = new ArrayList<Integer>();
		numbers.add(1);
		numbers.add(2);
		numbers.add(3);
		numbers.add(4);
		numbers.add(5);
		model.addAttribute("numberList", numbers);

		Map<String, String> country = new LinkedHashMap<String, String>();
		country.put("US", "United Stated");
		country.put("CN", "China");
		country.put("SG", "Singapore");
		country.put("MY", "Malaysia");
		model.addAttribute("countryList", country);
		
		Map<Integer, String> valoracion = new LinkedHashMap<Integer, String>();
		valoracion.put(0, "000");
		valoracion.put(1, "111");
		valoracion.put(2, "222");
		valoracion.put(3, "333");
		valoracion.put(4, "444");
		valoracion.put(5, "555");
		model.addAttribute("valoracionList", valoracion);
		
		
		List<Character> estado = new ArrayList<Character>();
		estado.add('0');
		estado.add('1');

		model.addAttribute("estadoList", estado);

	}

	


}

