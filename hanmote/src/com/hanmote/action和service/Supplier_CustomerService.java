package com.hanmote.service;

import java.util.List;

import com.hanmote.dao.Supplier_CustomerDao;
import com.hanmote.entity.Supplier_Customer;
import com.hanmote.entity.Supplier_Register;

public class Supplier_CustomerService {
	
	private Supplier_CustomerDao sud;

	public Supplier_CustomerDao getSud() {
		return sud;
	}

	public void setSud(Supplier_CustomerDao sud) {
		this.sud = sud;
	}
	
	public void save(Supplier_Customer sc){
		sud.saveSupplier_Customer(sc);
	}
	
	public void delete(Supplier_Customer sc){
		sud.deleteSupplier_Customer(sc);
	}
	
	public void update(Supplier_Customer sc){
		sud.updateSupplier_Customer(sc);
	}
	
	public void get(Supplier_Customer sc){
		sud.saveSupplier_Customer(sc);
	}
	
	public List<Supplier_Customer> list(){
		return sud.listSupplier_Customer();
	}

}
