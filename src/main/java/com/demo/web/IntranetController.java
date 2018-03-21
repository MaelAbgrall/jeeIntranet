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
	
	
	
	@RequestMapping("/shome")
	public String shome(Model model){
		List<News> news= intranetMetier.listNewsActif(true);
		model.addAttribute("news", news);
		return "shome";
	}
	
	
	@RequestMapping("/scontact")
	public String scontact(Model model){
		return "scontact";
	}
	
	@RequestMapping("/sNews")
	public String snews(Model model) {
		List<News> news= intranetMetier.listNews();
		model.addAttribute("news", news);
		return "sNews";
	}
		
		
	@RequestMapping("/sEDT")
	public String sEDT(Model model) {
		List<Horaire> horaire = intranetMetier.listHoraire("3CT");
		model.addAttribute("horaire", horaire);
		return "sEDT";
	}
		
	@RequestMapping("/snotes")
	public String snotes(Model model) {
		List<Note> listNote = intranetMetier.listNote("colin");
		model.addAttribute("note", listNote);
		return "snotes";
	}
		
		
	//TEACHER PAGE
	@RequestMapping("/tnotes")
	public String tNotes(Model model) {
		List<Etudiant> listEtudiant = intranetMetier.listEtudiantClasse("3CT");
		model.addAttribute("etudiant", listEtudiant);
		return "tNotes";
	}
		
	@RequestMapping("/tNews")
	public String tnews(Model model) {
		List<News> news= intranetMetier.listNews();
		model.addAttribute("news", news);
		return "tNews";
	}
	
	@RequestMapping("/thome")
	public String thome(Model model){	
		List<News> news= intranetMetier.listNewsActif(true);
		model.addAttribute("news", news);
		return "thome";
	}
	
	@RequestMapping("/tcontact")
	public String tcontact(Model model){
		return "tcontact";
	}
	
	
	
	
	//ADMIN PAGES
	@RequestMapping("/anewsadmin")
	public String anewsAdmin(Model model) {
		List<News> news= intranetMetier.listNews();
		model.addAttribute("news", news);
		return "anewsAdmin";
	}
	
	
	@RequestMapping("/account")
	public String account(Model model) {
		return "account";
	}
	
	
	@RequestMapping("/addAccount")
	public String addAccount(Model model) {
		return "addAccount";
	}
	
	
	@RequestMapping("/alistAdmin")
	public String Administrateur(HttpServletRequest request,Model model) {
		List<Administrateur> administrateur= intranetMetier.listAdministrateur();
		model.addAttribute("administrateur", administrateur);
		return "alistAdmin";
	}
	
	@RequestMapping("/alistTeacher")
	public String Enseignant(HttpServletRequest request,Model model) {
		List<Enseignant> enseignant= intranetMetier.listEnseignant();
		model.addAttribute("enseignant", enseignant);
		return "alistTeacher";
	}
	
	@RequestMapping("/alistStudent")
	public String Etudiant(HttpServletRequest request,Model model) {
		List<Etudiant> etudiants= intranetMetier.listEtudiants1();
		model.addAttribute("etudiant", etudiants);
		return "alistStudent";
	}
		
	@RequestMapping("/adminEDT")
	public String adminEDT(Model model) {
		List<Horaire> horaire = intranetMetier.listHoraire("3CT");
		model.addAttribute("horaire", horaire);
		return "adminEDT";
	}
	
	@RequestMapping("/admincontact")
	public String acontact(Model model){
		return "admincontact";
	}
	
	@RequestMapping("/ahome")
	public String ahome(Model model){
		List<News> news= intranetMetier.listNewsActif(true);
		model.addAttribute("news", news);
		return "ahome";
	}
	
	
	
	
	@PostMapping(value = "/postLogin")
	public String postLogin(HttpServletRequest request, HttpServletResponse response, Model model) {
		 String result = intranetMetier.postLogin(request, response);
		
	
		profil = result;
		
		model.addAttribute("profil", profil);
		String email = request.getParameter("email");
			
		switch(profil) {
		case "administrateur":
			return "redirect:/ahome";
		case "enseignant":
			return "redirect:/thome";
		case "etudiant":
			return "redirect:/shome";
			
		}
		return "redirect:/login";
	
}
		
	
	
}