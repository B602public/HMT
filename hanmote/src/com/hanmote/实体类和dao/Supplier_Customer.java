package com.hanmote.entity;

//供应商用户信息表
public class Supplier_Customer {
	
	private int ID;
	//客户
	private String Customer1;
	private String Customer2;
	private String Customer3;
	private String Customer4;
	private String Customer5;
	
	public Supplier_Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Supplier_Customer(int iD, String customer1, String customer2,
			String customer3, String customer4, String customer5) {
		super();
		ID = iD;
		Customer1 = customer1;
		Customer2 = customer2;
		Customer3 = customer3;
		Customer4 = customer4;
		Customer5 = customer5;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getCustomer1() {
		return Customer1;
	}

	public void setCustomer1(String customer1) {
		Customer1 = customer1;
	}

	public String getCustomer2() {
		return Customer2;
	}

	public void setCustomer2(String customer2) {
		Customer2 = customer2;
	}

	public String getCustomer3() {
		return Customer3;
	}

	public void setCustomer3(String customer3) {
		Customer3 = customer3;
	}

	public String getCustomer4() {
		return Customer4;
	}

	public void setCustomer4(String customer4) {
		Customer4 = customer4;
	}

	public String getCustomer5() {
		return Customer5;
	}

	public void setCustomer5(String customer5) {
		Customer5 = customer5;
	}
	
	

}

