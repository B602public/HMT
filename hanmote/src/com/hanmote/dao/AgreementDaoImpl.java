package com.hanmote.dao;

import org.springframework.stereotype.Repository;

import com.hanmote.entity.TAgreementContract;
@Repository
public class AgreementDaoImpl extends BaseDaoImpl<TAgreementContract> implements IAgreementDao{

	@Override
	public void modify(TAgreementContract ta) {
		super.update(ta);
	}
	
}
