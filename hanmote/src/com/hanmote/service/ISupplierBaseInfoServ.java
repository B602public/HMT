package com.hanmote.service;

import com.hanmote.entity.CompanyBaseInfo;

public interface ISupplierBaseInfoServ {
	void save(CompanyBaseInfo sbi);
	CompanyBaseInfo find(String supplierName);
}
