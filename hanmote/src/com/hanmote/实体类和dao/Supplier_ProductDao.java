package com.hanmote.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hanmote.entity.Supplier_Product;

public class Supplier_ProductDao {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void saveSupplier_Product(Supplier_Product sp){
		sessionFactory.getCurrentSession().save(sp);
	}
	
	public void deleteSupplier_Product(Supplier_Product sp){
		sessionFactory.getCurrentSession().delete(sp);
	}
	
	public void updateSupplier_Product(Supplier_Product sp){
		sessionFactory.getCurrentSession().update(sp);
	}
	
	public Supplier_Product getSupplier_Product(Supplier_Product sp){
	    Session session = sessionFactory.openSession();
	    return (Supplier_Product) session.get(Supplier_Product.class,sp.getID());
	}
	
	public List<Supplier_Product> listSupplier_Product(){
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Supplier_Product");
		return query.list();
	} 


}
