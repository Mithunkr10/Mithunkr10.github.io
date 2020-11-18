package com.mithun.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mithun.dao.*;

@Service
public class Travel_diary_Trip_service_impl implements Travel_diary_Trip_service  {
	
	Travel_diary_Expenditure expdao;
	
	Travel_diary_Travel trvldao;
	
	Travel_diary_Trip tpdao;
	
	Travel_diary_No_of_stops nfsdao;
	
	Travel_diary_Timeline_map tmlndao;
	
	
	public Travel_diary_Expenditure getExpdao() {
		return expdao;
	}

	@Autowired
	public void setExpdao(Travel_diary_Expenditure expdao) {
		this.expdao = expdao;
	}

	public Travel_diary_Travel getTrvldao() {
		return trvldao;
	}

	@Autowired
	public void setTrvldao(Travel_diary_Travel trvldao) {
		this.trvldao = trvldao;
	}

	public Travel_diary_Trip getTpdao() {
		return tpdao;
	}

	@Autowired
	public void setTpdao(Travel_diary_Trip tpdao) {
		this.tpdao = tpdao;
	}

	public Travel_diary_No_of_stops getNfsdao() {
		return nfsdao;
	}

	@Autowired
	public void setNfsdao(Travel_diary_No_of_stops nfsdao) {
		this.nfsdao = nfsdao;
	}

	public Travel_diary_Timeline_map getTmlndao() {
		return tmlndao;
	}

	@Autowired
	public void setTmlndao(Travel_diary_Timeline_map tmlndao) {
		this.tmlndao = tmlndao;
	}

	@Override
	@Transactional
	public String getExpenditureID(String t_id) {
		return expdao.getExpenditureID(t_id);
	}

	@Override
	@Transactional
	public float getFoodTotal(String e_id) {
		return expdao.getFoodTotal(e_id);
	}

	@Override
	@Transactional
	public double getFuelTotal(String e_id) {
		return expdao.getFuelTotal(e_id);
	}

	@Override
	@Transactional
	public float getMiscellaneousTotal(String e_id) {
		return expdao.getMiscellaneousTotal(e_id);
	}

	@Override
	@Transactional
	public float getStayTotal(String e_id) {
		return expdao.getStayTotal(e_id);
	}

	@Override
	@Transactional
	public String getStopName(String t_id, String timeline_id) {
		return nfsdao.getStopName(t_id, timeline_id);
	}

	@Override
	@Transactional
	public String getTimelineId(String source, String destination) {
		return tmlndao.getTimelineId(source, destination);
	}

	@Override
	@Transactional
	public String getTravelId(String t_id, String e_id) {
		return trvldao.getTravelId(t_id, e_id);
	}

	@Override
	@Transactional
	public float getDistanceCovered(String tr_id, String t_id) {
		return trvldao.getDistanceCovered(tr_id, t_id);
	}

	@Override
	@Transactional
	public double getFuelUsed(String tr_id, String t_id) {
		return trvldao.getFuelUsed(tr_id, t_id);
	}

	@Override
	@Transactional
	public float getTotalTime(String tr_id, String t_id) {
		return trvldao.getTotalTime(tr_id, t_id);
	}

	@Override
	@Transactional
	public String getDescription(String tr_id, String t_id) {
		return trvldao.getDescription(tr_id, t_id);
	}

	@Override
	@Transactional
	public String getTrip_id(String src, String dest) {
		return tpdao.getTrip_id(src, dest);
	}

}
