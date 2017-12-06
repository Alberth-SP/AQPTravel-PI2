package com.example.logic;


public class Admin {

	
	private  Integer idAdmin;
	private  String nombre;
	private  String apellidoAdmin;
	private  String celularAdmin;
	private  String correoAdmin;
	private  String direccionAdmin;
	private  String contrasenaAdmin;
	private  char estadoAdmin;
	
	
	public Admin() {
		super();
		
	}
	public Admin(Integer idAdmin) {
		super();
		this.idAdmin = idAdmin;		
		this.nombre = "";
		this.apellidoAdmin = "";
		this.celularAdmin = "";
		this.correoAdmin = "";
		this.direccionAdmin = "";
		this.contrasenaAdmin = "";
		this.estadoAdmin = '0';
	}
	
	public Admin(String nombre, String apellidoAdmin) {
		super();
		this.nombre = nombre;
		this.apellidoAdmin = apellidoAdmin;
	}
	
	public Admin(String nombre, String apellidoAdmin, String celularAdmin, String correoAdmin, String direccionAdmin,
			String contrasenaAdmin, char estadoAdmin) {
		super();
		this.nombre = nombre;
		this.apellidoAdmin = apellidoAdmin;
		this.celularAdmin = celularAdmin;
		this.correoAdmin = correoAdmin;
		this.direccionAdmin = direccionAdmin;
		this.contrasenaAdmin = contrasenaAdmin;
		this.estadoAdmin = estadoAdmin;
	}
	
	
	
	public Integer getIdAdmin() {
		return idAdmin;
	}
	public void setIdAdmin(Integer idAdmin) {
		this.idAdmin = idAdmin;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getCelularAdmin() {
		return celularAdmin;
	}
	public void setCelularAdmin(String celularAdmin) {
		this.celularAdmin = celularAdmin;
	}
	public String getCorreoAdmin() {
		return correoAdmin;
	}
	public void setCorreoAdmin(String correoAdmin) {
		this.correoAdmin = correoAdmin;
	}
	public String getDireccionAdmin() {
		return direccionAdmin;
	}
	public void setDireccionAdmin(String direccionAdmin) {
		this.direccionAdmin = direccionAdmin;
	}
	public String getContrasenaAdmin() {
		return contrasenaAdmin;
	}
	public void setContrasenaAdmin(String contrasenaAdmin) {
		this.contrasenaAdmin = contrasenaAdmin;
	}
	public char getEstadoAdmin() {
		return estadoAdmin;
	}
	public void setEstadoAdmin(char estadoAdmin) {
		this.estadoAdmin = estadoAdmin;
	}
	public String getApellidoAdmin() {
		return apellidoAdmin;
	}
	public void setApellidoAdmin(String apellidoAdmin) {
		this.apellidoAdmin = apellidoAdmin;
	}	
	
	
	
	/*
	public static class BuildAdmin implements BuildUser<Admin>{
		//Required parameters 
		private final String name;
		private final String email;
		//Parameters initialized 
		private String idAdmin="";
		private String lastname="";
		private String phone="";
		private String address="";
		private String password="";
		private char state='0';
		
		
		public BuildAdmin(String name,String email) {
			this.name=name;
			this.email=email;
		}
		
		public Admin build() {
			// TODO Auto-generated method stub
			return new Admin(this);
		}

		public BuildAdmin setLastName(String lastname) {
			this.setLastname(lastname);
			return this;
		}
		public BuildAdmin setIdAdmin(String idAdmin) {
			this.idAdmin ="AD"+idAdmin;
			return this;
		}

		public BuildAdmin setLastname(String lastname) {
			this.lastname = lastname;
			return this;
		}

		public BuildAdmin setPhone(String phone) {
			this.phone = phone;
			return this;
		}

		public BuildAdmin setAddress(String address) {
			this.address = address;
			return this;
		}

		public BuildAdmin setPassword(String password) {
			this.password = password;
			return this;
		}	
	}
	private Admin(BuildAdmin build) {
		this.idAdmin=build.idAdmin;
		this.name=build.name;
		this.lastname=build.lastname;
		this.email=build.email;
		this.password=build.password;
		this.phone=build.phone;
		this.state=build.state;
		this.address=build.address;
	}
	*/
}

