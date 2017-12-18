package com.example.logic;

public class Destiny {
	
	private int idDestino;
	private int idPaquete;
	private String nombreDestino;
	private char estadoDestino;
	
	
	
	public Destiny() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Destiny(int idDestino, int idPaquete, String nombreDestino, char estadoDestino) {
		super();
		this.idDestino = idDestino;
		this.idPaquete = idPaquete;
		this.nombreDestino = nombreDestino;
		this.estadoDestino = estadoDestino;
	}
	
	
	public int getIdDestino() {
		return idDestino;
	}
	public void setIdDestino(int idDestino) {
		this.idDestino = idDestino;
	}
	public int getIdPaquete() {
		return idPaquete;
	}
	public void setIdPaquete(int idPaquete) {
		this.idPaquete = idPaquete;
	}
	public String getNombreDestino() {
		return nombreDestino;
	}
	public void setNombreDestino(String nombreDestino) {
		this.nombreDestino = nombreDestino;
	}
	public char getEstadoDestino() {
		return estadoDestino;
	}
	public void setEstadoDestino(char estadoDestino) {
		this.estadoDestino = estadoDestino;
	}
	

}
