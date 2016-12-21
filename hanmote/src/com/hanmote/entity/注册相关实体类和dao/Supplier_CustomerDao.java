package com.hanmote.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hanmote.entity.Supplier_Customer;
import com.hanmote.entity.Supplier_Product;

public class Supplier_CustomerDao {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void saveSupplier_Customer(Supplier_Customer sc){
		sessionFactory.getCurrentSession().save(sc);
	}
	
	public void deleteSupplier_Customer(Supplier_Customer sc){
		sessionFactory.getCurrentSession().delete(sc);
	}
	
	public void updateSupplier_Customer(Supplier_Customer sc){
		sessionFactory.getCurrentSession().update(sc);
	}
	
	public Supplier_Customer getSupplier_Customer(Supplier_Customer sc){
	    Session session = sessionFactory.openSession();
	    return (Supplier_Customer) session.get(Supplier_Customer.class,sc.getID());
	}
	
	public List<Supplier_Customer> listSupplier_Customer(){
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Supplier_Customer");
		return query.list();
	} 



}
