package com.hanmote.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.hanmote.dao.IAgreementDao;
import com.hanmote.entity.AgreementContractId;
import com.hanmote.entity.PageDataGrid;
import com.hanmote.entity.TAgreementContract;
import com.hanmote.pagemodel.AgreementContract;

@Service
public class AgreementServiceImpl implements IAgreementService{

	private IAgreementDao agreementDao;
	
	
	
	public IAgreementDao getAgreementDao() {
		return agreementDao;
	}

	@Resource
	public void setAgreementDao(IAgreementDao agreementDao) {
		this.agreementDao = agreementDao;
	}

	@Override
	public PageDataGrid datagrid(AgreementContract ac) {
		PageDataGrid pdg = new PageDataGrid();
		//添加where 1=1为了方便添加多个查询条件
		String hql = "from TAgreementContract t where 1=1";
		Map<String, Object> params = new HashMap<String, Object>();
		hql = addWhere(ac, hql, params);
		String totalHql = "select count(*) " + hql;
		hql = addOrder(ac, hql);
		List<TAgreementContract> l = agreementDao.find(hql, params, ac.getPage().getCurPage(), ac.getPage().getRows());
		List<AgreementContract> nl = new ArrayList<AgreementContract>();
		changeModel(l, nl);
		pdg.setTotal(agreementDao.count(totalHql, params));
		pdg.setRows(nl);
		return pdg;
	}
	
	private void changeModel(List<TAgreementContract> l, List<AgreementContract> nl) {
		if (l != null && l.size() > 0) {
			for (TAgreementContract t : l) {
				AgreementContract ac = new AgreementContract();
				BeanUtils.copyProperties(t, ac);
				//设置id,和version 属性
				ac.setAgreementContractId(t.getId().getAgreementContractId());
				ac.setAgreementContractVersion(t.getId().getAgreementContractVersion());
				nl.add(ac);
			}
		}
	}

	private String addOrder(AgreementContract ac, String hql) {
		if (ac.getPage().getOrder() != null  && ac.getPage().getSortField() != null) {
			if(ac.getPage().getSortField().equals("agreementContractId")){
				hql += " order by t.id."+ ac.getPage().getSortField()  + " " + ac.getPage().getOrder();
			}	
			else{
				hql += " order by " + ac.getPage().getSortField() + " " + ac.getPage().getOrder();
			}
		}
		return hql;
	}

	private String addWhere(AgreementContract ac, String hql, Map<String, Object> params) {
		if (ac.getAgreementContractId() != null && !ac.getAgreementContractId().trim().equals("")) {
			hql += " and t.id.agreementContractId like :agreementContractId";
			params.put("agreementContractId", "%%" + ac.getAgreementContractId().trim() + "%%");
		}
		if(ac.getAgreementContractType() != null && !ac.getAgreementContractType().trim().equals("")){
			hql += " and t.agreementContractType=:agreementContractType";
			params.put("agreementContractType", ac.getAgreementContractType().trim());
		}
		if(ac.getStatus()!=null && !ac.getStatus().trim().equals("")){
			hql += " and t.status=:status";
			params.put("status", ac.getStatus());
		}
		return hql;
	}

	@Override
	public void modify(AgreementContract ac) {
		TAgreementContract ta = new TAgreementContract();
		BeanUtils.copyProperties(ac,ta);
		AgreementContractId id = new AgreementContractId();
		id.setAgreementContractId(ac.getAgreementContractId());
		id.setAgreementContractVersion(ac.getAgreementContractVersion());
		ta.setId(id);
		
		agreementDao.modify(ta);
	}

}
