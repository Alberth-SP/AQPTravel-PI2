package com.example.logic;
import java.awt.Image;
public class FotosPaquete {
	private Integer idFotos;
	private final Integer idPaquete;
	private final String nombreFoto;
	private final Image imagenFoto;
	public static class FotosPaqueteBuilder implements Builder<FotosPaquete>{
		private final String nombreFoto;
		private Integer idPaquete=0;
		private Image imagenFoto;
		public FotosPaqueteBuilder(String nombreFoto) {
			this.nombreFoto=nombreFoto;
			
		}
		public FotosPaqueteBuilder setidPaquete(Integer val) {
			this.idPaquete=val;
			return this;
		}
		public FotosPaqueteBuilder setimagenFoto(Image imagenFoto) {
			this.imagenFoto=imagenFoto;
			return this;
		}
		
		public FotosPaquete build() {
			return new FotosPaquete(this);
		}
		
	}
	private FotosPaquete(FotosPaqueteBuilder build) {
		this.idPaquete=build.idPaquete;
		this.imagenFoto=build.imagenFoto;
		this.nombreFoto=build.nombreFoto;
	}
	public Integer getIdFotos() {
		return idFotos;
	}
	public void setIdFotos(Integer idFotos) {
		this.idFotos = idFotos;
	}
	public Integer getIdPaquete() {
		return idPaquete;
	}
	public String getNombreFoto() {
		return nombreFoto;
	}
	public Image getImagenFoto() {
		return imagenFoto;
	}
	

}
