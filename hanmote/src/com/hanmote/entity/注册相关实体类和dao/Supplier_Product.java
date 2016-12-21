package com.hanmote.entity;

//供应商主要产品信息表
public class Supplier_Product {
	
	private int ID;
	//主要产品
	private String Product1;
	private String Product2;
	private String Product3;
	private String Product4;
	
	public Supplier_Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Supplier_Product(int iD, String product1, String product2,
			String product3, String product4) {
		super();
		ID = iD;
		Product1 = product1;
		Product2 = product2;
		Product3 = product3;
		Product4 = product4;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getProduct1() {
		return Product1;
	}

	public void setProduct1(String product1) {
		Product1 = product1;
	}

	public String getProduct2() {
		return Product2;
	}

	public void setProduct2(String product2) {
		Product2 = product2;
	}

	public String getProduct3() {
		return Product3;
	}

	public void setProduct3(String product3) {
		Product3 = product3;
	}

	public String getProduct4() {
		return Product4;
	}

	public void setProduct4(String product4) {
		Product4 = product4;
	}
	
	

}
