package com.hanmote.action;

import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.alibaba.fastjson.JSON;
import com.opensymphony.xwork2.ActionContext;

public class BaseAction{
	private HttpServletRequest request = null;
	
	public HttpServletRequest getRequest() {
		return request;
	}
	@Resource
	public void setRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String opreateSuccess(){
		return "opreate_success";
	}
	
	public String opreateError(){
	    return "opreate_error";
	}
	/**
	 * 写入JSON  与easyui交互
	 * @param object
	 */
	public void writeJson(Object object) {
		try {
			String json = JSON.toJSONStringWithDateFormat(object, "yyyy-MM-dd HH:mm:ss");
			ServletActionContext.getResponse().setContentType("text/html;charset=utf-8");
			ServletActionContext.getResponse().getWriter().write(json);
			ServletActionContext.getResponse().getWriter().flush();
			ServletActionContext.getResponse().getWriter().close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 向request中写入obj
	 * @param obj
	 */
	public void writeMsg(Object obj){
		ServletActionContext.getRequest().setAttribute("rm", obj);
	}
	
	
	public HttpSession getSession(){
		return ServletActionContext.getRequest().getSession();
	}
	/**
	 * 向Session中存入对象
	 * @param attrName
	 * @param obj
	 */
	public void setAttributeInSession(String attrName,Object obj){
		HttpSession hs = this.getSession();
		hs.setAttribute(attrName, obj);
	}
}
