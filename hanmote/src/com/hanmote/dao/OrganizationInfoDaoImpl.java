package com.hanmote.dao;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.hanmote.entity.OrganizationInfo;
import com.hanmote.entity.TUser;

/**
 * 组织信息数据访问层实现类
 * @author Administrator
 *
 */
@Repository
public class OrganizationInfoDaoImpl extends BaseDaoImpl<OrganizationInfo> implements IOrganizationInfoDao{

	@Override
	public void modify(OrganizationInfo o) {
		super.update(o);
	}

	@Override
	public OrganizationInfo findByUserName(String userName) {
		String hql = "from TUser";
		String whereStr = " where userName=:userName";
		Query q = this.getCurrentSession().createQuery(hql + whereStr);
		q.setParameter("userName", userName);
		TUser u = (TUser)q.uniqueResult();

		return u.getOrganizationInfo();
	}
	

}
