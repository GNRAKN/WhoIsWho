package com.gunerakin.service;

import java.util.List;

import com.gunerakin.model.Departman;

public interface DepartmanService {


	public long createDepartman(Departman departman);
	public List<Departman> allDepartman();
}
