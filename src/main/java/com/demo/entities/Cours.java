package com.demo.entities;

import java.io.Serializable;
import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Cours implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	private Long idCours;
	private String nomCours;
	
	@OneToMany(mappedBy="cours")
	private Collection<Horaire> horaires;
	
	@ManyToOne
	@JoinColumn(name="idClasse")
	private Classe classe;
	
	@ManyToOne
	@JoinColumn(name="idNote")
	private Note note;
	
	
	public Collection<Horaire> getHoraires() {
		return horaires;
	}


	public void setHoraires(Collection<Horaire> horaires) {
		this.horaires = horaires;
	}


	public Classe getClasse() {
		return classe;
	}


	public void setClasse(Classe classe) {
		this.classe = classe;
	}


	public Cours() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Cours(String nomCours) {
		super();
		this.nomCours = nomCours;
	}


	public Long getIdCours() {
		return idCours;
	}


	public void setIdCours(Long idCours) {
		this.idCours = idCours;
	}


	public String getNomCours() {
		return nomCours;
	}


	public void setNomCours(String nomCours) {
		this.nomCours = nomCours;
	}


	public Collection<Horaire> getHoraire() {
		return horaires;
	}


	public void setHoraire(Collection<Horaire> horaires) {
		this.horaires = horaires;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
