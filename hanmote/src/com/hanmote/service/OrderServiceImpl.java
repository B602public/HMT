package com.hanmote.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.hanmote.dao.IOrderDao;
import com.hanmote.entity.PageDataGrid;
import com.hanmote.entity.TSummaryDemand;
import com.hanmote.pagemodel.SummaryDemand;

@Service
public class OrderServiceImpl implements IOrderService{

	private IOrderDao orderDao;
	
	
	public IOrderDao getAgreementDao() {
		return orderDao;
	}

	@Resource
	public void setOrderDaoDao(IOrderDao orderDao) {
		this.orderDao = orderDao;
	}

	@Override
	public PageDataGrid datagrid(SummaryDemand sd) {
		PageDataGrid pdg = new PageDataGrid();
		String hql = "from TSummaryDemand t where 1=1";
		Map<String, Object> params = new HashMap<String, Object>();
		hql = addWhere(sd, hql, params);
		String totalHql = "select count(*) " + hql;
		hql = addOrder(sd, hql);
		List<TSummaryDemand> l = orderDao.find(hql, params, sd.getPage().getCurPage(), sd.getPage().getRows());
		List<SummaryDemand> nl = new ArrayList<SummaryDemand>();
		changeModel(l, nl);
		pdg.setTotal(orderDao.count(totalHql, params));
		pdg.setRows(nl);
		return pdg;
	}
	
	private void changeModel(List<TSummaryDemand> l, List<SummaryDemand> nl) {
		if (l != null && l.size() > 0) {
			for (TSummaryDemand t : l) {
				SummaryDemand sd = new SummaryDemand();
				BeanUtils.copyProperties(t, sd);
				nl.add(sd);
			}
		}
	}

	private String addOrder(SummaryDemand sd, String hql) {
		if (sd.getPage().getOrder() != null) {
			hql += " order by " + sd.getPage().getSortField() + " " + sd.getPage().getOrder();
		}
		return hql;
	}

	private String addWhere(SummaryDemand sd, String hql, Map<String, Object> params) {
		if (sd.getDemandId() != null && !sd.getDemandId().trim().equals("")) {
			hql += " and t.demandId like :demandId";
			params.put("demandId", "%%" + sd.getDemandId().trim() + "%%");
		}
//		if(sd.getAgreementContractType() != null &&!sd.getAgreementContractType().trim().equals("")){
//			if(params == null||params.size() == 0){
//				hql += " where t.agreementContractType=:agreementContractType";
//			}else{
//				hql += " and t.agreementContractType=:agreementContractType";
//			}
//			params.put("agreementContractType", sd.getAgreementContractType().trim());
//		}
		//添加申请日期的搜索
		if(sd.getStartDate()!=null && sd.getEndDate()!=null){
			//102 代表'yyyy-mm-dd'
			hql += " and t.applyDate between (CONVERT(datetime,'"+sd.getStartDate()+"',102)) and CONVERT(datetime,'"+sd.getEndDate()+"',102)";
		}
		return hql;
	}

	@Override
	public PageDataGrid confirmDatagrid(SummaryDemand sd) {
		PageDataGrid pdg = new PageDataGrid();
		String hql = "from TSummaryDemand t where t.state='审核通过'";
		Map<String, Object> params = new HashMap<String, Object>();
		hql = addWhere(sd, hql, params);
		String totalHql = "select count(*) " + hql;
		hql = addOrder(sd, hql);
		List<TSummaryDemand> l = orderDao.find(hql, params, sd.getPage().getCurPage(), sd.getPage().getRows());
		List<SummaryDemand> nl = new ArrayList<SummaryDemand>();
		changeModel(l, nl);
		pdg.setTotal(orderDao.count(totalHql, params));
		pdg.setRows(nl);
		return pdg;
	}

}
