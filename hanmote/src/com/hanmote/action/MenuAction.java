package com.hanmote.action;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.hanmote.pagemodel.Menu;
import com.hanmote.service.IMenuService;
import com.opensymphony.xwork2.ModelDriven;

@Controller("menuAction")
@Scope("prototype")
public class MenuAction extends BaseAction implements ModelDriven<Menu>{

	private IMenuService menuService;
	private Menu menu ;
	
	
	
	public IMenuService getMenuService() {
		return menuService;
	}

	@Resource
	public void setMenuService(IMenuService menuService) {
		this.menuService = menuService;
	}

	/**
	 * 异步获取树节点
	 */
	public void getTreeNode() {
		super.writeJson(menuService.getTreeNode(menu.getMid()));
		
	}
	/**
	 * 一次加载树节点
	 */
	public void getAllTreeNode() {
		super.writeJson(menuService.getAllTreeNode());
	}
	
	@Override
	public Menu getModel() {
		if(menu == null){
			menu = new Menu();
		}
		return menu;
	}

}
