package com.mithun.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import com.mithun.bean.Expenditure;

@SuppressWarnings("unchecked")
@Repository("Travel_diary_Expenditure")
@Transactional
public class TDEXP_dao_impl implements Travel_diary_Expenditure {
	
	@PersistenceContext
	private EntityManager em; 

	
	@Override
	public String getExpenditureID(String t_id) {
		
		String e_id;	
		javax.persistence.Query q = em.createNativeQuery("select Expd_id from Expenditure where Trip_id=:t_id");
		q.setParameter("t_id", t_id);
		List<Expenditure> l=q.getResultList();
		e_id=String.valueOf(l.get(0));
		return e_id;

	}



	@Override
	public float getFoodTotal(String e_id) {
		javax.persistence.Query q = em.createNativeQuery("select Food_total from Expenditure where Expd_id=:e_id");
		q.setParameter("e_id", e_id);
		List<Expenditure> l=q.getResultList();
		float ft=Float.parseFloat(String.valueOf((l.get(0))));
		return ft;
	}



	@Override
	public double getFuelTotal(String e_id) {
		javax.persistence.Query q = em.createNativeQuery("select Fuel_total from Expenditure where Expd_id=:e_id");
		q.setParameter("e_id", e_id);
		List<Expenditure> l=q.getResultList();
		double ft=Double.parseDouble(String.valueOf((l.get(0))));
		return ft;
	}



	@Override
	public float getMiscellaneousTotal(String e_id) {
		javax.persistence.Query q = em.createNativeQuery("select Miscellaneous_total from Expenditure where Expd_id=:e_id");
		q.setParameter("e_id", e_id);
		List<Expenditure> l=q.getResultList();
		float mt=Float.parseFloat(String.valueOf((l.get(0))));
		return mt;
	}



	@Override
	public float getStayTotal(String e_id) {
		javax.persistence.Query q = em.createNativeQuery("select Stay_total from Expenditure where Expd_id=:e_id");
		q.setParameter("e_id", e_id);
		List<Expenditure> l=q.getResultList();
		float st=Float.parseFloat(String.valueOf((l.get(0))));
		return st;
	}


}
