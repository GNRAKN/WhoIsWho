package com.gunerakin.model;



import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;



@Entity
public class Beceri {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long beceriId;	
	private String beceriAdi;
	
	
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="departmanId")
	private Departman departman;
	


	public long getBeceriId() {
		return beceriId;
	}


	public void setBeceriId(long beceriId) {
		this.beceriId = beceriId;
	}


	public String getBeceriAdi() {
		return beceriAdi;
	}


	public void setBeceriAdi(String beceriAdi) {
		this.beceriAdi = beceriAdi;
	}


	
	
	
	

}
