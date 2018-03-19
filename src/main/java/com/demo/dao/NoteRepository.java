package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.demo.entities.Note;

public interface NoteRepository extends JpaRepository<Note, Long>{
	
	@Query("SELECT n FROM Note n WHERE nom=:x")
	public List<Note> listNote(@Param("x") String nom);

}
