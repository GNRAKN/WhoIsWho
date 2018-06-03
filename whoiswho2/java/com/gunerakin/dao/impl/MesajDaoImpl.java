package com.gunerakin.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.gunerakin.dao.MesajDao;
import com.gunerakin.model.Mesaj;

@Repository
public class MesajDaoImpl implements MesajDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Mesaj> listGelenKutusuByUserId(long userId) {

		Query query=sessionFactory.getCurrentSession().createQuery("FROM mesaj m WHERE m.hedefId:=hedefId");
		query.setParameter("hedefId", userId);
		return query.list();
	}

	@Override
	public List<Mesaj> listGidenKutusuByUserId(long userId) {
		
		Query query=sessionFactory.getCurrentSession().createQuery("FROM mesaj m WHERE m.user.userId:=kaynakId");
		query.setParameter("kaynakId", userId);
		return query.list();
		
	}

	@Override
	public long createMesaj(Mesaj mesaj) {
		
		return (Long) sessionFactory.getCurrentSession().save(mesaj);
	}
	
	

}
