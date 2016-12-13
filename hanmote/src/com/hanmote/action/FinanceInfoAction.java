package com.hanmote.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hanmote.entity.FinanceInfo;
import com.hanmote.entity.OrganizationInfo;
import com.hanmote.entity.ReturnMsg;
import com.hanmote.pagemodel.User;
import com.hanmote.service.IFinanceInfoService;
import com.opensymphony.xwork2.ModelDriven;

@Controller("financeInfoAction")
@Scope("prototype")
public class FinanceInfoAction extends BaseAction implements ModelDriven<FinanceInfo>{
	private FinanceInfo fi = null;
	private IFinanceInfoService financeInfoService;
	
	
	
	public IFinanceInfoService getFinanceInfoService() {
		return financeInfoService;
	}

	@Resource
	public void setFinanceInfoService(IFinanceInfoService financeInfoService) {
		this.financeInfoService = financeInfoService;
	}
	
	
	public String list(){
		ReturnMsg rm = new ReturnMsg();
		User u = (User)this.getSession().getAttribute("user");
		String name = u.getUserName();
		FinanceInfo f = financeInfoService.find(name);
		rm.setObj(f);
		super.writeMsg(rm);
		return "success";
	}
	
	
	/**
	 * 调转到输入财务信息的方法
	 */
	public String addInput(){
		return "success";
	}
	
	/**
	 * 保存财务信息的方法
	 */
	public String add(){
		return "success";
	}
	
	public void modify(){
		ReturnMsg rm = new ReturnMsg();
		try{
			financeInfoService.modify(fi);
			rm.setSuccess(true);
			rm.setMessage("修改成功");
		}catch(Exception e){
			rm.setSuccess(false);
			rm.setMessage("修改失败");
		}
		super.writeJson(rm);
	}
	
	@Override
	public FinanceInfo getModel() {
		if(fi == null){
			fi = new FinanceInfo();
		}
		return fi;
	}
	
	
	
}
