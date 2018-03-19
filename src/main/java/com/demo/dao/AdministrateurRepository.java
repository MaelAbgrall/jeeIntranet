package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.entities.Administrateur;

public interface AdministrateurRepository extends JpaRepository<Administrateur, String>{
	
	@Query("SELECT a FROM Administrateur a")
	public List<Administrateur> listAdministrateur();

}
