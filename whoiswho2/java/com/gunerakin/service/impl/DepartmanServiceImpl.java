package com.gunerakin.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gunerakin.dao.DepartmanDao;
import com.gunerakin.model.Departman;
import com.gunerakin.service.DepartmanService;


@Service
@Transactional
public class DepartmanServiceImpl implements DepartmanService{

	@Autowired
	DepartmanDao departmanDao;

	@Override
	public long createDepartman(Departman departman) {
		return departmanDao.createDepartman(departman);
	}

	@Override
	public List<Departman> allDepartman() {
		return departmanDao.allDepartman();
	}
	
	

}
