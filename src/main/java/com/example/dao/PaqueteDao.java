package com.example.dao;

import java.util.List;

import com.example.logic.FotosPaquete;
import com.example.logic.Paquete;


public interface PaqueteDao {
	
	public List<Paquete> listAllPaquetes();
	
	public int addPaquete(Paquete admin);
	
	public void updatePaquete(Paquete admin);
	
	public void deletePaquete(Paquete admin);
	
	public Paquete findPaqueteById(int id);
	
	public void changeStatePaquete(int id, char state);
	
	
	public boolean addFotoPaquete(FotosPaquete foto);
	

}
