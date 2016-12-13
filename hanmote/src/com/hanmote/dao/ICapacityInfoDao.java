package com.hanmote.dao;

import com.hanmote.entity.OrgCapacity;

/**
 * 组织信息数据访问层接口
 * @author Administrator
 *
 */
public interface ICapacityInfoDao extends IBaseDao<OrgCapacity>{
	void modify(OrgCapacity o);
	OrgCapacity findByUserName(String userName);
}
