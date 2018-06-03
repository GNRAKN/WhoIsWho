package com.gunerakin.dao.impl;


import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.gunerakin.dao.DepartmanDao;
import com.gunerakin.model.Departman;


@Repository
public class DepartmanDaoImpl implements DepartmanDao{

	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public long createDepartman(Departman departman) {
		
		return (Long) sessionFactory.getCurrentSession().save(departman);
	}

	@Override
	public List<Departman> allDepartman() {
		return sessionFactory.getCurrentSession().createQuery("FROM Departman d").list();
	}


}
