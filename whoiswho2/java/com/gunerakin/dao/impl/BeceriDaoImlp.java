package com.gunerakin.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gunerakin.dao.BeceriDao;
import com.gunerakin.model.Beceri;

@Repository
public class BeceriDaoImlp implements BeceriDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Beceri> searchByDepartmanId(long departmanId) {
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM Beceri b WHERE b.departman.departmanId=:departmanId");
		query.setParameter("departmanId", departmanId);
		return query.list();
	}

}
