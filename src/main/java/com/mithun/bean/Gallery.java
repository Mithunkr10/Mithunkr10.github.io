package com.mithun.bean;

import java.util.Arrays;

import javax.persistence.*;

@Entity
@Table(name="Gallery")
public class Gallery {
	
	@Id
	private String gid;
	private String Trip_id;
	private String[] Image_id;
	public Gallery() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Gallery(String gid, String trip_id) {
		super();
		this.gid = gid;
		Trip_id = trip_id;
	}
	public String getGid() {
		return gid;
	}
	public void setGid(String gid) {
		this.gid = gid;
	}
	public String getTrip_id() {
		return Trip_id;
	}
	public void setTrip_id(String trip_id) {
		Trip_id = trip_id;
	}
	public String[] getImage_id() {
		return Image_id;
	}
	public void setImage_id(String[] image_id) {
		Image_id = image_id;
	}
	@Override
	public String toString() {
		return "Gallery [gid=" + gid + ", Trip_id=" + Trip_id + ", Image_id=" + Arrays.toString(Image_id) + "]";
	}


}
