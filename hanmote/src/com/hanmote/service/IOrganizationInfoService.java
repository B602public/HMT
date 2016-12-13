package com.hanmote.service;

import com.hanmote.entity.OrganizationInfo;

public interface IOrganizationInfoService {
	/**
	 * 保存组织信息
	 * @param o
	 */
	void saveInfo(OrganizationInfo o);
	void modifyInfo(OrganizationInfo o);
	OrganizationInfo find(String userName);
}
