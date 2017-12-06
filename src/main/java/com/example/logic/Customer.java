package com.example.logic;


public class Customer{
	
	private final String idCustomer;
	private final String name;
	private final String lastname;
	private final String email;
	private final String password;
	private final String phone;
	private final int age;
	private char state;
	public static class BuildCustomer implements BuildUser<Customer>{
		
		//Required parameters 
		private final String name;
		private final String email;
		//Parameters initialized 
		private String idCustomer="";
		private String lastname="";
		private String password="";
		private String phone="";
		private char state='0';
		private int age=0;
		public BuildCustomer(String name, String email) {
			this.name=name;
			this.email=email;
		}
		public BuildCustomer setLastName(String val) {
			lastname=val;
			return this;
		}
		public BuildCustomer setPassword(String val) {
			password=val;
			return this;
		}
		public BuildCustomer setPhone(String val) {
			phone=val;
			return this;
		}
		public BuildCustomer setIdUser(int cod) {
			this.idCustomer="CU"+cod;
			return this;
		}
		public BuildCustomer setAge(int val) {
			assert(val>120||val<18);
			age=val;
			return this;
		}
		public Customer build() {
			return new Customer(this);
		}
	}
	private Customer(BuildCustomer build) {
		this.idCustomer=build.idCustomer;
		this.name=build.name;
		this.lastname=build.lastname;
		this.email=build.email;
		this.password=build.password;
		this.phone=build.phone;
		this.age=build.age;
		this.setState(build.state);
	}
	public String getIdCustomer() {
		return idCustomer;
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
	public String getPassword() {
		return password;
	}
	public String getPhone() {
		return phone;
	}
	public int getAge() {
		return age;
	}
	public char getState() {
		return state;
	}
	public void setState(char state) {
		this.state = state;
	}	
}

