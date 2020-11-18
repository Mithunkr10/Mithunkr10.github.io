package com.mithun.bean;

import javax.persistence.*;

@Entity
@Table(name="AboutMe")
public class Aboutme {

	@Id
	private int cur_year;
	private int years_of_experience;
	public Aboutme() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Aboutme(int cur_year, int years_of_experience) {
		super();
		this.cur_year = cur_year;
		this.years_of_experience = years_of_experience;
	}
	public int getCur_year() {
		return cur_year;
	}
	public void setCur_year(int cur_year) {
		this.cur_year = cur_year;
	}
	public int getYears_of_experience() {
		return years_of_experience;
	}
	public void setYears_of_experience(int years_of_experience) {
		this.years_of_experience = years_of_experience;
	}
	@Override
	public String toString() {
		return "Aboutme [cur_year=" + cur_year + ", years_of_experience=" + years_of_experience + "]";
	}
	
}
