package com.hanmote.entity;

//业务部门基本信息
public class Business_Base {
	
	private int ID;
	//部门ID
	private String Business_Apartment_ID;
	//部门名称
	private String Business_Apartment_Name;
	//提供物料组ID
	private String Material_Group_ID;
	
	public Business_Base() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Business_Base(int iD, String business_Apartment_ID,
			String business_Apartment_Name, String material_Group_ID) {
		super();
		ID = iD;
		Business_Apartment_ID = business_Apartment_ID;
		Business_Apartment_Name = business_Apartment_Name;
		Material_Group_ID = material_Group_ID;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getBusiness_Apartment_ID() {
		return Business_Apartment_ID;
	}

	public void setBusiness_Apartment_ID(String business_Apartment_ID) {
		Business_Apartment_ID = business_Apartment_ID;
	}

	public String getBusiness_Apartment_Name() {
		return Business_Apartment_Name;
	}

	public void setBusiness_Apartment_Name(String business_Apartment_Name) {
		Business_Apartment_Name = business_Apartment_Name;
	}

	public String getMaterial_Group_ID() {
		return Material_Group_ID;
	}

	public void setMaterial_Group_ID(String material_Group_ID) {
		Material_Group_ID = material_Group_ID;
	}
	
	

}
