package com.example.dao;

import java.util.List;

import com.example.logic.Admin;
public interface AdminDao {
	
	public List<Admin> listAllAdmin();
	
	public void addAdmin(Admin admin);
	
	public void updateAdmin(Admin admin);
	
	public void deleteAdmin(Admin admin);
	
	public Admin findAdminById(int id);
	
	public void changeStateAdmin(int id, char state);
	

}