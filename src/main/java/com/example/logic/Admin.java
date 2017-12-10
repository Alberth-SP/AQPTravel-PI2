package com.example.logic;
public class Admin {

	
	private Integer idAdmin;
	private final String name;
	private final String email;
	private final String lastname;
	private final String phone;
	private final String address;
	private final String password;
	private char state;
	public static class BuildAdmin implements Builder<Admin>{
		//Required parameters 
		private final String name;
		//Parameters initialized 
		private String email="";
		private String lastname="";
		private String phone="";
		private String address="";
		private String password="";
		private char state='0';
		
		
		public BuildAdmin(String name) {
			this.name=name;
		}
		
		public Admin build() {
			// TODO Auto-generated method stub
			return new Admin(this);
		}
		public BuildAdmin setLastName(String lastname) {
			this.setLastname(lastname);
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
			this.password = Utilidades.Encriptar(password);
			return this;
		}
		public BuildAdmin setEmail(String email) {
			this.email = email;
			return this;
		}
	}
	
	private Admin(BuildAdmin build) {
		this.name=build.name;
		this.lastname=build.lastname;
		this.email=build.email;
		this.password=build.password;
		this.phone=build.phone;
		this.setState(build.state);
		this.address=build.address;
	}
	public Integer getIdAdmin() {
		return idAdmin;
	}
	public void setIdAdmin(Integer idAdmin) {
		this.idAdmin = idAdmin;
	}
	public String getName() {
		return name;
	}
	public String getLastname() {
		return lastname;
	}
	public String getEmail() {
		return email;
	}
	public String getPhone() {
		return phone;
	}
	public String getAddress() {
		return address;
	}
	public String getPassword() {
		return password;
	}
	public char getState() {
		return state;
	}
	public void setState(char state) {
		this.state = state;
	}


}

