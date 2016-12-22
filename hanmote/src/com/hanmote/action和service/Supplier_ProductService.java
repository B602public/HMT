package com.hanmote.service;

import java.util.List;

import com.hanmote.dao.Supplier_ProductDao;
import com.hanmote.entity.Supplier_Product;

public class Supplier_ProductService {
	
	private Supplier_ProductDao spd;

	public Supplier_ProductDao getSpd() {
		return spd;
	}

	public void setSpd(Supplier_ProductDao spd) {
		this.spd = spd;
	}
	
	public void save(Supplier_Product sp){
		spd.saveSupplier_Product(sp);
	}
	
	public void delete(Supplier_Product sp){
		spd.deleteSupplier_Product(sp);
	}
	
	public void update(Supplier_Product sp){
		spd.updateSupplier_Product(sp);
	}
	
	public void get(Supplier_Product sp){
		spd.saveSupplier_Product(sp);
	}
	
	public List<Supplier_Product> list(){
		return spd.listSupplier_Product();
	}

}
