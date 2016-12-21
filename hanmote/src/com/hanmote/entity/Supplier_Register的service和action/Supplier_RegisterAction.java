package com.hanmote.action;

import com.hanmote.entity.Supplier_Register;
import com.hanmote.service.Supplier_RegisterService;

public class Supplier_RegisterAction {
	
	private Supplier_RegisterService srs;
	private Supplier_Register sr;
	
	public Supplier_RegisterService getSupplier_registerservice() {
		return srs;
	}
	public void setSupplier_registerservice(
			Supplier_RegisterService supplier_registerservice) {
		this.srs = supplier_registerservice;
	}
	public Supplier_Register getSupplier_register() {
		return sr;
	}
	public void setSupplier_register(Supplier_Register supplier_register) {
		this.sr = supplier_register;
	}
	
	public String save(){
		srs.save(sr);
		return null;
	}
	
	public String delete(){
		srs.delete(sr);
		return null;
	}
	
	public String update(){
		srs.update(sr);
		return null;
	}
	
	public String get(){
		srs.get(sr);
		return null;
	}
	
	public String list(){
		srs.list();
		return null;
	}

}
