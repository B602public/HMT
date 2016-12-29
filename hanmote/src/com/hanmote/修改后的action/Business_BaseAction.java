package com.hanmote.action;

import java.util.List;

import com.hanmote.entity.Business_Base;
import com.hanmote.service.Business_BaseService;

public class Business_BaseAction {
	
	private Business_BaseService bbs;
	private Business_Base bb;
	
	public Business_BaseService getBbs() {
		return bbs;
	}
	public void setBbs(Business_BaseService bbs) {
		this.bbs = bbs;
	}
	public Business_Base getBb() {
		return bb;
	}
	public void setBb(Business_Base bb) {
		this.bb = bb;
	}
	
	public String save(Business_Base bb){
		bbs.save(bb);
		return null;
	}
	
	public String delete(Business_Base bb){
		bbs.delete(bb);
		return null;
	}
	
	public String update(Business_Base bb){
		bbs.update(bb);
		return null;
	}
	
	public String get(Business_Base bb){
		bbs.get(bb);
		return null;
	}
	
	public String list(){
		List<Business_Base> list = bbs.list();
		return null;
	}

}
