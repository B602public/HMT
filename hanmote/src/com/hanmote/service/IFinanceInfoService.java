package com.hanmote.service;

import com.hanmote.entity.FinanceInfo;

public interface IFinanceInfoService {
	void add(FinanceInfo f);
	void modify(FinanceInfo f);
	FinanceInfo find(String userName);
}
