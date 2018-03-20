package com.demo.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.entities.Administrateur;
import com.demo.entities.Enseignant;
import com.demo.entities.Etudiant;
import com.demo.entities.Horaire;
import com.demo.entities.News;
import com.demo.entities.Note;
import com.demo.metier.IntanetMetier;

@Controller
public class IntranetController {
	
	private final String administrateur = "admininstrateur";
	private final String enseignant = "enseignant";
	private final String etudiant = "etudiant";
	
	private String profil = "";
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
	public String Horaire(Model model)
	{
	
		List<Horaire> horaire= intranetMetier.listHoraire("3CT");
		model.addAttribute("horaire", horaire);
		
		return "index1";
	}
	
	@RequestMapping("/login")
	public String login(Model model)
	{
	
		
		return "login";
	}
	
	
	
	@RequestMapping("/home")
	public String home(Model model)
	{
	
		List<News> news= intranetMetier.listNewsActif(true);
		model.addAttribute("news", news);
		return "home";
	}
	
	
	@RequestMapping("/contact")
	public String contact(Model model){
		return "contact";
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
		List<Horaire> horaire = intranetMetier.listHoraire("3CT");
		model.addAttribute("horaire", horaire);
		return "EDT";
	}
		
	@RequestMapping("/notes")
	public String notes(Model model) {
		List<Note> listNote = intranetMetier.listNote("colin");
		model.addAttribute("note", listNote);
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
		List<News> news= intranetMetier.listNews();
		model.addAttribute("news", news);
		return "newsAdmin";
	}
	
	
	@RequestMapping("/account")
	public String account(Model model) {
		String msg="account";
		model.addAttribute(msg);
		return "account";
	}
	
	
	@RequestMapping("/addAccount")
	public String addAccount(Model model) {
		String msg="account";
		model.addAttribute(msg);
		return "addAccount";
	}
	
	
	@RequestMapping("/listAdmin")
	public String Administrateur(HttpServletRequest request,Model model) {
		List<Administrateur> administrateur= intranetMetier.listAdministrateur();
		model.addAttribute("administrateur", administrateur);
		return "listAdmin";
	}
	
	@RequestMapping("/listTeacher")
	public String Enseignant(HttpServletRequest request,Model model) {
		List<Enseignant> enseignant= intranetMetier.listEnseignant();
		model.addAttribute("enseignant", enseignant);
		return "listTeacher";
	}
	
	@RequestMapping("/listStudent")
	public String Etudiant(HttpServletRequest request,Model model) {
		List<Etudiant> etudiants= intranetMetier.listEtudiants1();
		model.addAttribute("etudiant", etudiants);
		return "listStudent";
	}
		
	@RequestMapping("/adminEDT")
	public String adminEDT(Model model) {
		List<Horaire> horaire = intranetMetier.listHoraire("3CT");
		model.addAttribute("horaire", horaire);
		return "adminEDT";
	}
	
	@RequestMapping(value = "/postLogin")
	public String postLogin(HttpServletRequest request, HttpServletResponse response, Model model) {
		 String result = intranetMetier.postLogin(request, response);
		
	
		profil = result;
		
		model.addAttribute("profil", profil);
		String email = request.getParameter("email");
			
		switch(profil) {
		case administrateur:
			return "redirect:/listAdmin";
		case enseignant:
			return "redirect:/listTeacher";
		case etudiant:
			return "redirect:/listStudent";
			
		}
		
		return "postLogin";
}
		
	
	
}