package com.hanmote.entity;

public class Supplier_Turnover_Record {
	
	private int ID;
	//营业额
	private String Turnover;
	//员工人数
	private String Employee_Number;
	//投资额
	private String Investment;
	
	public Supplier_Turnover_Record() {
		super();
	}

	public Supplier_Turnover_Record(int iD, String turnover,
			String employee_Number, String investment) {
		super();
		ID = iD;
		Turnover = turnover;
		Employee_Number = employee_Number;
		Investment = investment;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getTurnover() {
		return Turnover;
	}

	public void setTurnover(String turnover) {
		Turnover = turnover;
	}

	public String getEmployee_Number() {
		return Employee_Number;
	}

	public void setEmployee_Number(String employee_Number) {
		Employee_Number = employee_Number;
	}

	public String getInvestment() {
		return Investment;
	}

	public void setInvestment(String investment) {
		Investment = investment;
	}
	
	
	
}
