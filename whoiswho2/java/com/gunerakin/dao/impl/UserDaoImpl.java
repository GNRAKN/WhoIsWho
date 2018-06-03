package com.gunerakin.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;

import com.gunerakin.dao.UserDao;
import com.gunerakin.model.User;
import com.gunerakin.model.UserRole;

public class UserDaoImpl implements UserDao {

	private SessionFactory sessionFactory;

	
	//Veritabanindan kullaniciyi bulup getiriyoruz.
	@SuppressWarnings("unchecked")
	public User findByUserName(String username) {

		List<User> users = new ArrayList<User>();
		
		users = getSessionFactory().getCurrentSession().createQuery("from User where username=?")
				.setParameter(0, username).list();

		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}

	}

	
	@Override
	public void register(User user,UserRole userRole) {
		
		sessionFactory.getCurrentSession().save(user);
		sessionFactory.getCurrentSession().save(userRole);
		
	}

	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

}