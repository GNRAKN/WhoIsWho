package com.gunerakin.dao.impl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gunerakin.dao.PersonelDao;
import com.gunerakin.model.Personel;

@Repository
public class PersonelDaoImpl implements PersonelDao{

	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public long createPersonel(Personel personel) {
		return (Long) sessionFactory.getCurrentSession().save(personel); 
	}

	 
	@Override
	public void deletePersonel(long personelId) {
		Personel personel= new Personel();
		personel.setPersonelId(personelId);
	    sessionFactory.getCurrentSession().delete(personel);    
		
	}


	@Override
	public List<Personel> personelListByDepartmentId(long departmentId) {
		Query query = sessionFactory.getCurrentSession()
				.createQuery("FROM Personel p WHERE p.departman.departmanId=:departmentId");
		query.setParameter("departmentId", departmentId);
		return query.list();
	}


	@Override
	public List<Personel> personelListByName(String name) {
		Query query = sessionFactory.getCurrentSession()
				.createQuery("FROM Personel p WHERE p.personelAdi LIKE :name");
		query.setParameter("name", name);
		return query.list();
	}


	@Override
	public Personel getPersonelById(long personelId) {
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM Personel p WHERE p.personelId =:id");
		query.setParameter("id",personelId);
		return (Personel) query.list().get(0);
	}

	
	@Override
	public Personel getPersonelByUsername(String username) {
		Query query=sessionFactory.getCurrentSession().createQuery("FROM Personel p WHERE p.user.username =:username");
		query.setParameter("username",username);
		return (Personel) query.uniqueResult();
	}


	@Override
	public void updatePersonel(Personel personel) {
		
		sessionFactory.getCurrentSession().update(personel);
	}


	
	
	

}
