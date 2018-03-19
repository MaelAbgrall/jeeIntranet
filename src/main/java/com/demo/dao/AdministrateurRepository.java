package com.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entities.Administrateur;

public interface AdministrateurRepository extends JpaRepository<Administrateur, String>{

}
