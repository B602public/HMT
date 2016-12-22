package com.hanmote.action;

import java.util.List;

import com.hanmote.entity.Supplier_Facility;
import com.hanmote.entity.Supplier_Turnover_Record;
import com.hanmote.service.Supplier_FacilityService;

public class Supplier_FacilityAction {
	
	private Supplier_FacilityService sfs;
	private Supplier_Facility sf;
	
	public Supplier_FacilityService getSfs() {
		return sfs;
	}
	
	public void setSfs(Supplier_FacilityService sfs) {
		this.sfs = sfs;
	}
	
	public Supplier_Facility getSf() {
		return sf;
	}
	
	public void setSf(Supplier_Facility sf) {
		this.sf = sf;
	}
	
	public String save(){
		sfs.save(sf);
		return null;
	}
	
	public String delete(){
		sfs.delete(sf);
		return null;
	}
	
	public String update(){
		sfs.update(sf);
		return null;
	}
	
	public String get(){
		sfs.get(sf);
		return null;
	}
	
	public String list(){
		List<Supplier_Facility> list = sfs.list();
		return null;
	}
	

}
