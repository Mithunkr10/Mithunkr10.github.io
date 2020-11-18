package com.mithun.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.mithun.bean.No_of_stops;


@SuppressWarnings("unchecked")
@Repository("Travel_diary_Timeline_map")
@Transactional

public class TDTIMELINE_dao_impl implements Travel_diary_Timeline_map {


	@PersistenceContext
	private EntityManager em;
	
	@Override
	public String getTimelineId(String source, String destination) {
		String tmln;	
		javax.persistence.Query q = em.createNativeQuery("select Timeline_id from Timeline_map where Source=:source and Destination=:destination");
		q.setParameter("source", source);
		q.setParameter("destination", destination);
		List<No_of_stops> l=q.getResultList();
		tmln=String.valueOf(l.get(0));
		return tmln;
	}

}
