package com.mithun.dao;

import java.sql.Blob;
import java.util.List;

public interface DocRepository {
	
	public Blob getPhotoById(int id);

	public Blob getPhoto();

	Blob getPhotoById(String id);

//	Blob getPhotoByIdAll(String id);

	public List<?> getidList(String id);

	Blob getPhotoByIdAll(String id, int did);

}