package com.mithun.dao;


public interface Travel_diary_Expenditure {
	
	public String getExpenditureID(String t_id);
	
	public float getFoodTotal(String e_id);
	
	public double getFuelTotal(String e_id);
	
	public float getMiscellaneousTotal(String e_id);
	
	public float getStayTotal(String e_id);
	
	

}
