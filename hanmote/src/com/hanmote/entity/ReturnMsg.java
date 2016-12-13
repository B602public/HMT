package com.hanmote.entity;

/**
 * 
 * 返回信息实体类，用于提交表单等操作后的提示信息。
 * @author david
 *
 */
public class ReturnMsg {
	//提示信息
	private String message;
	//操作是否成功
	private boolean success = false;
	
	private Object obj;
	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}
	
	
}
