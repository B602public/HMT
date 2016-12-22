package com.hanmote.action;

import java.util.List;

import com.hanmote.entity.Supplier_Product;
import com.hanmote.entity.Supplier_Turnover_Record;
import com.hanmote.service.Supplier_ProductService;

public class Supplier_ProductAction {
	
	private Supplier_ProductService sps;
	private Supplier_Product sp;
	
	public Supplier_ProductService getSps() {
		return sps;
	}
	public void setSps(Supplier_ProductService sps) {
		this.sps = sps;
	}
	public Supplier_Product getSp() {
		return sp;
	}
	public void setSp(Supplier_Product sp) {
		this.sp = sp;
	}
	
	public String save(Supplier_Product sp){
		sps.save(sp);
		return null;
	}
	
	public String delete(Supplier_Product sp){
		sps.delete(sp);
		return null;
	}
	
	public String update(Supplier_Product sp){
		sps.update(sp);
		return null;
	}
	
	public String get(Supplier_Product sp){
		sps.get(sp);
		return null;
	}
	
	public String list(){
		List<Supplier_Product> list = sps.list();
		return null;
	}

}
