package com.demo.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Horaire implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	private Long idHoraire;
	private String heure;
	private String jour;
	
	@ManyToOne
	@JoinColumn(name="idCours")
	private Cours cours;
	
	public Horaire() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Horaire(String heure, String jour, Cours cours) {
		super();
		this.heure = heure;
		this.jour = jour;
		this.cours = cours;
	}

	public Long getIdHoraire() {
		return idHoraire;
	}

	public void setIdHoraire(Long idHoraire) {
		this.idHoraire = idHoraire;
	}

	public String getHeure() {
		return heure;
	}

	public void setHeure(String heure) {
		this.heure = heure;
	}

	public String getJour() {
		return jour;
	}

	public void setJour(String jour) {
		this.jour = jour;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
