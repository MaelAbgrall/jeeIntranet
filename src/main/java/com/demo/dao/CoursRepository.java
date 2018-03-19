package com.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entities.Cours;

public interface CoursRepository extends JpaRepository<Cours, String>{

}
