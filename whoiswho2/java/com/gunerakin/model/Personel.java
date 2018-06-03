package com.gunerakin.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
public class Personel implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long personelId;	
	private String personelAdi;	
	private String personelSoyadi;	
	private String personelTelefon;	
	private String personelEposta;	
	private String personelPozisyon;	
	private String personelFotoUrl;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="username")
	private User user;	
	
	@ManyToMany(cascade = CascadeType.PERSIST,fetch=FetchType.EAGER)	
	@JoinTable(name="PERSONEL_BECERI",
	joinColumns=@JoinColumn(name="PERSONEL_ID"),
	inverseJoinColumns=@JoinColumn(name="BECERI_ID"))
	private Collection<Beceri> beceriler=new ArrayList<Beceri>();
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="departmanId")
	private Departman departman;	
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	 

	public Departman getDepartman() {
		return departman;
	}

	public void setDepartman(Departman departman) {
		this.departman = departman;
	}

	public long getPersonelId() {
		return personelId;
	}

	public void setPersonelId(long personelId) {
		this.personelId = personelId;
	}

	public String getPersonelAdi() {
		return personelAdi;
	}

	public void setPersonelAdi(String personelAdi) {
		this.personelAdi = personelAdi;
	}

	public String getPersonelSoyadi() {
		return personelSoyadi;
	}

	public void setPersonelSoyadi(String personelSoyadi) {
		this.personelSoyadi = personelSoyadi;
	}

	public String getPersonelTelefon() {
		return personelTelefon;
	}

	public void setPersonelTelefon(String personelTelefon) {
		this.personelTelefon = personelTelefon;
	}

	public String getPersonelEposta() {
		return personelEposta;
	}

	public void setPersonelEposta(String personelEposta) {
		this.personelEposta = personelEposta;
	}

	public String getPersonelFotoUrl() {
		return personelFotoUrl;
	}

	public void setPersonelFotoUrl(String personelFotoUrl) {
		this.personelFotoUrl = personelFotoUrl;
	}

	public String getPersonelPozisyon() {
		return personelPozisyon;
	}

	public void setPersonelPozisyon(String personelPozisyon) {
		this.personelPozisyon = personelPozisyon;
	}

	public Collection<Beceri> getBeceriler() {
		return beceriler;
	}

	public void setBeceriler(Collection<Beceri> beceriler) {
		this.beceriler = beceriler;
	}
	
	
	
}
