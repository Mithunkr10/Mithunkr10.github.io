package com.mithun.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.mithun.bean.No_of_stops;


@SuppressWarnings("unchecked")
@Repository("Travel_diary_No_of_stops")
@Transactional
public class TDNFS_dao_impl implements Travel_diary_No_of_stops {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public String getStopName(String t_id, String timeline_id) {
		String sn;	
		javax.persistence.Query q = em.createNativeQuery("select Stop_name from No_of_stops where Trip_id=:t_id and Timeline_id=:timeline_id");
		q.setParameter("t_id", t_id);
		q.setParameter("timeline_id", timeline_id);
		List<No_of_stops> l=q.getResultList();
		sn=String.valueOf(l.get(0));
		return sn;
	}

}
