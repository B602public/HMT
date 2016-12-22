package com.hanmote.service;

import java.util.List;

import com.hanmote.dao.Supplier_Turnover_RecordDao;
import com.hanmote.entity.Supplier_Turnover_Record;

public class Supplier_Turnover_RecordService {
	
	private Supplier_Turnover_RecordDao strd;

	public Supplier_Turnover_RecordDao getStrd() {
		return strd;
	}

	public void setStrd(Supplier_Turnover_RecordDao strd) {
		this.strd = strd;
	}
	
	public void save(Supplier_Turnover_Record str){
		strd.saveSupplier_Turnover_Record(str);
	}
	
	public void delete(Supplier_Turnover_Record str){
		strd.deleteSupplier_Turnover_Record(str);
	}
	
	public void update(Supplier_Turnover_Record str){
		strd.updateSupplier_Turnover_Record(str);
	}
	
	public void get(Supplier_Turnover_Record str){
		strd.getSupplier_Turnover_Record(str);
	}
	
	public List<Supplier_Turnover_Record> list(){
		return strd.listSupplier_Turnover_Record();
	}

}
