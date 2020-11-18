package com.mithun.bean;

import javax.persistence.*;

@Entity
@Table(name="Expenditure")
public class Expenditure {

	@Id
	private String Expd_id;
	private String Trip_id;
	private String Timeline_id;
	private double Expenditure_total;
	private float Food_total;
	private float Stay_total;
	private float Miscellaneous_total;
	private double Fuel_total;
	public Expenditure() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Expenditure(String expd_id, String trip_id, String timeline_id, double expenditure_total, float food_total,
			float stay_total, float miscellaneous_total, double fuel_total) {
		super();
		Expd_id = expd_id;
		Trip_id = trip_id;
		Timeline_id = timeline_id;
		Expenditure_total = expenditure_total;
		Food_total = food_total;
		Stay_total = stay_total;
		Miscellaneous_total = miscellaneous_total;
		Fuel_total = fuel_total;
	}
	public String getExpd_id() {
		return Expd_id;
	}
	public void setExpd_id(String expd_id) {
		Expd_id = expd_id;
	}
	public String getTrip_id() {
		return Trip_id;
	}
	public void setTrip_id(String trip_id) {
		Trip_id = trip_id;
	}
	public String getTimeline_id() {
		return Timeline_id;
	}
	public void setTimeline_id(String timeline_id) {
		Timeline_id = timeline_id;
	}
	public double getExpenditure_total() {
		return Expenditure_total;
	}
	public void setExpenditure_total(double expenditure_total) {
		Expenditure_total = expenditure_total;
	}
	public float getFood_total() {
		return Food_total;
	}
	public void setFood_total(float food_total) {
		Food_total = food_total;
	}
	public float getStay_total() {
		return Stay_total;
	}
	public void setStay_total(float stay_total) {
		Stay_total = stay_total;
	}
	public float getMiscellaneous_total() {
		return Miscellaneous_total;
	}
	public void setMiscellaneous_total(float miscellaneous_total) {
		Miscellaneous_total = miscellaneous_total;
	}
	public double getFuel_total() {
		return Fuel_total;
	}
	public void setFuel_total(double fuel_total) {
		Fuel_total = fuel_total;
	}
	@Override
	public String toString() {
		return "Expenditure [Expd_id=" + Expd_id + ", Trip_id=" + Trip_id + ", Timeline_id=" + Timeline_id
				+ ", Expenditure_total=" + Expenditure_total + ", Food_total=" + Food_total + ", Stay_total="
				+ Stay_total + ", Miscellaneous_total=" + Miscellaneous_total + ", Fuel_total=" + Fuel_total + "]";
	}
	
}