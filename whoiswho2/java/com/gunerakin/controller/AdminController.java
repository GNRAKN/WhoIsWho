package com.gunerakin.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gunerakin.model.Beceri;
import com.gunerakin.model.Departman;
import com.gunerakin.model.Personel;
import com.gunerakin.model.UserRole;
import com.gunerakin.service.BeceriService;
import com.gunerakin.service.DepartmanService;
import com.gunerakin.service.PersonelService;
import com.gunerakin.service.UserService;
import com.gunerakin.session.LoginSession;

@Controller
public class AdminController {
	
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
	
	
	@RequestMapping(value = "/admin/personelkayit", method = RequestMethod.GET)
	public ModelAndView personelkayit(@ModelAttribute Personel personel) {

		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("personelkayit");

		List<Departman> departmanList = (List<Departman>) departmanService.allDepartman();

		List<Beceri> beceriList=new ArrayList<Beceri>();
		
		
		Map<Long, String> departmanMap = new LinkedHashMap<Long, String>();

		for (Departman departman : departmanList) {

			departmanMap.put(departman.getDepartmanId(), departman.getDepartmanAdi());
			
		}

		// --------------------------------------------------------------------------
		List<Beceri> yazilimList = (List<Beceri>) beceriService.searchByDepartmanId(1);
	
		Map<Long, String> yazilimMap = new LinkedHashMap<Long, String>();

		for (Beceri beceri : yazilimList) {
			
			yazilimMap.put(beceri.getBeceriId(), beceri.getBeceriAdi());

		}

		// --------------------------------------------------------------------------

		List<Beceri> donanimList = (List<Beceri>) beceriService.searchByDepartmanId(2);

		Map<Long, String> donanimMap = new LinkedHashMap<Long, String>();

		for (Beceri beceri : donanimList) {

			donanimMap.put(beceri.getBeceriId(), beceri.getBeceriAdi());

		}

		// --------------------------------------------------------------------------

		List<Beceri> agList = (List<Beceri>) beceriService.searchByDepartmanId(3);

		Map<Long, String> agMap = new LinkedHashMap<Long, String>();

		for (Beceri beceri : agList) {

			agMap.put(beceri.getBeceriId(), beceri.getBeceriAdi());

		}

		// --------------------------------------------------------------------------

		List<Beceri> testList = (List<Beceri>) beceriService.searchByDepartmanId(4);

		Map<Long, String> testMap = new LinkedHashMap<Long, String>();

		for (Beceri beceri : testList) {

			testMap.put(beceri.getBeceriId(), beceri.getBeceriAdi());

		}

		// --------------------------------------------------------------------------
		beceriList.addAll(yazilimList);
		beceriList.addAll(testList);
		beceriList.addAll(donanimList);
		beceriList.addAll(agList);
	
		modelView.addObject("yazilimMap", yazilimMap);
		modelView.addObject("donanimMap", donanimMap);
		modelView.addObject("agMap", agMap);
		modelView.addObject("testMap", testMap);
		
		// --------------------------------------------------------------------------
		modelView.addObject("departmanMap", departmanMap);
		
		
		
		
		
		
		
		return modelView;
	}

	@RequestMapping(value = "/admin/personelkayit", method = RequestMethod.POST)
	public ModelAndView personelkayitPost(@ModelAttribute Personel personel,
			@RequestParam("departmanId") Long departmanId , @RequestParam("beceri")long [] beceriIdleri,
			@RequestParam("role") String rol ) {

		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("redirect:personelkayit");
		
		Departman departman = new Departman();
		departman.setDepartmanId(departmanId);
		
		List<Beceri> beceriListe=new ArrayList<Beceri>();
		for(int i=0;i<beceriIdleri.length;i++)
		{
			Beceri beceri=new Beceri();
			beceri.setBeceriId(beceriIdleri[i]);
			beceriListe.add(beceri);
		}
		
		// personel.getBeceriler().add(beceriler);
		personel.setDepartman(departman);
		personel.setBeceriler(beceriListe);
		
		
		UserRole role=new UserRole();
		role.setRole(rol);
		role.setUser(personel.getUser());
		Set<UserRole> userRole=new HashSet<UserRole>();
		userRole.add(role);
		
		
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String cryptedPassword = passwordEncoder.encode(personel.getUser().getPassword());
		personel.getUser().setPassword(cryptedPassword);
		personel.getUser().setEnabled(true);
		personel.getUser().setUserRole(userRole);
		personelService.createPersonel(personel);
		
		return modelView;
	}
	
	@RequestMapping(value = "/admin/personelguncelle", method = RequestMethod.POST)
	public ModelAndView personelGuncellePost(@RequestParam("personelId") long personelId) {

		ModelAndView modelView = new ModelAndView();
		Personel personel = personelService.getPersonelById(personelId);
		personel.getUser().setPassword(null);
		modelView.addObject("personel", personel);
		modelView.setViewName("personelguncelle");

		return modelView;
	}

	@RequestMapping(value = "/admin/personelguncelle2", method = RequestMethod.POST)
	public ModelAndView personelGuncellePost2(@ModelAttribute Personel personel) {

		ModelAndView modelView = new ModelAndView();
		
		modelView.addObject("personel", personel);
		modelView.setViewName("personelguncelle");
		personel.getUser().setEnabled(true);
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		String cryptedPassword = passwordEncoder.encode(personel.getUser().getPassword());
		personel.getUser().setPassword(cryptedPassword);
		
		personelService.updatePersonel(personel);
		
		
		
		return modelView;
	}
	
	@RequestMapping(value = "/admin/personelguncelle", method = RequestMethod.GET)
	public ModelAndView personelGuncelleGet(@ModelAttribute Personel personel, @ModelAttribute List<Beceri> beceri) {

		ModelAndView modelView = new ModelAndView();
		modelView.setViewName("personeldetay");
		//personelService.updatePersonel(personel);
		//personel.setBeceriler(beceri);
		return modelView;
	}

	
	
}
