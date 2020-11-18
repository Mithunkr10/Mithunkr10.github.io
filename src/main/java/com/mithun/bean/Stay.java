package com.mithun.bean;

import javax.persistence.*;

@Entity
@Table(name="Stay")
public class Stay {
	
	@Id
	private String Stay_id;
	private String Trip_id;
	private String Timeline_id;
	private String Source;
	private String Destination;
	private float Time;
	public Stay() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Stay(String stay_id, String trip_id, String timeline_id, String source, String destination, float time) {
		super();
		Stay_id = stay_id;
		Trip_id = trip_id;
		Timeline_id = timeline_id;
		Source = source;
		Destination = destination;
		Time = time;
	}
	public String getStay_id() {
		return Stay_id;
	}
	public void setStay_id(String stay_id) {
		Stay_id = stay_id;
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
	public String getSource() {
		return Source;
	}
	public void setSource(String source) {
		Source = source;
	}
	public String getDestination() {
		return Destination;
	}
	public void setDestination(String destination) {
		Destination = destination;
	}
	public float getTime() {
		return Time;
	}
	public void setTime(float time) {
		Time = time;
	}
	@Override
	public String toString() {
		return "Stay [Stay_id=" + Stay_id + ", Trip_id=" + Trip_id + ", Timeline_id=" + Timeline_id + ", Source="
				+ Source + ", Destination=" + Destination + ", Time=" + Time + "]";
	}

}
