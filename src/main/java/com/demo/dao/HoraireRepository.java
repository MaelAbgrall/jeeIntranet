package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.demo.entities.Horaire;

public interface HoraireRepository extends JpaRepository<Horaire, String>{

	@Query("SELECT h FROM Horaire h WHERE h.classe.nomClasse=:x")

	public List<Horaire> listHoraire(@Param("x") String nomClasse);

}
