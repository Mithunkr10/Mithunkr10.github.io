package com.mithun.bean;

import javax.persistence.*;

@Entity
@Table(name="No_Of_Stops")
public class No_of_stops {

	@Id
	private String Nfs_id;
	private String Trip_id;
	private String Timeline_id;
	private String Stop_name;
	public No_of_stops() {
		super();
		// TODO Auto-generated constructor stub
	}
	public No_of_stops(String id, String trip_id, String timeline_id, String stop_name) {
		super();
		this.Nfs_id = id;
		Trip_id = trip_id;
		Timeline_id = timeline_id;
		Stop_name = stop_name;
	}

	public String getNfs_id() {
		return Nfs_id;
	}
	public void setNfs_id(String nfs_id) {
		Nfs_id = nfs_id;
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
	public String getStop_name() {
		return Stop_name;
	}
	public void setStop_name(String stop_name) {
		Stop_name = stop_name;
	}
	@Override
	public String toString() {
		return "No_of_stops [NFSid=" + Nfs_id + ", Trip_id=" + Trip_id + ", Timeline_id=" + Timeline_id + ", Stop_name="
				+ Stop_name + "]";
	}
	
	
}
