package com.hanmote.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanmote.dao.IOrganizationInfoDao;
import com.hanmote.entity.OrganizationInfo;

@Service
public class OrganizationInfoServiceImpl implements IOrganizationInfoService{

	private IOrganizationInfoDao organizationInfoDao;
	
	
	public IOrganizationInfoDao getOrganizationInfoDao() {
		return organizationInfoDao;
	}

	@Resource
	public void setOrganizationInfoDao(IOrganizationInfoDao organizationInfoDao) {
		this.organizationInfoDao = organizationInfoDao;
	}

	/**
	 * 保存组织信息
	 */
	@Override
	public void saveInfo(OrganizationInfo o) {
		organizationInfoDao.save(o);
	}

	@Override
	public void modifyInfo(OrganizationInfo o) {
		organizationInfoDao.modify(o);
	}

	@Override
	public OrganizationInfo find(String userName) {
	    return organizationInfoDao.findByUserName(userName);
	}
}
