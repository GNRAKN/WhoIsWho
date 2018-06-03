package com.gunerakin.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.gunerakin.dao.MesajDao;
import com.gunerakin.model.Mesaj;
import com.gunerakin.service.MesajService;


@Service
@Transactional
public class MesajServiceImpl implements MesajService{

	@Autowired
	MesajDao mesajDao;
	 
	
	@Override
	public List<Mesaj> listGelenKutusuByUserId(long userId) {

			return mesajDao.listGelenKutusuByUserId(userId);
	}

	@Override
	public List<Mesaj> listGidenKutusuByUserId(long userId) {
		
		return mesajDao.listGidenKutusuByUserId(userId);
	}

	@Override
	public long createMesaj(Mesaj mesaj) {
		
		return mesajDao.createMesaj(mesaj);
	}

	

}
