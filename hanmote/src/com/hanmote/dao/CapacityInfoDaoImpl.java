package com.hanmote.dao;

import org.springframework.stereotype.Repository;

import com.hanmote.entity.OrgCapacity;

/**
 * 产能信息数据访问层实现类
 * @author Administrator
 *
 */
@Repository
public class CapacityInfoDaoImpl extends BaseDaoImpl<OrgCapacity> implements ICapacityInfoDao{

	@Override
	public void modify(OrgCapacity o) {
		super.update(o);
	}

	@Override
	public OrgCapacity findByUserName(String userName) {
		
		return null;
	}

	
}
