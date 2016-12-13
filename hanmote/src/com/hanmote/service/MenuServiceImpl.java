package com.hanmote.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.hanmote.dao.IMenuDao;
import com.hanmote.entity.TMenu;
import com.hanmote.pagemodel.Menu;

/**
 * 菜单功能servcie类
 * @author David
 * 
 */
@Service("menuService")
public class MenuServiceImpl implements IMenuService {
	
	private IMenuDao menuDao;
	
	public IMenuDao getMenuDao() {
		return menuDao;
	}

	@Resource
	public void setMenuDao(IMenuDao menuDao) {
		this.menuDao = menuDao;
	}

	@Override
	public List<Menu> getTreeNode(String id) {
		List<Menu> nl = new ArrayList<Menu>();
		String hql = null;
		Map<String, Object> params = new HashMap<String, Object>();
		if (id == null || id.equals("")) {
			// 查询所有根节点
			hql = "from TMenu t where t.TMenu=null";
		} else {
			// 异步加载当前id下的子节点
			hql = "from TMenu t where t.TMenu.id = :id ";
			params.put("id", id);
		}
		List<TMenu> l = menuDao.find(hql, params);
		if (l != null && l.size() > 0) {
			for (TMenu t : l) {
				Menu m = new Menu();
				BeanUtils.copyProperties(t, m);
				Set<TMenu> set = t.getMenus();
				if (set != null && !set.isEmpty()) {
					m.setState("closed");// 节点以文件夹的形式体现
				} else {
					m.setState("open");// 节点以文件的形式体现
				}
				nl.add(m);
			}
		}
		return nl;
	}

	@Override
	public List<Menu> getAllTreeNode() {
		List<Menu> nl = new ArrayList<Menu>();
		String hql = "from TMenu t order by mid";
		List<TMenu> l = menuDao.find(hql);
		if (l != null && l.size() > 0) {
			for (TMenu t : l) {
				Menu m = new Menu();
				BeanUtils.copyProperties(t, m);
				Map<String, Object> attributes = new HashMap<String, Object>();
				attributes.put("url", t.getUrl());
				m.setAttributes(attributes);
				TMenu tm = t.getMenu();// 获得当前节点的父节点对象
				if (tm != null) {
					m.setPid(tm.getMid());
				}
				nl.add(m);
			}
		}
		return nl;
	}


}
