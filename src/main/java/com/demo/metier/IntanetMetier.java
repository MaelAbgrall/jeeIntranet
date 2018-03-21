package com.demo.metier;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demo.entities.Administrateur;
import com.demo.entities.Enseignant;
import com.demo.entities.Etudiant;
import com.demo.entities.Horaire;
import com.demo.entities.News;
import com.demo.entities.Note;

public interface IntanetMetier {

	
	public List<Etudiant> listEtudiants(String nom);
	public List<Etudiant> listEtudiants1();
	public List<News> listNews();
	public List<News> listNewsActif(Boolean checkActif);
	public List<Enseignant> listEnseignant();
	public List<Administrateur> listAdministrateur();
	public List<Note> listNote(String nom);
	public List<Etudiant> listEtudiantClasse(String nomClasse);
	public List<Horaire> listHoraire(String nomClasse);
	public String postLogin(HttpServletRequest request, HttpServletResponse response);
	public Etudiant findEtudiant(String email);

}
