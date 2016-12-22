package com.hanmote.action;

import java.util.List;

import com.hanmote.dao.Supplier_CustomerDao;
import com.hanmote.entity.Supplier_Customer;
import com.hanmote.entity.Supplier_Turnover_Record;
import com.hanmote.service.Supplier_CustomerService;

public class Supplier_CustomerAction {
	
	private Supplier_CustomerService scs;
	private Supplier_Customer sc;
	
	
	public Supplier_CustomerService getScs() {
		return scs;
	}
	public void setScs(Supplier_CustomerService scs) {
		this.scs = scs;
	}
	public Supplier_Customer getSc() {
		return sc;
	}
	public void setSc(Supplier_Customer sc) {
		this.sc = sc;
	}
	
	public String save(){
		scs.save(sc);
		return null;
	}
	
	public String delete(){
		scs.delete(sc);
		return null;
	}
	
	public String update(){
		scs.update(sc);
		return null;
	}
	
	public String get(){
		scs.get(sc);
		return null;
	}
	
	public String list(){
		List<Supplier_Customer> list = scs.list();
		return null;
	}

}
