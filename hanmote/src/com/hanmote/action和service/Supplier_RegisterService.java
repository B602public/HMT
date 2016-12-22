package com.hanmote.service;

import java.util.List;

import com.hanmote.dao.Supplier_RegisterDao;
import com.hanmote.entity.Supplier_Register;

public class Supplier_RegisterService {
	
	private Supplier_RegisterDao srd;

	public Supplier_RegisterDao getSupplier_registerDao() {
		return srd;
	}

	public void setSupplier_registerDao(Supplier_RegisterDao supplier_registerDao) {
		this.srd = srd;
	}
	
	public void save(Supplier_Register sr){
		srd.saveSupplier_Register(sr);
	}
	
	public void delete(Supplier_Register sr){
		srd.deleteSupplier_Register(sr);
	}
	
	public void update(Supplier_Register sr){
		srd.updateSupplier_Register(sr);
	}
	
	public void get(Supplier_Register sr){
		srd.saveSupplier_Register(sr);
	}
	
	public List<Supplier_Register> list(){
		return srd.listSupplier_Register();
	}

}
