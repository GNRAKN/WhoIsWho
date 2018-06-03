package com.gunerakin.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.gunerakin.model.Mesaj;
import com.gunerakin.service.MesajService;


@Controller
public class MesajController {


	
	@Autowired
	MesajService mesajService;
	
	
	@RequestMapping(value = "/mesaj/gelenkutusu", method = RequestMethod.GET)
	public ModelAndView gelenKutusuList(@RequestParam("userId") long userId) {

		ModelAndView modelView = new ModelAndView();

		List<Mesaj> gelenKutusuList = mesajService.listGelenKutusuByUserId(userId);
		modelView.addObject("gelenKutusuList", gelenKutusuList);
		modelView.setViewName("gelenKutusuListele");

		return modelView;
	}

	
	
}
