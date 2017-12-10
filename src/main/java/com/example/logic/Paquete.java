package com.aqptravel.logic;

import java.awt.Image;

public class Paquete {
	
	
	private Integer idPaquete;
	private Integer idAgencia;
	private String nombrePaquete;
	private Double precioPaquete;
	private Double precioOferta;
	private Integer capacidadPaquete;
	private String descripcionPaquete;
	private Integer numPaquete;
	private char estadoPaquete;
	private char ofertaPaquete;
	private Integer tiempoOferta;
	private Image mapaPaquete;
	private String destinoPaquete;
	private Integer valoracionPaquete;
	private Integer diaModPaquete;
	private Integer mesModPaquete;
	private Integer anioModPaquete;
	private Integer duracionPaquete;
	private String itinerario;
	private String servicios;
	private String recomendaciones;
	
	
	public Paquete() {
		super();
	}
	public Paquete(Integer idAgencia, String nombrePaquete, Double precioPaquete, Integer capacidadPaquete,
			String descripcionPaquete, Integer numPaquete, String destinoPaquete, Integer duracionPaquete) {
		super();
		this.idAgencia = idAgencia;
		this.nombrePaquete = nombrePaquete;
		this.precioPaquete = precioPaquete;
		this.capacidadPaquete = capacidadPaquete;
		this.descripcionPaquete = descripcionPaquete;
		this.numPaquete = numPaquete;
		this.destinoPaquete = destinoPaquete;
		this.duracionPaquete = duracionPaquete;
	}
	
	
	
	public Integer getIdPaquete() {
		return idPaquete;
	}
	public void setIdPaquete(Integer idPaquete) {
		this.idPaquete = idPaquete;
	}
	public Integer getIdAgencia() {
		return idAgencia;
	}
	public void setIdAgencia(Integer idAgencia) {
		this.idAgencia = idAgencia;
	}
	public String getNombrePaquete() {
		return nombrePaquete;
	}
	public void setNombrePaquete(String nombrePaquete) {
		this.nombrePaquete = nombrePaquete;
	}
	public Double getPrecioPaquete() {
		return precioPaquete;
	}
	public void setPrecioPaquete(Double precioPaquete) {
		this.precioPaquete = precioPaquete;
	}
	public Double getPrecioOferta() {
		return precioOferta;
	}
	public void setPrecioOferta(Double precioOferta) {
		this.precioOferta = precioOferta;
	}
	public Integer getCapacidadPaquete() {
		return capacidadPaquete;
	}
	public void setCapacidadPaquete(Integer capacidadPaquete) {
		this.capacidadPaquete = capacidadPaquete;
	}
	public String getDescripcionPaquete() {
		return descripcionPaquete;
	}
	public void setDescripcionPaquete(String descripcionPaquete) {
		this.descripcionPaquete = descripcionPaquete;
	}
	public Integer getNumPaquete() {
		return numPaquete;
	}
	public void setNumPaquete(Integer numPaquete) {
		this.numPaquete = numPaquete;
	}
	public char getEstadoPaquete() {
		return estadoPaquete;
	}
	public void setEstadoPaquete(char estadoPaquete) {
		this.estadoPaquete = estadoPaquete;
	}
	public char getOfertaPaquete() {
		return ofertaPaquete;
	}
	public void setOfertaPaquete(char ofertaPaquete) {
		this.ofertaPaquete = ofertaPaquete;
	}
	public Integer getTiempoOferta() {
		return tiempoOferta;
	}
	public void setTiempoOferta(Integer tiempoOferta) {
		this.tiempoOferta = tiempoOferta;
	}
	public Image getMapaPaquete() {
		return mapaPaquete;
	}
	public void setMapaPaquete(Image mapaPaquete) {
		this.mapaPaquete = mapaPaquete;
	}
	public String getDestinoPaquete() {
		return destinoPaquete;
	}
	public void setDestinoPaquete(String destinoPaquete) {
		this.destinoPaquete = destinoPaquete;
	}
	public Integer getValoracionPaquete() {
		return valoracionPaquete;
	}
	public void setValoracionPaquete(Integer valoracionPaquete) {
		this.valoracionPaquete = valoracionPaquete;
	}
	public Integer getDiaModPaquete() {
		return diaModPaquete;
	}
	public void setDiaModPaquete(Integer diaModPaquete) {
		this.diaModPaquete = diaModPaquete;
	}
	public Integer getMesModPaquete() {
		return mesModPaquete;
	}
	public void setMesModPaquete(Integer mesModPaquete) {
		this.mesModPaquete = mesModPaquete;
	}
	public Integer getAnioModPaquete() {
		return anioModPaquete;
	}
	public void setAnioModPaquete(Integer anioModPaquete) {
		this.anioModPaquete = anioModPaquete;
	}
	public Integer getDuracionPaquete() {
		return duracionPaquete;
	}
	public void setDuracionPaquete(Integer duracionPaquete) {
		this.duracionPaquete = duracionPaquete;
	}
	public String getItinerario() {
		return itinerario;
	}
	public void setItinerario(String itinerario) {
		this.itinerario = itinerario;
	}
	public String getServicios() {
		return servicios;
	}
	public void setServicios(String servicios) {
		this.servicios = servicios;
	}
	public String getRecomendaciones() {
		return recomendaciones;
	}
	public void setRecomendaciones(String recomendaciones) {
		this.recomendaciones = recomendaciones;
	}
	
	
}