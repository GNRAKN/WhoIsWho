package com.gunerakin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gunerakin.dao.BeceriDao;

import com.gunerakin.model.Beceri;
import com.gunerakin.service.BeceriService;

@Service
@Transactional
public class BeceriServiceImpl implements BeceriService {
	
	@Autowired
	BeceriDao beceriDao;
	
	@Override
	public List<Beceri> searchByDepartmanId(long departmanId) {
		
		return beceriDao.searchByDepartmanId(departmanId);
	}

}
