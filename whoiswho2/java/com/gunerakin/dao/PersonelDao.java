package com.gunerakin.dao;


import java.util.List;

import com.gunerakin.model.Personel;

public interface PersonelDao {

	public long createPersonel(Personel personel);
	
	public void updatePersonel(Personel personel);

	public void deletePersonel(long personelId);
	
	public List<Personel> personelListByDepartmentId(long departmentId);
	
	public List<Personel> personelListByName(String name);
	
	public Personel getPersonelById(long personelId);

	public Personel getPersonelByUsername(String username);
}
