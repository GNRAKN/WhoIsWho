package com.gunerakin.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.gunerakin.model.Personel;
import com.gunerakin.service.PersonelService;
import com.gunerakin.session.LoginSession;

@Controller
public class HomeController {

	@Autowired
	PersonelService personelService;
	
	@Autowired
	LoginSession loginSession;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView home() {

		
		if (loginSession.getUsername().isEmpty()) {
			setSession();
		}
		
		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("home");

		return modelView;
	}

	
	

	void setSession() {
		if (loginSession.getUsername().isEmpty()) {
			
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
			String username = auth.getName(); // get logged in username
			System.out.println(auth.getAuthorities());
			Personel personel=personelService.getPersonelByUsername(username);
			loginSession.setUsername(username);
			loginSession.setId(personel.getPersonelId());
			
		}
	}
	
}
