package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.demo.entities.Etudiant;



public interface EtudiantRepository extends JpaRepository<Etudiant, String>{

	@Query("SELECT e FROM Etudiant e WHERE nom=:x")
	public List<Etudiant> listEtudiants(@Param("x") String nom);
	
	@Query("SELECT e FROM Etudiant e")
	public List<Etudiant> listEtudiants1();
	
	

}
