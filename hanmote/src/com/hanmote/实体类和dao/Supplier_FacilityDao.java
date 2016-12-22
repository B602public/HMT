package com.hanmote.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import com.hanmote.entity.Supplier_Facility;

public class Supplier_FacilityDao {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void saveSupplier_Facility(Supplier_Facility sf){
		sessionFactory.getCurrentSession().save(sf);
	}
	
	public void deleteSupplier_Facility(Supplier_Facility sf){
		sessionFactory.getCurrentSession().delete(sf);
	}
	
	public void updateSupplier_Facility(Supplier_Facility sf){
		sessionFactory.getCurrentSession().update(sf);
	}
	
	public Supplier_Facility getSupplier_Facility(Supplier_Facility sf){
	    Session session = sessionFactory.openSession();
	    return (Supplier_Facility) session.get(Supplier_Facility.class,sf.getID());
	}
	
	public List<Supplier_Facility> listSupplier_Facility(){
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Supplier_Facility");
		return query.list();
	} 

}
