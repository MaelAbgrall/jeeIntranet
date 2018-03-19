package com.demo.metier;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.AdministrateurRepository;
import com.demo.dao.EnseignantRepository;
import com.demo.dao.EtudiantRepository;
import com.demo.dao.NewsRepository;
import com.demo.dao.NoteRepository;
import com.demo.entities.Administrateur;
import com.demo.entities.Enseignant;
import com.demo.entities.Etudiant;
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
}
