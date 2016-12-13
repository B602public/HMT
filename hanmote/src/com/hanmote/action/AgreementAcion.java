package com.hanmote.action;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hanmote.entity.ReturnMsg;
import com.hanmote.pagemodel.AgreementContract;
import com.hanmote.pagemodel.Page;
import com.hanmote.service.IAgreementService;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class AgreementAcion extends BaseAction implements ModelDriven<AgreementContract>{
	
	private IAgreementService agreementService;
	private AgreementContract obj = null;
	
	private String sort;
	private String order;
	
	
	
	public String getSort() {
		return sort;
	}
	public void setSort(String sort) {
		this.sort = sort;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	public IAgreementService getAgreementService() {
		return agreementService;
	}
	@Resource
	public void setAgreementService(IAgreementService agreementService) {
		this.agreementService = agreementService;
	}

	public void datagrid(){
		//page rows的设置
		int page = Integer.parseInt(ServletActionContext.getRequest().getParameter("page"));
		int rows = Integer.parseInt(ServletActionContext.getRequest().getParameter("rows"));
		obj.getPage().setCurPage(page);
		obj.getPage().setRows(rows);
		obj.getPage().setSortField(sort);
		obj.getPage().setOrder(order);
		super.writeJson(agreementService.datagrid(obj));
	}
	
	public String list(){
		return "success";
	}
	
	public void modify(){
		ReturnMsg rm = new ReturnMsg();
		try{
			agreementService.modify(obj);
			rm.setSuccess(true);
			rm.setMessage("");
		}catch(Exception e){
			e.printStackTrace();
		}
		super.writeJson(rm);
	}

	@Override
	public AgreementContract getModel() {
		if(obj == null){
			obj = new AgreementContract();
		}
		return obj;
	}
}
