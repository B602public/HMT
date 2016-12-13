package com.hanmote.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hanmote.entity.OrganizationInfo;
import com.hanmote.entity.ReturnMsg;
import com.hanmote.pagemodel.User;
import com.hanmote.service.IOrganizationInfoService;
import com.opensymphony.xwork2.ModelDriven;

@Controller("organizationInfoAction")
@Scope("prototype")
public class OrganizationInfoAction extends BaseAction implements ModelDriven<OrganizationInfo>{
	private OrganizationInfo oi = null;
	private IOrganizationInfoService organizationInfoService;
	
	public IOrganizationInfoService getOrganizationInfoService() {
		return organizationInfoService;
	}

	@Resource
	public void setOrganizationInfoService(
			IOrganizationInfoService organizationInfoService) {
		this.organizationInfoService = organizationInfoService;
	}

	/**
	 * 调转到输入供应商信息的方法
	 */
	public String addInput(){
		return "success";
	}
	
	/**
	 * 保存供应商信息的方法
	 */
	public String add(){
		ReturnMsg rm = new ReturnMsg();
		try{
			organizationInfoService.saveInfo(oi);
			rm.setSuccess(true);
			rm.setMessage("保存成功！");
		}catch(Exception e){
			e.printStackTrace();
			rm.setMessage("保存失败！");
		}
		super.writeMsg(rm);
		return "success";
	}
	
	/**
	 * 修改组织信息的页面跳转方法
	 * @return
	 */
	public String modifyInput(){
		return "success";
	}
	
	public String list(){
		ReturnMsg rm = new ReturnMsg();
		User u = (User)this.getSession().getAttribute("user");
		String name = u.getUserName();
		OrganizationInfo org = organizationInfoService.find(name);
		rm.setObj(org);
		super.writeMsg(rm);
		return "success";
	}
	
	/**
	 * 修改组织信息
	 */
	public void modify(){
		ReturnMsg rm = new ReturnMsg();
		try{
			organizationInfoService.modifyInfo(oi);
			rm.setSuccess(true);
			rm.setMessage("修改成功！");
		}catch(Exception e){
			rm.setMessage("修改失败！");
		}
		super.writeJson(rm);
	}
	
	@Override
	public OrganizationInfo getModel() {
		if(oi == null){
			oi = new OrganizationInfo();
		}
		return oi;
	}
}
