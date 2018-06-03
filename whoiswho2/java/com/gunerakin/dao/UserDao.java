package com.gunerakin.dao;

import com.gunerakin.model.User;
import com.gunerakin.model.UserRole;

public interface UserDao {

	User findByUserName(String username);
	public void register(User user,UserRole userRole);
	
	
}