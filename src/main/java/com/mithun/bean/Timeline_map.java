package com.mithun.bean;

import javax.persistence.*;

@Entity
@Table(name="Timeline_map")
public class Timeline_map {

	@Id
	private String Timeline_id;
	private String Trip_id;
	private String Source;
	private int No_of_stops;
	private String Destination;
	public Timeline_map() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Timeline_map(String timeline_id, String trip_id, String source, int no_of_stops, String destination) {
		super();
		Timeline_id = timeline_id;
		Trip_id = trip_id;
		Source = source;
		No_of_stops = no_of_stops;
		Destination = destination;
	}
	public String getTimeline_id() {
		return Timeline_id;
	}
	public void setTimeline_id(String timeline_id) {
		Timeline_id = timeline_id;
	}
	public String getTrip_id() {
		return Trip_id;
	}
	public void setTrip_id(String trip_id) {
		Trip_id = trip_id;
	}
	public String getSource() {
		return Source;
	}
	public void setSource(String source) {
		Source = source;
	}
	public int getNo_of_stops() {
		return No_of_stops;
	}
	public void setNo_of_stops(int no_of_stops) {
		No_of_stops = no_of_stops;
	}
	public String getDestination() {
		return Destination;
	}
	public void setDestination(String destination) {
		Destination = destination;
	}
	@Override
	public String toString() {
		return "Timeline_map [Timeline_id=" + Timeline_id + ", Trip_id=" + Trip_id + ", Source=" + Source
				+ ", No_of_stops=" + No_of_stops + ", Destination=" + Destination + "]";
	}
	
}
