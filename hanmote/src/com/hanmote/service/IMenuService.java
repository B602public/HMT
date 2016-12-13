package com.hanmote.service;

import java.util.List;

import com.hanmote.pagemodel.Menu;

public interface IMenuService {
	public List<Menu> getTreeNode(String id);

	public List<Menu> getAllTreeNode();
}
