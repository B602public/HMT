package com.hanmote.service;

import java.util.List;

import com.hanmote.entity.PageDataGrid;
import com.hanmote.entity.TUser;
import com.hanmote.pagemodel.User;

public interface IUserService {
	List<TUser> getList();
	void add(TUser user);
	PageDataGrid dgList();
	void modifyPasswordByUserName(String userName);
	User login(User user);
}
