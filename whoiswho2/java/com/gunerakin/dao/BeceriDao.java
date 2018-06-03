package com.gunerakin.dao;

import java.util.List;

import com.gunerakin.model.Beceri;

public interface BeceriDao {

	public List<Beceri> searchByDepartmanId(long departmanId);
}
