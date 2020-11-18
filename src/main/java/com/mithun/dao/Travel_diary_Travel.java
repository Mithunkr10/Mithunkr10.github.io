package com.mithun.dao;


public interface Travel_diary_Travel {

	public String getTravelId(String t_id,String e_id);
	
	public float getDistanceCovered(String tr_id, String t_id);
	
	public double getFuelUsed(String tr_id,String t_id);
	
	public float getTotalTime(String tr_id,String t_id);
	
	public String getDescription(String tr_id,String t_id);
}
