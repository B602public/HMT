package com.hanmote.service;

import java.util.List;

import com.hanmote.dao.Business_BaseDao;
import com.hanmote.entity.Business_Base;

public class Business_BaseService {
	
	private Business_BaseDao bbd;

	public Business_BaseDao getBbd() {
		return bbd;
	}

	public void setBbd(Business_BaseDao bbd) {
		this.bbd = bbd;
	}
	
	public void save(Business_Base bb){
		bbd.saveBusiness_Base(bb);
	}
	
	public void delete(Business_Base bb){
		bbd.deleteBusiness_Base(bb);
	}
	
	public void update(Business_Base bb){
		bbd.updateBusiness_Base(bb);
	}
	
	public Business_Base get(Business_Base bb){
		return bbd.getBusiness_Base(bb);
	}
	
	public List<Business_Base> list(){
		return bbd.listBusiness_Base();
	}

}
