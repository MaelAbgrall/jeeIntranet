package com.demo.metier;


import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.AdministrateurRepository;
import com.demo.dao.EnseignantRepository;
import com.demo.dao.EtudiantRepository;
import com.demo.dao.HoraireRepository;
import com.demo.dao.NewsRepository;
import com.demo.dao.NoteRepository;
import com.demo.entities.Administrateur;
import com.demo.entities.Enseignant;
import com.demo.entities.Etudiant;
import com.demo.entities.Horaire;
import com.demo.entities.News;
import com.demo.entities.Note;

@Service
@Transactional
public class IntranetMetierImplem implements IntanetMetier{
	
	@Autowired
	private EtudiantRepository etudiantRep;
	@Autowired
	private NewsRepository newsRep;
	@Autowired
	private EnseignantRepository enseignantRep;
	@Autowired
	private AdministrateurRepository administrateurRep;
	@Autowired
	private NoteRepository noteRep;
	@Autowired
	private HoraireRepository horaireRep;
	
	@Override
	public List<Etudiant> listEtudiants(String nom){
		
		List<Etudiant> l =etudiantRep.listEtudiants(nom);
		
		
		return l;
	}
		
	@Override
	public List<Etudiant> listEtudiants1(){
			
	List<Etudiant> l =etudiantRep.listEtudiants1();
			
			
	return l;
	}
	
	@Override
	public List<News> listNews(){
		
		List<News> l =newsRep.listNews();
		
		return l;
	}
	
	@Override
	public List<News> listNewsActif(Boolean checkActif){
		
		List<News> l =newsRep.listNewsActif(checkActif);
		
		
		return l;
	}
	
	
	@Override
	public List<Enseignant> listEnseignant(){
		
		List<Enseignant> l = enseignantRep.listEnseignant();
		
		
		return l;
	}
	
	@Override
	public List<Administrateur> listAdministrateur(){
		
		List<Administrateur> l = administrateurRep.listAdministrateur();
		
		
		return l;
	}

	@Override
	public List<Note> listNote(String nom){
		
		List<Note> l = noteRep.listNote(nom);
		
		
		return l;
	}
	
	@Override
	public List<Etudiant> listEtudiantClasse(String nomClasse){
		
		List<Etudiant> l =etudiantRep.listEtudiantClasse(nomClasse);
		
		
		return l;
	}
	
	@Override
	public List<Horaire> listHoraire(String nomClasse){
		
		List<Horaire> l =horaireRep.listHoraire(nomClasse);
		
		
		return l;
	}
	
	@Override
	public String postLogin(HttpServletRequest request, HttpServletResponse response) {
		String passwords1 = "";

		String email = request.getParameter("email");
		String passwords = request.getParameter("password");
		String profil = request.getParameter("profil");
		
		switch (profil) {
		case "administrateur":
			Administrateur a = administrateurRep.findAdministrateur(email);
			if (a != null) {
				passwords1 = a.getPassword();
				if (passwords.equals(passwords1)) {
				
					return profil;
					
				
					
			}
			return profil;
			}
			break;
		
		case "enseignant":
			Enseignant e = enseignantRep.findEnseignant(email);
			if (e != null) {
				
				passwords1 = e.getPassword();
				if (passwords.equals(passwords1)) {
				
					return profil;
				}
				return profil;
			}
			break;
			
		case "etudiant":
			Etudiant etu = etudiantRep.findEtudiant(email);
			if (etu != null) {
				passwords1 = etu.getPassword();
				
				if (passwords.equals(passwords1)) {
				
					return profil;
				}
				return profil;		
			}
			break;
		}
		return profil;
}

	@Override
	public Etudiant findEtudiant(String email) {
		Etudiant e = etudiantRep.findEtudiant(email);
		
		return e;
	}
}
