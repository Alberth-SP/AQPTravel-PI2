package com.example.dao;

import java.util.List;

import com.example.logic.FotosPaquete;

public interface FotoPaqueteDao {
	
	public List<FotosPaquete> getAllFotosPaquete();
	public boolean addFotoToPaquete(FotosPaquete foto);
	public FotosPaquete findByIdFotoPaquete(int idPaquete, int idFoto);
	public boolean deleteFotoToPaquete(int idPaquete, int idFoto);
	
	

}
