package com.example.dao;


import java.util.List;

import com.example.logic.Agency;
public interface AgencyDao {
	
	public List<Agency> listAllAgency();
	
	public void addAgency(Agency agency);
	
	public void updateAgency(Agency agency);
	
	public void deleteAgency(Agency agency);
	
	public Agency findAgencyById(int id);
	

}
