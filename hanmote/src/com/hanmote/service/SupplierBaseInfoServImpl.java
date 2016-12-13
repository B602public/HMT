package com.hanmote.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanmote.dao.ISupplierBaseInfoDao;
import com.hanmote.entity.CompanyBaseInfo;

@Service("supplierBaseInfoServ")
public class SupplierBaseInfoServImpl implements ISupplierBaseInfoServ{
	
	private ISupplierBaseInfoDao supplierBaseInfoDao;
	
	
	
	public ISupplierBaseInfoDao getSupplierBaseInfoDao() {
		return supplierBaseInfoDao;
	}

	@Resource
	public void setSupplierBaseInfoDao(ISupplierBaseInfoDao supplierBaseInfoDao) {
		this.supplierBaseInfoDao = supplierBaseInfoDao;
	}

	@Override
	public void save(CompanyBaseInfo sbi) {
		supplierBaseInfoDao.save(sbi);
	}

	@Override
	public CompanyBaseInfo find(String supplierName) {
		return null;
	}

}
