package com.mithun;

import org.hibernate.SessionFactory;
import org.hibernate.jpa.HibernateEntityManagerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SuppressWarnings({ "deprecation", "unused" })
@SpringBootApplication
public class TravelDiaryApplication {
  
	public static void main(String[] args) {
		SpringApplication.run(TravelDiaryApplication.class, args);
	}

}
