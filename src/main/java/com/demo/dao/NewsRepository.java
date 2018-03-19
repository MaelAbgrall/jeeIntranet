package com.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.entities.News;

public interface NewsRepository extends JpaRepository<News, String>{
	
	@Query("SELECT n FROM News n")
	public List<News> listNews();

}
