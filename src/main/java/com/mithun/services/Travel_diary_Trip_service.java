package com.mithun.services;

public interface Travel_diary_Trip_service {
	
	public String getExpenditureID(String t_id);

	public float getFoodTotal(String e_id);
	
	public double getFuelTotal(String e_id);
	
	public float getMiscellaneousTotal(String e_id);
	
	public float getStayTotal(String e_id);
	
	public String getStopName(String t_id, String timeline_id);
	
	public String getTimelineId(String source, String destination);
	
	public String getTravelId(String t_id, String e_id);
	
	public float getDistanceCovered(String tr_id, String t_id);
	
	public double getFuelUsed(String tr_id, String t_id);
	
	public float getTotalTime(String tr_id, String t_id);

	public String getDescription(String tr_id, String t_id);
	
	public String getTrip_id(String src, String dest);

}
