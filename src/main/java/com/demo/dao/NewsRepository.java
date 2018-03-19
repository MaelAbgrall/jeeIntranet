package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.demo.entities.News;

public interface NewsRepository extends JpaRepository<News, String>{
	
	@Query("SELECT n FROM News n")
	public List<News> listNews();
	
	@Query("SELECT n FROM News n WHERE check_actif=:x")
	public List<News> listNewsActif(@Param("x") Boolean checkActif);

}
