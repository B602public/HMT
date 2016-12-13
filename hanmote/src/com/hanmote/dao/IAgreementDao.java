package com.hanmote.dao;

import com.hanmote.entity.TAgreementContract;

public interface IAgreementDao extends IBaseDao<TAgreementContract>{
	void modify(TAgreementContract ta);
}
