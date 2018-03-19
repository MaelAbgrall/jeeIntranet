package com.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entities.Enseignant;

public interface EnseignantRepository extends JpaRepository<Enseignant, String>{

}
