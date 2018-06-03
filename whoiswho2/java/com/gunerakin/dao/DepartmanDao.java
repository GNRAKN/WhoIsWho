package com.gunerakin.dao;

import java.util.List;

import com.gunerakin.model.Departman;

public interface DepartmanDao {

	public long createDepartman(Departman departman);
	public List<Departman> allDepartman();
}
