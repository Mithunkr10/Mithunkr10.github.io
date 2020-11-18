package com.mithun.bean;

import javax.persistence.*;

@Entity
@Table(name="Travel_Details")
public class Travel {

	@Id
	private String Travel_id;
	private String Trip_id;
	private String Timeline_id;
	private String Exp_id;
	private String gid;
	private String Stay_id;
	private String TT_id;
	private String Nfs_id;
	private float Distance_covered;
	private double fuel;
	private double Total_expenditure;
	private float Total_time;
	private String Description;
	public Travel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Travel(String travel_id, String trip_id, String timeline_id, String exp_id, String gid, String stay_id,
			String tT_id, String id, float distance_covered, double fuel, double total_expenditure, float total_time,
			String description) {
		super();
		Travel_id = travel_id;
		Trip_id = trip_id;
		Timeline_id = timeline_id;
		Exp_id = exp_id;
		this.gid = gid;
		Stay_id = stay_id;
		TT_id = tT_id;
		this.Nfs_id = id;
		Distance_covered = distance_covered;
		this.fuel = fuel;
		Total_expenditure = total_expenditure;
		Total_time = total_time;
		Description = description;
	}
	public String getTravel_id() {
		return Travel_id;
	}
	public void setTravel_id(String travel_id) {
		Travel_id = travel_id;
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
	public String getExp_id() {
		return Exp_id;
	}
	public void setExp_id(String exp_id) {
		Exp_id = exp_id;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getStay_id() {
		return Stay_id;
	}
	public void setStay_id(String stay_id) {
		Stay_id = stay_id;
	}
	public String getTT_id() {
		return TT_id;
	}
	public void setTT_id(String tT_id) {
		TT_id = tT_id;
	}
	public String getId() {
		return Nfs_id;
	}
	public void setId(String id) {
		this.Nfs_id = id;
	}
	public float getDistance_covered() {
		return Distance_covered;
	}
	public void setDistance_covered(float distance_covered) {
		Distance_covered = distance_covered;
	}
	public double getFuel() {
		return fuel;
	}
	public void setFuel(double fuel) {
		this.fuel = fuel;
	}
	public double getTotal_expenditure() {
		return Total_expenditure;
	}
	public void setTotal_expenditure(double total_expenditure) {
		Total_expenditure = total_expenditure;
	}
	public float getTotal_time() {
		return Total_time;
	}
	public void setTotal_time(float total_time) {
		Total_time = total_time;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	@Override
	public String toString() {
		return "Travel [Travel_id=" + Travel_id + ", Trip_id=" + Trip_id + ", Timeline_id=" + Timeline_id + ", Exp_id="
				+ Exp_id + ", gid=" + gid + ", Stay_id=" + Stay_id + ", TT_id=" + TT_id + ", id=" + Nfs_id
				+ ", Distance_covered=" + Distance_covered + ", fuel=" + fuel + ", Total_expenditure="
				+ Total_expenditure + ", Total_time=" + Total_time + ", Description=" + Description + "]";
	}
	
}
