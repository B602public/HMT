package com.hanmote.dao;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.hanmote.entity.FinanceInfo;
import com.hanmote.entity.TUser;

@Repository
public class FinanceInfoDao extends BaseDaoImpl<FinanceInfo> implements IFinanceInfoDao{

	@Override
	public void modify(FinanceInfo f) {
		super.update(f);
	}

	@Override
	public FinanceInfo findByUserName(String userName) {
		String hql = "from TUser";
		String whereStr = " where userName=:userName";
		Query q = this.getCurrentSession().createQuery(hql + whereStr);
		q.setParameter("userName", userName);
		TUser u = (TUser)q.uniqueResult();
//		String hql2 ="from OrganizationInfo";
//		String whereStr2 = " where cid=:cid";
//		q.setParameter("cid", u.getOrganizationInfo())
		
		return new FinanceInfo();
	}
	
}
