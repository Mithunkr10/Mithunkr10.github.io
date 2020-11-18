package com.mithun.bean;
import java.util.Arrays;

import javax.persistence.*;

@Entity
@Table(name="docs")
public class Doc {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String Trip_id;
	private String docName;
	private String docType;
	
	@Lob
	@Column(name = "photo", columnDefinition="MEDIUMBLOB")
	private byte[] data;
	
	public Doc() {}

	public Doc(String docName, String docType, byte[] data, String Trip_id) {
		super();
		this.docName = docName;
		this.docType = docType;
		this.data = data;
		this.Trip_id=Trip_id;
	}
	public Doc(String docName, String docType, byte[] data) {
		super();
		this.docName = docName;
		this.docType = docType;
		this.data = data;
	}

	public String getTrip_id() {
		return Trip_id;
	}

	public void setTrip_id(String trip_id) {
		Trip_id = trip_id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getDocType() {
		return docType;
	}

	public void setDocType(String docType) {
		this.docType = docType;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}

	@Override
	public String toString() {
		return "Doc [id=" + id + ", Trip_id=" + Trip_id + ", docName=" + docName + ", docType=" + docType + ", data="
				+ Arrays.toString(data) + "]";
	}

}