package com.demo.dao;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.demo.entities.Classe;

public interface ClasseRepository extends JpaRepository<Classe, String>{

	@Query("SELECT c FROM Classe c WHERE c.etudiant.nom=:x")
	public Classe listClasseEtudiant(@Param("x") String nom);
}
