package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.demo.entities.Horaire;

public interface HoraireRepository extends JpaRepository<Horaire, String>{
<<<<<<< HEAD
	@Query("SELECT h FROM Horaire h WHERE h.classe.nomClasse=:x")
=======
	
	@Query("SELECT e FROM Horaire WHERE e.classe.nomClasse=:x")
>>>>>>> 7c7a50bbd8f32102765bb2d8303754e9c908d2a8
	public List<Horaire> listHoraire(@Param("x") String nomClasse);

}
