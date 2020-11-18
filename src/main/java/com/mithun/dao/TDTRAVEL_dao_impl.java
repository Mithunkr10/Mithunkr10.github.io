package com.mithun.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.mithun.bean.Travel;

@SuppressWarnings("unchecked")
@Repository("Travel_diary_Travel")
@Transactional
public class TDTRAVEL_dao_impl implements Travel_diary_Travel {

	@PersistenceContext
	private EntityManager em;

	
	@Override
	public String getTravelId(String t_id, String e_id) {
		String tr_id;	
		javax.persistence.Query q = em.createNativeQuery("select Travel_id from Travel_Details where Trip_id=:t_id and Exp_id=:e_id");
		q.setParameter("t_id", t_id);
		q.setParameter("e_id", e_id);
		List<Travel> l=q.getResultList();
		tr_id=String.valueOf(l.get(0));
		return tr_id;
	}

	@Override
	public float getDistanceCovered(String tr_id, String t_id) {
		javax.persistence.Query q = em.createNativeQuery("select Distance_covered from Travel_Details where Travel_id=:tr_id and Trip_id=:t_id");
		q.setParameter("tr_id", tr_id);
		q.setParameter("t_id", t_id);
		List<Travel> l=q.getResultList();
		float dc=Float.parseFloat(String.valueOf(l.get(0)));
		return dc;
	}

	@Override
	public double getFuelUsed(String tr_id, String t_id) {
		javax.persistence.Query q = em.createNativeQuery("select Fuel from Travel_Details where Travel_id=:tr_id and Trip_id=:t_id");
		q.setParameter("tr_id", tr_id);
		q.setParameter("t_id", t_id);
		List<Travel> l=q.getResultList();
		double f=Double.parseDouble(String.valueOf(l.get(0)));
		return f;
	}

	@Override
	public float getTotalTime(String tr_id, String t_id) {
		javax.persistence.Query q = em.createNativeQuery("select Total_time from Travel_Details where Travel_id=:tr_id and Trip_id=:t_id");
		q.setParameter("tr_id", tr_id);
		q.setParameter("t_id", t_id);
		List<Travel> l=q.getResultList();
		float tt=Float.parseFloat(String.valueOf(l.get(0)));
		return tt;
	}

	@Override
	public String getDescription(String tr_id, String t_id) {
		javax.persistence.Query q = em.createNativeQuery("select Description from Travel_Details where Travel_id=:tr_id and Trip_id=:t_id");
		q.setParameter("tr_id", tr_id);
		q.setParameter("t_id", t_id);
		List<Travel> l=q.getResultList();
		String descp=String.valueOf(l.get(0));
		return descp;
	}

}
