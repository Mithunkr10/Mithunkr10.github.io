package com.mithun.services;

import java.sql.Blob;
import java.util.List;
import java.util.Optional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.mithun.bean.Doc;
import com.mithun.dao.DocRepository;
import com.mithun.dao.DocRepository_JPA;


@Service
public class DocStorageService {
	
	//private JdbcTemplate jdbcTemp;
	
	@PersistenceContext
	private EntityManager em;
	
  @Autowired
  private DocRepository_JPA docRepository;
  
  @Autowired
  private DocRepository docRepdao;
  
  public Doc saveFile(MultipartFile file,String Trip_id) {
	  String docname = file.getOriginalFilename();
	  try {
		  Doc doc = new Doc(docname,file.getContentType(),file.getBytes(),Trip_id);
		  return docRepository.save(doc);
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	  return null;
  }
  
  public Doc saveFile(MultipartFile file) {
	  String docname = file.getOriginalFilename();
	  try {
		  Doc doc = new Doc(docname,file.getContentType(),file.getBytes());
		  return docRepository.save(doc);
	  }
	  catch(Exception e) {
		  e.printStackTrace();
	  }
	  return null;
  }
  
  public Optional<Doc> getFile(Integer fileId) {
	  return docRepository.findById(fileId);
  }
  
  @SuppressWarnings("unchecked")
  public List<Doc> getFiles(String Trip_id){
  	  
  		javax.persistence.Query q = em.createNativeQuery("select id from docs where Trip_id=:t_id");
  		q.setParameter("t_id", Trip_id);
  		System.out.println("12345678912345678");
  		List<Doc> l=q.getResultList();
  		System.out.println(l);
  	  return l;
    }
  
public List<Doc> getFiles(){
	  return docRepository.findAll();
		
  }
}