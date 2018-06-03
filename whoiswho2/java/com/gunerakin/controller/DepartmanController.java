package com.gunerakin.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.gunerakin.model.Departman;
import com.gunerakin.service.BeceriService;
import com.gunerakin.service.DepartmanService;
import com.gunerakin.service.PersonelService;
import com.gunerakin.service.UserService;
import com.gunerakin.session.LoginSession;

@Controller
public class DepartmanController {

	@Autowired
	PersonelService personelService;	

	@Autowired
	UserService userService;

	@Autowired
	DepartmanService departmanService;

	@Autowired
	BeceriService beceriService;

	@Autowired
	LoginSession loginSession;
	
	
	@RequestMapping(value = "/admin/departman/list", method = RequestMethod.GET)
	public ModelAndView departmanlist() {

		ModelAndView modelView = new ModelAndView();

		List<Departman> departmanList = departmanService.allDepartman();
		modelView.addObject("departmanList", departmanList);
		modelView.setViewName("departmanlistele");

		return modelView;
	}

	
	
}
