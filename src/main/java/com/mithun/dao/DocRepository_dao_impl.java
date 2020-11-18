package com.mithun.dao;

import java.sql.Blob;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.mithun.bean.Doc;

@Repository("DocRepository")
@Transactional
public class DocRepository_dao_impl implements DocRepository {
	
	@PersistenceContext
	private EntityManager em;
	
	private JdbcTemplate jdbcTemp;
	
	public JdbcTemplate getJdbcTemp() {
		return jdbcTemp;
	}
	@Autowired
	public void setJdbcTemp(JdbcTemplate jdbcTemp) {
		this.jdbcTemp = jdbcTemp;
	}

	@Override
	public Blob getPhotoById(int id) {

		String query = "select photo from docs where id=?";

		Blob photo = jdbcTemp.queryForObject(query, new Object[] { id }, Blob.class);

		return photo;
	}
	@Override
	public Blob getPhotoById(String id) {

		String query = "select photo from docs where Trip_id=? LIMIT 1";

		Blob photo = jdbcTemp.queryForObject(query, new Object[] { id }, Blob.class);

		return photo;
	}
	
	@Override
	public Blob getPhotoByIdAll(String id,int did) {

		Blob photo = null;

		String query = "select photo from docs where Trip_id=? and id=?";
		System.out.println("11111111111111111111");
		try {
		photo =jdbcTemp.queryForObject(query, new Object[] { id , did }, Blob.class);
		}catch (Exception e) {
			photo= null;
		}
		System.out.println("Hi printing photo");
		System.out.println(photo);

			return photo;
	}
	@Override
	public Blob getPhoto() {

		String query = "select photo from docs";

		Blob photo = jdbcTemp.queryForObject(query, Blob.class);

		return photo;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<?> getidList(String id) {
		javax.persistence.Query q = em.createNativeQuery("select id from docs where Trip_id=:tid");
  		q.setParameter("tid", id);
  		System.out.println(q);
  		List<Doc> l=q.getResultList();
  		System.out.println(l);
  		return l;
	}
}
