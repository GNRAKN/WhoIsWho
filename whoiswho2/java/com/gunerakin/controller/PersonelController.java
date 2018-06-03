package com.gunerakin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gunerakin.model.Departman;
import com.gunerakin.model.Personel;
import com.gunerakin.service.BeceriService;
import com.gunerakin.service.DepartmanService;
import com.gunerakin.service.PersonelService;
import com.gunerakin.service.UserService;
import com.gunerakin.session.LoginSession;

@Controller
public class PersonelController {

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

	@RequestMapping(value = "/personel/list", method = RequestMethod.POST)
	public ModelAndView personellistpost(@RequestParam("departmanId") long departmanId,
			@RequestParam("departmanAdi") String departmanAdi) {

		ModelAndView modelView = new ModelAndView();

		List<Personel> personelList = personelService.personelListByDepartmentId(departmanId);

		modelView.addObject("personelList", personelList);
		modelView.addObject("departmanAdi", departmanAdi);
		modelView.setViewName("personellistele");

		return modelView;
	}

	@RequestMapping(value = "/personel/bilgi", method = RequestMethod.GET)
	public ModelAndView personelbilgiget(@ModelAttribute Personel personel) {

		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("personelara");

		return modelView;
	}

	@RequestMapping(value = "/personel/bilgi", method = RequestMethod.POST)
	public ModelAndView personelbilgipost(@ModelAttribute Personel personel) {

		ModelAndView modelView = new ModelAndView();
		List<Personel> personelList = personelService.personelListByName(personel.getPersonelAdi());

		modelView.addObject("personelList", personelList);

		modelView.setViewName("personellistele");
		return modelView;
	}

	@RequestMapping(value = "/personel/detay", method = RequestMethod.POST)
	public ModelAndView personelDetayPost(@RequestParam("personelId") long personelId) {

		ModelAndView modelView = new ModelAndView();
		Personel personel = personelService.getPersonelById(personelId);

		modelView.addObject("personel", personel);
		modelView.setViewName("personeldetay");

		return modelView;
	}

	@RequestMapping(value = "/personel/detay", method = RequestMethod.GET)
	public ModelAndView personelDetayGet() {

		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("personeldetay");

		return modelView;
	}

	

}
