package com.hanmote.util;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {
	private static final SessionFactory FACTORY = buildSessionFactory();
	
	private static SessionFactory buildSessionFactory(){
		Configuration cfg = new Configuration().configure();
		SessionFactory factory = cfg.buildSessionFactory();
				
		return factory;
	}
	
	public static SessionFactory getSessionFactory(){
		return FACTORY;
	}
	
	public static Session getSession(){
		return FACTORY.openSession();
	}
	
	public static void close(Session session){
		if(session != null){
			session.close();
		}
	}
}
