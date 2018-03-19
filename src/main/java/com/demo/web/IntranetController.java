package com.demo.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.entities.Etudiant;
import com.demo.entities.News;
import com.demo.metier.IntanetMetier;

@Controller
public class IntranetController {

	@Autowired
	private IntanetMetier intranetMetier;
	
	
	@RequestMapping("/index")
	public String etudiant(Model model)
	{
	
		List<Etudiant> etudiants= intranetMetier.listEtudiants("colin");
		model.addAttribute("etudiants", etudiants);
		return "index";
	}
	
	@RequestMapping("/index1")
	public String etudiant1(Model model)
	{
	
		List<News> news= intranetMetier.listNewsActif(true);
		model.addAttribute("news", news);
		return "index1";
	}
	
	//STUDENT / TEACHER PAGES
	@RequestMapping("/News")
	public String news(Model model) {
		List<News> news= intranetMetier.listNews();
		model.addAttribute("news", news);
		return "News";
	}
		
		
	//STUDENT
	@RequestMapping("/EDT")
	public String EDT(Model model) {
		String msg="edt stud";
		model.addAttribute(msg);
		return "EDT";
	}
		
	@RequestMapping("/notes")
	public String notes(Model model) {
		String msg = "notes stud";
		model.addAttribute(msg);
		return "notes";
	}
		
		
	//TEACHER PAGE
	@RequestMapping("/tnotes")
	public String tNotes(Model model) {
		String msg = "notes teach";
		model.addAttribute(msg);
		return "tNotes";
	}
		
	//ADMIN PAGES
	@RequestMapping("/newsadmin")
	public String newsAdmin(Model model) {
		String msgAdmin="adminnews";
		model.addAttribute(msgAdmin);
		return "newsAdmin";
	}
	
	
	@RequestMapping("/account")
	public String account(Model model) {
		String msg="account";
		model.addAttribute(msg);
		return "account";
	}
	
	@RequestMapping("/adminAccount")
	public String adminAccount(Model model) {
		String msg="account";
		model.addAttribute(msg);
		return "adminAccount";
	}
	
	@RequestMapping("/teacherAccount")
	public String teacherAccount(Model model) {
		String msg="account";
		model.addAttribute(msg);
		return "teacherAccount";
	}
	
	@RequestMapping("/studentAccount")
	public String adminAccount(Model model) {
		String msg="account";
		model.addAttribute(msg);
		return "studentAccount";
	}
		
	@RequestMapping("/adminEDT")
	public String adminEDT(Model model) {
		String msg="admin EDT";
		model.addAttribute(msg);
		return "adminEDT";
	}
		
	
	
}