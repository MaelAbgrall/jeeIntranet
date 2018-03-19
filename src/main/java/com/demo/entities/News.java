package com.demo.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class News implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	private Long idNews;
	private String linkImage;
	private String description;
	private String texte;
	private Boolean checkActif;
	private String dateExpiration;
	
	
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}


	public News(String linkImage, String description, String texte, Boolean checkActif, String dateExpiration) {
		super();
		this.linkImage = linkImage;
		this.description = description;
		this.texte = texte;
		this.checkActif = checkActif;
		this.dateExpiration = dateExpiration;
	}


	public Long getIdNews() {
		return idNews;
	}


	public void setIdNews(Long idNews) {
		this.idNews = idNews;
	}


	public String getLinkImage() {
		return linkImage;
	}


	public void setLinkImage(String linkImage) {
		this.linkImage = linkImage;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getTexte() {
		return texte;
	}


	public void setTexte(String texte) {
		this.texte = texte;
	}


	public Boolean getCheckActif() {
		return checkActif;
	}


	public void setCheckActif(Boolean checkActif) {
		this.checkActif = checkActif;
	}


	public String getDateExpiration() {
		return dateExpiration;
	}


	public void setDateExpiration(String dateExpiration) {
		this.dateExpiration = dateExpiration;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	

}
