package com.hanmote.dao;

import com.hanmote.entity.FinanceInfo;



public interface IFinanceInfoDao extends IBaseDao<FinanceInfo>{
	void modify(FinanceInfo f);
	FinanceInfo findByUserName(String userName);
}
