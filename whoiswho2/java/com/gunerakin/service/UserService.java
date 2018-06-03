package com.gunerakin.service;

import java.util.List;

import com.gunerakin.model.Beceri;
import com.gunerakin.model.User;
import com.gunerakin.model.UserRole;

public interface UserService {

	User findByUserName(String username);
	public void register(User user,UserRole userRole);
}
