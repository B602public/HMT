package com.hanmote.service;

import com.hanmote.entity.PageDataGrid;
import com.hanmote.pagemodel.AgreementContract;

public interface IAgreementService {
	PageDataGrid datagrid(AgreementContract ac);
	void modify(AgreementContract ac);
}
