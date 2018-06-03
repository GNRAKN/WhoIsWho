package com.gunerakin.service;

import java.util.List;

import com.gunerakin.model.Beceri;

public interface BeceriService {

	
	public List<Beceri> searchByDepartmanId(long departmanId);
}
