package com.hanmote.service;

import java.util.List;

import com.hanmote.dao.Supplier_FacilityDao;
import com.hanmote.entity.Supplier_Facility;
import com.hanmote.entity.Supplier_Register;

public class Supplier_FacilityService {
	
	private Supplier_FacilityDao sfd;

	public Supplier_FacilityDao getSfd() {
		return sfd;
	}

	public void setSfd(Supplier_FacilityDao sfd) {
		this.sfd = sfd;
	}
	
	public void save(Supplier_Facility sf){
		sfd.saveSupplier_Facility(sf);
	}
	
	public void delete(Supplier_Facility sf){
		sfd.deleteSupplier_Facility(sf);
	}
	
	public void update(Supplier_Facility sf){
		sfd.updateSupplier_Facility(sf);
	}
	
	public void get(Supplier_Facility sf){
		sfd.saveSupplier_Facility(sf);
	}
	
	public List<Supplier_Facility> list(){
		return sfd.listSupplier_Facility();
	}

}
