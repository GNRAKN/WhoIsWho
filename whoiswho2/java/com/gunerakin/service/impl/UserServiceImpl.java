package com.gunerakin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gunerakin.dao.BeceriDao;
import com.gunerakin.dao.UserDao;
import com.gunerakin.model.Beceri;
import com.gunerakin.model.User;
import com.gunerakin.model.UserRole;
import com.gunerakin.service.BeceriService;
import com.gunerakin.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	UserDao userDao;

	@Override
	public User findByUserName(String username) {
		return userDao.findByUserName(username);
	}

	@Override
	public void register(User user, UserRole userRole) {
		userDao.register(user, userRole);
	}


}
