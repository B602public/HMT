package com.hanmote.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hanmote.dao.IUserDao;
import com.hanmote.entity.PageDataGrid;
import com.hanmote.entity.TUser;
import com.hanmote.pagemodel.User;

@Service
public class UserService implements IUserService{
	private IUserDao userDao;
	
	public IUserDao getUserDao() {
		return userDao;
	}
	@Resource
	public void setUserDao(IUserDao userDao) {
		this.userDao = userDao;
	}
	@Override
	public List<TUser> getList() {
		return userDao.list();
	}
	@Override
	public void add(TUser user){
//		System.out.print(user.getUserName()+"+");
//		System.out.print(user.getId());
//		System.out.println("写入数据库:");
		userDao.add(user);
		
	}
	@Override
	public PageDataGrid dgList() {
		return userDao.dgList();
	}
	
	/**
	 * 根据用户名修改密码
	 * @param userName 用户名
	 */
	public void modifyPasswordByUserName(String userName){
		
	}
	/**
	 * 
	 */
	@Override
	public User login(User user) {
		Map<String,Object> params = new HashMap<String,Object>();
		params.put("password", user.getPassword());
		params.put("userName", user.getUserName());
		String hql = "from TUser u where u.userName = :userName and u.password = :password";
		TUser u = userDao.get(hql, params);
		if(u != null){
			return user;
		}
		return null;
	}
	
}
