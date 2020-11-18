package com.mithun.dao;


import javax.transaction.Transactional;


import org.springframework.stereotype.Repository;


@Repository
@Transactional
public interface Travel_diary_Trip {

	public String getTrip_id(String src,String dest);

}
