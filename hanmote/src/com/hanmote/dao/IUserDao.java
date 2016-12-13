package com.hanmote.dao;

import java.util.List;

import com.hanmote.entity.PageDataGrid;
import com.hanmote.entity.TUser;

public interface IUserDao extends IBaseDao<TUser>{
	void add(TUser user);
	List list();
	//void find(String username);
	PageDataGrid dgList();
	
}
