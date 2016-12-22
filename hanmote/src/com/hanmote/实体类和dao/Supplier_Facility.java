package com.hanmote.entity;

//供应商机构服务
public class Supplier_Facility {
	
	private int ID;
	//机构
	private String facility1;
	private String facility2;
	private String facility3;
	private String facility4;
	private String facility5;
	
	public Supplier_Facility() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Supplier_Facility(int iD, String facility1, String facility2,
			String facility3, String facility4, String facility5) {
		super();
		ID = iD;
		this.facility1 = facility1;
		this.facility2 = facility2;
		this.facility3 = facility3;
		this.facility4 = facility4;
		this.facility5 = facility5;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getFacility1() {
		return facility1;
	}

	public void setFacility1(String facility1) {
		this.facility1 = facility1;
	}

	public String getFacility2() {
		return facility2;
	}

	public void setFacility2(String facility2) {
		this.facility2 = facility2;
	}

	public String getFacility3() {
		return facility3;
	}

	public void setFacility3(String facility3) {
		this.facility3 = facility3;
	}

	public String getFacility4() {
		return facility4;
	}

	public void setFacility4(String facility4) {
		this.facility4 = facility4;
	}

	public String getFacility5() {
		return facility5;
	}

	public void setFacility5(String facility5) {
		this.facility5 = facility5;
	}
	
	

}
