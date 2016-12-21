package com.hanmote.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hanmote.entity.Supplier_Register;


public class Supplier_RegisterDao {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void saveSupplier_Register(Supplier_Register sr){
		sessionFactory.getCurrentSession().save(sr);
	}
	
	public void deleteSupplier_Register(Supplier_Register sr){
		sessionFactory.getCurrentSession().delete(sr);
	}
	
	public void updateSupplier_Register(Supplier_Register sr){
		sessionFactory.getCurrentSession().update(sr);
	}
	
	public Supplier_Register getSupplier_Register(Supplier_Register sr){
	    Session session = sessionFactory.openSession();
	    return (Supplier_Register) session.get(Supplier_Register.class,sr.getID());
	}
	
	public List<Supplier_Register> listSupplier_Register(){
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Supplier_Register");
		return query.list();
	} 

}
