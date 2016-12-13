package com.hanmote.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanmote.dao.ICapacityInfoDao;
import com.hanmote.entity.OrgCapacity;

@Service
public class CapacityInfoServiceImpl implements ICapacityInfoService{

	private ICapacityInfoDao capacityDao;
	
	
	public ICapacityInfoDao getCapacityDao() {
		return capacityDao;
	}

	@Resource
	public void setCapacityDao(ICapacityInfoDao capacityDao) {
		this.capacityDao = capacityDao;
	}

	@Override
	public void saveInfo(OrgCapacity o) {
		capacityDao.save(o);
	}

	@Override
	public void modifyInfo(OrgCapacity o) {
		capacityDao.modify(o);
	}

	@Override
	public OrgCapacity find(String userName) {
		return null;
	}
	
}