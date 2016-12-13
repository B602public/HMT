package com.hanmote.entity;

import java.util.ArrayList;
import java.util.List;

/**
 * 适应easyui封装page
 * @author Administrator
 *
 */
public class PageDataGrid {
	private Long total;
	private List rows = new ArrayList();
	public Long getTotal() {
		return total;
	}
	public void setTotal(Long total) {
		this.total = total;
	}
	public List getRows() {
		return rows;
	}
	public void setRows(List rows) {
		this.rows = rows;
	}
	
}
