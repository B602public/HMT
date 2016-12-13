package com.hanmote.action;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hanmote.entity.ReturnMsg;
import com.hanmote.pagemodel.User;
import com.hanmote.service.IUserService;
import com.opensymphony.xwork2.ModelDriven;
@Controller("loginAction")
@Scope("prototype")
public class LoginAction extends BaseAction implements ModelDriven<User>{

	
	private IUserService userService;
	private User user;
	
	public IUserService getUserService() {
		return userService;
	}

	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	@Override
	public User getModel() {
		if(user == null)	
			user = new User();
		return user;
	}
	
	
	public void login() {
		User u = userService.login(user);
		ReturnMsg rm = new ReturnMsg();
		if (u != null) {
			rm.setSuccess(true);
			rm.setMessage("登陆成功！");
			rm.setObj(u);
			ServletActionContext.getRequest().getSession().setAttribute("user", u);
		} else{
			rm.setMessage("登录失败，用户名或密码错误！");
		}
		super.writeJson(rm);
	}
	
	public String loginsuc(){
		return "success";
	}
	public String list(){
		return "success";
	}
	public String tools(){
		return "success";
	}
	
	
}
