package com.gunerakin.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gunerakin.dao.PersonelDao;
import com.gunerakin.model.Personel;
import com.gunerakin.service.PersonelService;

@Service
@Transactional
public class PersonelServiceImpl implements PersonelService{

	@Autowired
	PersonelDao personelDao;
	 
	@Override
	public long createPersonel(Personel personel) {
		
		return personelDao.createPersonel(personel);
	}

	@Override
	public void deletePersonel(long personelId) {
		personelDao.deletePersonel(personelId);
	}

	@Override
	public List<Personel> personelListByDepartmentId(long departmentId) {
		
		return personelDao.personelListByDepartmentId(departmentId);
	}

	@Override
	public List<Personel> personelListByName(String name) {
		return personelDao.personelListByName(name);
	}

	@Override
	public Personel getPersonelById(long personelId) {

		return personelDao.getPersonelById(personelId);
	}

	@Override
	public Personel getPersonelByUsername(String username) {
		return personelDao.getPersonelByUsername(username);
	}

	@Override
	public void updatePersonel(Personel personel) {
		
		personelDao.updatePersonel(personel);
		
	}

}
