package com.hanmote.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanmote.dao.IFinanceInfoDao;
import com.hanmote.entity.FinanceInfo;

@Service
public class FinanceInfoServiceImpl implements IFinanceInfoService{

	private IFinanceInfoDao financeInfoDao;
	
	
	
	public IFinanceInfoDao getFinanceInfoDao() {
		return financeInfoDao;
	}
	@Resource
	public void setFinanceInfoDao(IFinanceInfoDao financeInfoDao) {
		this.financeInfoDao = financeInfoDao;
	}

	@Override
	public void add(FinanceInfo f) {
		financeInfoDao.save(f);
	}
	
	@Override
	public void modify(FinanceInfo f) {
		financeInfoDao.modify(f);
	}
	@Override
	public FinanceInfo find(String userName) {
		return financeInfoDao.findByUserName(userName);
	}
}
