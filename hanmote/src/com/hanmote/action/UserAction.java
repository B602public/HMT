package com.hanmote.action;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSON;
import com.hanmote.entity.PageDataGrid;
import com.hanmote.entity.TUser;
import com.hanmote.service.IUserService;
import com.opensymphony.xwork2.ModelDriven;

@Controller
@Scope("prototype")
public class UserAction implements ModelDriven<TUser>{
	//使用ModelDriven时，页面对应的字段名一定要与Model完全相同。
	//ServletActionContext.getRequest().getParameter(name)
	
	private IUserService userService;
	private TUser user;
	
	
	public IUserService getUserService() {
		return userService;
	}
	
	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	public String list(){
		List<TUser> list = userService.getList();
		ServletActionContext.getRequest().setAttribute("list", list);
		return "success";
	}
	
	public void dgList(){
		PageDataGrid pdg = userService.dgList();
		String json = JSON.toJSONString(pdg);
		ServletActionContext.getResponse().setCharacterEncoding("utf-8");
		try {
			ServletActionContext.getResponse().getWriter().write(json);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public String addInput(){
		return "success";
	}
	
	public String add(){
		
		userService.add(user);	
		return "success";
	}
    
	
	
	
	@Override
	public TUser getModel() {
		if(user == null){
			user = new TUser();
		}
		return user;
	}
	/*
	public void login(){
		User u = userService.login(user.getUserName());
		ReturnMsg rm = new ReturnMsg();
		if(u!=null){
		
			if(u.getPassword().equals(user.getPassword())){
				rm.setSuccess(true);
				rm.setMsg("登陆成功");
				rm.setObj(u);
				//通过JSON转化
				String json = JSON.toJSONString(rm);
				ServletActionContext.getResponse().setCharacterEncoding("utf-8");
				ServletActionContext.getResponse().getWrite(json);
				//ServletActionContext.getRequest().getSession().setAttribute("",rm);
			}else{
				ServletActionContext.getRequest().setAttribute("msg", msg);
				rm.setSuccess(false);
				rm.setMsg("登陆失败");
			}
		}else{
			ServletActionContext.getRequest().setAttribute("msg", msg);
			rm.setSuccess(false);
			rm.setMsg("登陆失败");
		}
	}
	ReturnMsg boolean success  String msg Object obj
	*/
}
