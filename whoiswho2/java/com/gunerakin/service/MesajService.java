package com.gunerakin.service;


import java.util.List;
import com.gunerakin.model.Mesaj;


public interface MesajService {

	public List<Mesaj> listGelenKutusuByUserId(long userId);
	public List<Mesaj> listGidenKutusuByUserId(long userId);
	
	public long createMesaj(Mesaj mesaj);
	}
