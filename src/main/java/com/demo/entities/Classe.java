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
public class Classe implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	private Long idClasse;
	private String nomClasse;
	
	@OneToMany(mappedBy="classe")
	private Collection<Cours> cours;
	
	@ManyToOne
	@JoinColumn(name="nom")
	private Etudiant etudiant;
	
	public Classe() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Classe(String nomClasse) {
		super();
		this.nomClasse = nomClasse;
	}

	public Long getIdClasse() {
		return idClasse;
	}

	public void setIdClasse(Long idClasse) {
		this.idClasse = idClasse;
	}

	public Collection<Cours> getCours() {
		return cours;
	}

	public void setCours(Collection<Cours> cours) {
		this.cours = cours;
	}

	public String getNomClasse() {
		return nomClasse;
	}

	public void setNomClasse(String nomClasse) {
		this.nomClasse = nomClasse;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
