package com.gunerakin.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;


@Entity
public class Departman implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long departmanId;
	
	private String departmanAdi;
	
	

	
	public long getDepartmanId() {
		return departmanId;
	}

	public void setDepartmanId(long departmanId) {
		this.departmanId = departmanId;
	}

	public String getDepartmanAdi() {
		return departmanAdi;
	}

	public void setDepartmanAdi(String departmanAdi) {
		this.departmanAdi = departmanAdi;
	}

	
}
