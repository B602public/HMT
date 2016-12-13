package com.hanmote.service;

import com.hanmote.entity.OrgCapacity;


public interface ICapacityInfoService {
	/**
	 * 保存产能信息
	 * @param o
	 */
	void saveInfo(OrgCapacity o);
	void modifyInfo(OrgCapacity o);
	OrgCapacity find(String userName);
}
