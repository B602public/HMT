package com.hanmote.action;

import java.util.List;

import com.hanmote.entity.Supplier_Register;
import com.hanmote.entity.Supplier_Turnover_Record;
import com.hanmote.service.Supplier_RegisterService;

public class Supplier_RegisterAction {
	
	private Supplier_RegisterService srs;
	private Supplier_Register sr;
	
	
	
	public Supplier_RegisterService getSrs() {
		return srs;
	}

	public void setSrs(Supplier_RegisterService srs) {
		this.srs = srs;
	}

	public Supplier_Register getSr() {
		return sr;
	}

	public void setSr(Supplier_Register sr) {
		this.sr = sr;
	}

	public String save(){
		System.out.println("000000000000000");
		srs.save(sr);
		System.out.println("已保存");
		return "save";
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
		List<Supplier_Register> list = srs.list();
		return null;
	}

}
