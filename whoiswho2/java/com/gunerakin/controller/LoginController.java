package com.gunerakin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gunerakin.session.LoginSession;



@Controller
public class LoginController {

	@Autowired
	LoginSession loginSession;
	

	@RequestMapping(value = "/login**", method = RequestMethod.GET)
	public ModelAndView dologin() {
		ModelAndView model = new ModelAndView();
		model.setViewName("login");
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String cryptedPassword = passwordEncoder.encode("12");

		System.out.println("cryptedPassword:" + cryptedPassword);
		return model;

	}

	 
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register() {

		ModelAndView model = new ModelAndView();
		model.setViewName("login");

		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String cryptedPassword = passwordEncoder.encode("sifre");

		System.out.println("cryptedPassword:" + cryptedPassword);
 
		return model;

	}
	

	void setSession() {
		if (loginSession.getUsername().isEmpty()) {
			
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			String username = auth.getName(); // get logged in username
		
			/*User user=userDao.findByUserName(username);
			loginSession.setUsername(username);
			loginSession.setPassword(user.getPassword());*/
			
		}
	}

}
