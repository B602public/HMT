package com.hanmote.action;

import java.util.List;

import com.hanmote.entity.Supplier_Turnover_Record;
import com.hanmote.service.Supplier_Turnover_RecordService;

public class Supplier_Turnover_RecordAction {
	
	private Supplier_Turnover_RecordService strs;
	private Supplier_Turnover_Record str;
	
	public Supplier_Turnover_RecordService getStrs() {
		return strs;
	}
	public void setStrs(Supplier_Turnover_RecordService strs) {
		this.strs = strs;
	}
	public Supplier_Turnover_Record getStr() {
		return str;
	}
	public void setStr(Supplier_Turnover_Record str) {
		this.str = str;
	}
	
	public String save(Supplier_Turnover_Record str){
		strs.save(str);
		return null;
	}
	
	public String delete(Supplier_Turnover_Record str){
		strs.delete(str);
		return null;
	}
	
	public String update(Supplier_Turnover_Record str){
		strs.update(str);
		return null;
	}
	
	public String get(Supplier_Turnover_Record str){
		strs.get(str);
		return null;
	}
	
	public String list(){
		List<Supplier_Turnover_Record> list = strs.list();
		return null;
	}

}
