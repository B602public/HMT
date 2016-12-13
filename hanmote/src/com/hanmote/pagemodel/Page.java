package com.hanmote.pagemodel;

public class Page {
	
	private int curPage; //当前页
	private int rows;  //每页多少条记录
	private String sortField = null; //排序字段
	private String order = null; //按什么排序（asc desc）
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
	}
	public String getSortField() {
		return sortField;
	}
	public void setSortField(String sortField) {
		this.sortField = sortField;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	
	
}
