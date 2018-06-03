package com.gunerakin.model;



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



@Entity
public class Mesaj {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long mesajId;	
	private String mesajIcerik;
	private long hedefId;
	
	
	
	@ManyToOne(cascade=CascadeType.ALL)
//	@JoinTable(name="MESAJ_USER",
//	joinColumns={@JoinColumn(name="MESAJ_ID")},
//	inverseJoinColumns={@JoinColumn(name="USER_ID")})
	private User user;

	public long getMesajId() {
		return mesajId;
	}

	public void setMesajId(long mesajId) {
		this.mesajId = mesajId;
	}

	

	public String getMesajIcerik() {
		return mesajIcerik;
	}

	public void setMesajIcerik(String mesajIcerik) {
		this.mesajIcerik = mesajIcerik;
	}

	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public long getHedefId() {
		return hedefId;
	}

	public void setHedefId(long hedefId) {
		this.hedefId = hedefId;
	}
	
	
	
	
	
	


	
	
	

}
