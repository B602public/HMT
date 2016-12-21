package com.hanmote.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hanmote.entity.Business_Base;


public class Business_BaseDao {

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void saveBusiness_Base(Business_Base bb){
		sessionFactory.getCurrentSession().save(bb);
	}
	
	public void deleteBusiness_Base(Business_Base bb){
		sessionFactory.getCurrentSession().delete(bb);
	}
	
	public void updateBusiness_Base(Business_Base bb){
		sessionFactory.getCurrentSession().update(bb);
	}
	
	public Business_Base getSupplier_Customer(Business_Base bb){
	    Session session = sessionFactory.openSession();
	    return (Business_Base) session.get(Business_Base.class,bb.getID());
	}
	
	public List<Business_Base> listSupplier_Customer(){
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Business_Base");
		return query.list();
	} 

}
