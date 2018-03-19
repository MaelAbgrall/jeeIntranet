package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.entities.Enseignant;

public interface EnseignantRepository extends JpaRepository<Enseignant, String>{
	
	@Query("SELECT e FROM Enseignant e")
	public List<Enseignant> listEnseignant();

}
