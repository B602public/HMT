package com.hanmote.dao;

import com.hanmote.entity.OrganizationInfo;

/**
 * 组织信息数据访问层接口
 * @author Administrator
 *
 */
public interface IOrganizationInfoDao extends IBaseDao<OrganizationInfo>{
	void modify(OrganizationInfo o);
	OrganizationInfo findByUserName(String userName);
}
