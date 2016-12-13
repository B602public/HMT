package com.hanmote.pagemodel;

import java.util.Map;

/**
 * pageModel中的Menu实体类
 * @author Administrator
 *
 */
public class Menu {

	private String state;
	private String pid;
	private String ptext;
	private Map<String, Object> attributes;

	public Map<String, Object> getAttributes() {
		return attributes;
	}

	public void setAttributes(Map<String, Object> attributes) {
		this.attributes = attributes;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPtext() {
		return ptext;
	}

	public void setPtext(String ptext) {
		this.ptext = ptext;
	}

	private String mid;
	private String menutext;
	private String iconcls;

	public String getMid() {
		return mid;
	}

	public void setMid(String mid) {
		this.mid = mid;
	}

	public String getMenutext() {
		return menutext;
	}

	public void setMenutext(String menutext) {
		this.menutext = menutext;
	}

	public String getIconcls() {
		return iconcls;
	}

	public void setIconcls(String iconcls) {
		this.iconcls = iconcls;
	}

	
}