package com.hanmote.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.hanmote.entity.Supplier_Turnover_Record;

public class Supplier_Turnover_RecordDao {
	
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void saveSupplier_Turnover_Record(Supplier_Turnover_Record str){
		sessionFactory.getCurrentSession().save(str);
	}
	
	public void deleteSupplier_Turnover_Record(Supplier_Turnover_Record str){
		sessionFactory.getCurrentSession().delete(str);
	}
	
	public void updateSupplier_Turnover_Record(Supplier_Turnover_Record str){
		sessionFactory.getCurrentSession().update(str);
	}
	
	public Supplier_Turnover_Record getSupplier_Turnover_Record(Supplier_Turnover_Record str){
	    Session session = sessionFactory.openSession();
	    return (Supplier_Turnover_Record) session.get(Supplier_Turnover_Record.class,str.getID());
	}
	
	public List<Supplier_Turnover_Record> listSupplier_Turnover_Record(){
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Supplier_Turnover_Record");
		return query.list();
	} 

}
