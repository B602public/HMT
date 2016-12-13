package com.hanmote.service;

import com.hanmote.entity.PageDataGrid;
import com.hanmote.pagemodel.SummaryDemand;

public interface IOrderService {
	PageDataGrid datagrid(SummaryDemand sd);
	PageDataGrid confirmDatagrid(SummaryDemand sd);
}
