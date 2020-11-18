package com.mithun.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.mithun.bean.Trip;

@SuppressWarnings("deprecation")
@Repository()
@Transactional
public class TDTRIP_dao_impl implements Travel_diary_Trip {

	@PersistenceContext
    private EntityManager entityManger;


	@SuppressWarnings("unchecked")
	@Override
	public String getTrip_id(String src, String dest) {
		String t_id="";	
		String hql="select Trip_id from Trip where Trip_source=:src  and Trip_destination=:dest";
		Query<Trip> q=(Query<Trip>) entityManger.createQuery(hql);
		q.setParameter("src", src);
		q.setParameter("dest", dest);
		List<Trip> l=q.getResultList();
		System.out.println(l);
		t_id=String.valueOf(l.get(0));
		return t_id;
	}

	
}
