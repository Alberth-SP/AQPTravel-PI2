package com.example.logic;

public class Agency {


	private String idAgency;
	private String name;
	private String email;
	private String ruc;
	private String socialReason;
	private String ubigeo;
	private String address;
	private int rate;
	private String description;
	private String password;
	private String phone;
	private int dayMod;
	private int monthMod;
	private int yearMod;
	private String codAdmin; 
	private char state;
	public Agency() {
		super();
	}

	////////////////////////////////////////////////////
	public static class BuildAgency implements BuildUser<Agency>{
		
		//Required parameters 
		private final String name;
		private final String email;
		//Parameters initialized 
		private String idAgency="";
		private String ruc="";
		private String socialReason="";
		private String ubigeo="";
		private String address="";
		private int rate=0;
		private String description="";
		private String password="";
		private String phone="";
		private int dayMod=0;
		private int monthMod=0;
		private int yearMod=0;
		private String codAdmin="";
		private char state='0';
		public BuildAgency(String name, String email) {
			this.name=name;
			this.email=email;
		}
		public BuildAgency setAddress(String val) {
			this.address=val;
			return this;
		}
		public BuildAgency setRuc(String val) {
			ruc=val;
			return this;
		}
		public BuildAgency setPassword(String val) {
			password=val;
			return this;
		}
		public BuildAgency setPhone(String val) {
			phone=val;
			return this;
		}
		public BuildAgency setIdAgency(int cod) {
			this.idAgency="AG"+cod;
			return this;
		}
		public Agency build() {
			return new Agency(this);
		}
		public BuildAgency setSocialReason(String socialReason) {
			this.socialReason = socialReason;
			return this;
		}
		public BuildAgency setUbigeo(String ubigeo) {
			this.ubigeo = ubigeo;
			return this;
		}
		public BuildAgency setDirecction(String direcction) {
			this.address = direcction;
			return this;
		}
		public BuildAgency setRate(int rate) {
			this.rate = rate;
			return this;
		}
		public BuildAgency setDescription(String description) {
			this.description = description;
			return this;
		}
		public BuildAgency setDayMod(int dayMod) {
			assert(dayMod>31||dayMod<1);
			this.dayMod = dayMod;
			return this;
		}
		public BuildAgency setMonthMod(int monthMod) {
			assert(monthMod>12||monthMod<1);
			this.monthMod = monthMod;
			return this;
		}
		public BuildAgency setYearMod(int yearMod) {
			assert(yearMod<2016);
			this.yearMod = yearMod;
			return this;
		}
		public BuildAgency setCodAdmin(String codAdmin) {
			this.codAdmin =codAdmin;
			return this;
		}
	}
	

////////////////////////////////////////////////////
	private Agency(BuildAgency build) {
		this.idAgency=build.idAgency;
		this.name=build.name;
		this.email=build.email;
		this.ruc=build.ruc;
		this.socialReason=build.socialReason;
		this.ubigeo=build.ubigeo;
		this.address=build.address;
		this.rate=build.rate;
		this.description=build.description;
		this.phone=build.phone;
		this.dayMod=build.dayMod;
		this.monthMod=build.monthMod;
		this.yearMod=build.yearMod;
		this.codAdmin=build.codAdmin;
		this.password=build.password;
		this.setStateAgency(build.state);
	}
	
	
	public String getIdAgency() {
		return idAgency;
	}
	public String getNameAgency() {
		return name;
	}
	public String getEmailAgency() {
		return email;
	}
	public String getPasswordAgency() {
		return password;
	}
	public String getPhoneAgency() {
		return phone;
	}
	public char getStateAgency() {
		return state;
	}
	public void setStateAgency(char state) {
		this.state = state;
	}
	public String getDescriptionAgency() {
		return description;
	}
	public int getRateAgency() {
		return rate;
	}
	public String getUbigeoAgency() {
		return ubigeo;
	}
	public String getSocialReasonAgency() {
		return socialReason;
	}
	public String getRucAgency() {
		return ruc;
	}
	public int getDayModAgency() {
		return dayMod;
	}
	public int getMonthModAgency() {
		return monthMod;
	}
	public int getYearModAgency() {
		return yearMod;
	}
	public String getCodAdminAgency() {
		return codAdmin;
	}
	public String getAddressAgency() {
		return address;
	}
	
	
	public void setIdAgency(String idAgency) {
		this.idAgency = idAgency;
	}


	public void setNameAgency(String name) {
		this.name = name;
	}


	public void setEmailAgency(String email) {
		this.email = email;
	}


	public void setRucAgency(String ruc) {
		this.ruc = ruc;
	}


	public void setSocialReasonAgency(String socialReason) {
		this.socialReason = socialReason;
	}


	public void setUbigeoAgency(String ubigeo) {
		this.ubigeo = ubigeo;
	}


	public void setAddressAgency(String address) {
		this.address = address;
	}


	public void setRateAgency(int rate) {
		this.rate = rate;
	}


	public void setDescriptionAgency(String description) {
		this.description = description;
	}


	public void setPasswordAgency(String password) {
		this.password = password;
	}


	public void setPhoneAgency(String phone) {
		this.phone = phone;
	}


	public void setDayModAgency(int dayMod) {
		this.dayMod = dayMod;
	}


	public void setMonthModAgency(int monthMod) {
		this.monthMod = monthMod;
	}


	public void setYearModAgency(int yearMod) {
		this.yearMod = yearMod;
	}


	public void setCodAdminAgency(String codAdmin) {
		this.codAdmin = codAdmin;
	}
	
	
}
