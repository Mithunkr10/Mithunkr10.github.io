package com.mithun.bean;

import java.math.*;

import javax.persistence.*;

@Entity
@Table(name="Youtube")
public class Youtube {
	
	@Id
	private String Date;
	private String Name;
	private BigInteger Subscribers;
	private BigInteger No_of_views;
	private long No_of_videos;
	public Youtube() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Youtube(String date, String name, BigInteger subscribers, BigInteger no_of_views, long no_of_videos) {
		super();
		Date = date;
		Name = name;
		Subscribers = subscribers;
		No_of_views = no_of_views;
		No_of_videos = no_of_videos;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public BigInteger getSubscribers() {
		return Subscribers;
	}
	public void setSubscribers(BigInteger subscribers) {
		Subscribers = subscribers;
	}
	public BigInteger getNo_of_views() {
		return No_of_views;
	}
	public void setNo_of_views(BigInteger no_of_views) {
		No_of_views = no_of_views;
	}
	public long getNo_of_videos() {
		return No_of_videos;
	}
	public void setNo_of_videos(long no_of_videos) {
		No_of_videos = no_of_videos;
	}
	@Override
	public String toString() {
		return "Youtube [Date=" + Date + ", Name=" + Name + ", Subscribers=" + Subscribers + ", No_of_views="
				+ No_of_views + ", No_of_videos=" + No_of_videos + "]";
	}
	

}
