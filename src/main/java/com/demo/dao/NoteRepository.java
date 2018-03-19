package com.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.entities.Note;

public interface NoteRepository extends JpaRepository<Note, Long>{

}
