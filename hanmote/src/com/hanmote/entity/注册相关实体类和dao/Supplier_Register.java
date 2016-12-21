package com.hanmote.entity;

//供应商注册
public class Supplier_Register {
	//供应商注册表ID
	private int ID;
	//供应商名称
	private String Supplier_Name;
	//供应商所在国家、省、市
	private String Country;
	private String Province;
	private String City;
	//邮政编码
	private String Postal_Code;
	//地址
	private String Address;
	//邮箱地址
	private String Email_Address;
	//电话号码
	private String Phone_Number;
	//官网地址
	private String Website_Address;
	//传真地址
	private String Fax_Number;
	//供应商自评
	private String Comments;
	//部门
	private String Business_Apartment_ID;
	//所有权
	private String Company_Structure;
	//所有权形式
	private String Ownership_Type;
	//成交量
	private int Turnover_Record_ID;
	//主要机构
	private int Facility_Record_ID;
	//主要产品
	private int Product_Record_ID;
	//主要顾客
	private int Customer_Record_ID; 
	//供应商能力
	private String Capabilities;
	//供应商认证
	private String Certificates;
	//即将获得的认证名称
	private String Certificates_In_Future;
	//计划获得时间
	private String Planned_Date;
	//准入状态
	private String AccessCertificate_State;
	
	public Supplier_Register() {
		super();
	}

	public Supplier_Register(int iD, String supplier_Name, String country,
			String province, String city, String postal_Code, String address,
			String email_Address, String phone_Number, String website_Address,
			String fax_Number, String comments, String business_Apartment_ID,
			String company_Structure, String ownership_Type,
			int turnover_Record_ID, int facility_Record_ID,
			int product_Record_ID, int customer_Record_ID, String capabilities,
			String certificates, String certificates_In_Future,
			String planned_Date, String accessCertificate_State) {
		super();
		ID = iD;
		Supplier_Name = supplier_Name;
		Country = country;
		Province = province;
		City = city;
		Postal_Code = postal_Code;
		Address = address;
		Email_Address = email_Address;
		Phone_Number = phone_Number;
		Website_Address = website_Address;
		Fax_Number = fax_Number;
		Comments = comments;
		Business_Apartment_ID = business_Apartment_ID;
		Company_Structure = company_Structure;
		Ownership_Type = ownership_Type;
		Turnover_Record_ID = turnover_Record_ID;
		Facility_Record_ID = facility_Record_ID;
		Product_Record_ID = product_Record_ID;
		Customer_Record_ID = customer_Record_ID;
		Capabilities = capabilities;
		Certificates = certificates;
		Certificates_In_Future = certificates_In_Future;
		Planned_Date = planned_Date;
		AccessCertificate_State = accessCertificate_State;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getSupplier_Name() {
		return Supplier_Name;
	}

	public void setSupplier_Name(String supplier_Name) {
		Supplier_Name = supplier_Name;
	}

	public String getCountry() {
		return Country;
	}

	public void setCountry(String country) {
		Country = country;
	}

	public String getProvince() {
		return Province;
	}

	public void setProvince(String province) {
		Province = province;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getPostal_Code() {
		return Postal_Code;
	}

	public void setPostal_Code(String postal_Code) {
		Postal_Code = postal_Code;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getEmail_Address() {
		return Email_Address;
	}

	public void setEmail_Address(String email_Address) {
		Email_Address = email_Address;
	}

	public String getPhone_Number() {
		return Phone_Number;
	}

	public void setPhone_Number(String phone_Number) {
		Phone_Number = phone_Number;
	}

	public String getWebsite_Address() {
		return Website_Address;
	}

	public void setWebsite_Address(String website_Address) {
		Website_Address = website_Address;
	}

	public String getFax_Number() {
		return Fax_Number;
	}

	public void setFax_Number(String fax_Number) {
		Fax_Number = fax_Number;
	}

	public String getComments() {
		return Comments;
	}

	public void setComments(String comments) {
		Comments = comments;
	}

	public String getBusiness_Apartment_ID() {
		return Business_Apartment_ID;
	}

	public void setBusiness_Apartment_ID(String business_Apartment_ID) {
		Business_Apartment_ID = business_Apartment_ID;
	}

	public String getCompany_Structure() {
		return Company_Structure;
	}

	public void setCompany_Structure(String company_Structure) {
		Company_Structure = company_Structure;
	}

	public String getOwnership_Type() {
		return Ownership_Type;
	}

	public void setOwnership_Type(String ownership_Type) {
		Ownership_Type = ownership_Type;
	}

	public int getTurnover_Record_ID() {
		return Turnover_Record_ID;
	}

	public void setTurnover_Record_ID(int turnover_Record_ID) {
		Turnover_Record_ID = turnover_Record_ID;
	}

	public int getFacility_Record_ID() {
		return Facility_Record_ID;
	}

	public void setFacility_Record_ID(int facility_Record_ID) {
		Facility_Record_ID = facility_Record_ID;
	}

	public int getProduct_Record_ID() {
		return Product_Record_ID;
	}

	public void setProduct_Record_ID(int product_Record_ID) {
		Product_Record_ID = product_Record_ID;
	}

	public int getCustomer_Record_ID() {
		return Customer_Record_ID;
	}

	public void setCustomer_Record_ID(int customer_Record_ID) {
		Customer_Record_ID = customer_Record_ID;
	}

	public String getCapabilities() {
		return Capabilities;
	}

	public void setCapabilities(String capabilities) {
		Capabilities = capabilities;
	}

	public String getCertificates() {
		return Certificates;
	}

	public void setCertificates(String certificates) {
		Certificates = certificates;
	}

	public String getCertificates_In_Future() {
		return Certificates_In_Future;
	}

	public void setCertificates_In_Future(String certificates_In_Future) {
		Certificates_In_Future = certificates_In_Future;
	}

	public String getPlanned_Date() {
		return Planned_Date;
	}

	public void setPlanned_Date(String planned_Date) {
		Planned_Date = planned_Date;
	}

	public String getAccessCertificate_State() {
		return AccessCertificate_State;
	}

	public void setAccessCertificate_State(String accessCertificate_State) {
		AccessCertificate_State = accessCertificate_State;
	}
	
	
	
	
}
