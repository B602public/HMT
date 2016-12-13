package com.hanmote.dao;


import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.hanmote.entity.PageDataGrid;
import com.hanmote.entity.TUser;

@Repository
public class UserDao extends BaseDaoImpl<TUser> implements IUserDao{
	
	@Override
	public List<TUser> list() {
		String hql = "from TUser u order by u.id";
		Query query = this.getCurrentSession().createQuery(hql);
System.out.println(hql);
		List<TUser> list = (List<TUser>)query.list();
		return list;
	}

	/**
	 * 添加用户
	 */
	@Override
	public void add(TUser user) {
		this.getCurrentSession().save(user);
	}
	
//	@Override
//	public void find(String username){
//		User user = null;
//		String hql = "from User u where u.userName=:username";
//		Query query = this.getCurrentSession().createQuery(hql);
//		query.setParameter("username",username);
//		user = (User) query.uniqueResult();
//	}

	@Override
	public PageDataGrid dgList() {
		PageDataGrid pdg = new PageDataGrid();
		String hql = "from TUser";
		String totalHql = "select count(*) " + hql;
		Query query = this.getCurrentSession().createQuery(hql);
		List rows = query.list();
		pdg.setRows(rows);
		query = this.getCurrentSession().createQuery(totalHql);
		Long total = (Long)query.uniqueResult();
		pdg.setTotal(total);
		return pdg;
	}
	
	public PageDataGrid dgList(TUser user){
		PageDataGrid pdg = new PageDataGrid();
		String hql = "from TUser u";
		String count = "select count(*)" + hql;
		Query q = this.getCurrentSession().createQuery(count);
		List list = q.list();
		pdg.setRows(list);
		
		return pdg;
	}
	
}
