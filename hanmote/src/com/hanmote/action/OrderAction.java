package com.hanmote.action;



import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hanmote.pagemodel.SummaryDemand;
import com.hanmote.service.IOrderService;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class OrderAction extends BaseAction implements ModelDriven<SummaryDemand>{
	
	private IOrderService orderService;
	private SummaryDemand obj = null;
	
	
	
	public IOrderService getOrderService() {
		return orderService;
	}
	@Resource
	public void setOrderService(IOrderService orderService) {
		this.orderService = orderService;
	}

	public void datagrid(){
		//page rows的设置
		int page = Integer.parseInt(ServletActionContext.getRequest().getParameter("page"));
		int rows = Integer.parseInt(ServletActionContext.getRequest().getParameter("rows"));
		obj.getPage().setCurPage(page);
		obj.getPage().setRows(rows);
		super.writeJson(orderService.datagrid(obj));
	}
	
	public void confirmDatagrid(){
		//page rows的设置
		int page = Integer.parseInt(ServletActionContext.getRequest().getParameter("page"));
		int rows = Integer.parseInt(ServletActionContext.getRequest().getParameter("rows"));
		obj.getPage().setCurPage(page);
		obj.getPage().setRows(rows);
		super.writeJson(orderService.confirmDatagrid(obj));
	}

	@Override
	public SummaryDemand getModel() {
		if(obj == null){
			obj = new SummaryDemand();
		}
		return obj;
	}
	
}
