package com.mithun.bean;

import java.math.BigInteger;

import javax.persistence.*;

@Entity
@Table(name="Trip_Details")
public class Trip {
	
	@Id
	private String Trip_id;
	private String Trip_start_date;
	private String Trip_end_date;
	private String Trip_source;
	private String Trip_destination;
	private BigInteger Views_on_youtube;
	private String Description;
	public Trip() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Trip(String trip_id, String trip_start_date, String trip_end_date, String trip_source,
			String trip_destination, String description) {
		super();
		Trip_id = trip_id;
		Trip_start_date = trip_start_date;
		Trip_end_date = trip_end_date;
		Trip_source = trip_source;
		Trip_destination = trip_destination;
		Description = description;
	}
	public String getTrip_id() {
		return Trip_id;
	}
	public void setTrip_id(String trip_id) {
		Trip_id = trip_id;
	}
	public String getTrip_start_date() {
		return Trip_start_date;
	}
	public void setTrip_start_date(String trip_start_date) {
		Trip_start_date = trip_start_date;
	}
	public String getTrip_end_date() {
		return Trip_end_date;
	}
	public void setTrip_end_date(String trip_end_date) {
		Trip_end_date = trip_end_date;
	}
	public String getTrip_source() {
		return Trip_source;
	}
	public void setTrip_source(String trip_source) {
		Trip_source = trip_source;
	}
	public String getTrip_destination() {
		return Trip_destination;
	}
	public void setTrip_destination(String trip_destination) {
		Trip_destination = trip_destination;
	}
	public BigInteger getViews_on_youtube() {
		return Views_on_youtube;
	}
	public void setViews_on_youtube(BigInteger views_on_youtube) {
		Views_on_youtube = views_on_youtube;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	@Override
	public String toString() {
		return "Trip [Trip_id=" + Trip_id + ", Trip_start_date=" + Trip_start_date + ", Trip_end_date=" + Trip_end_date
				+ ", Trip_source=" + Trip_source + ", Trip_destination=" + Trip_destination + ", Views_on_youtube="
				+ Views_on_youtube + ", Description=" + Description + "]";
	}
	
}
