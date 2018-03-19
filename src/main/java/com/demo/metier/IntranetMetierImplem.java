package com.demo.metier;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.EtudiantRepository;
import com.demo.dao.NewsRepository;
import com.demo.entities.Etudiant;
import com.demo.entities.News;

@Service
@Transactional
public class IntranetMetierImplem implements IntanetMetier{
	
	@Autowired
	private EtudiantRepository etudiantRep;
	@Autowired
	private NewsRepository newsRep;
	
	@Override
	public List<Etudiant> listEtudiants(String nom){
		
		List<Etudiant> l =etudiantRep.listEtudiants(nom);
		
		
		return l;
	}
		
	@Override
	public List<Etudiant> listEtudiants1(){
			
	List<Etudiant> l1 =etudiantRep.listEtudiants1();
			
			
	return l1;
	}
	
	@Override
	public List<News> listNews(){
		
		List<News> l2 =newsRep.listNews();
		
		return l2;
	}
	

}
