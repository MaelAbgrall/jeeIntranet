package com.demo.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.demo.entities.Administrateur;
import com.demo.entities.Enseignant;
import com.demo.entities.Etudiant;
import com.demo.entities.News;
import com.demo.entities.Note;
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
	public String Etiant(Model model)
	{
	
		List<Etudiant> etudiant= intranetMetier.listEtudiantClasse("3CB");
		model.addAttribute("etudiant", etudiant);
		
		return "index1";
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
	
	
	@RequestMapping("/addAccount")
	public String addAccount(Model model) {
		String msg="account";
		model.addAttribute(msg);
		return "addAccount";
	}
	
	
	@RequestMapping("/listAdmin")
	public String Administrateur(Model model) {
		List<Administrateur> administrateur= intranetMetier.listAdministrateur();
		model.addAttribute("administrateur", administrateur);
		return "listAdmin";
	}
	
	@RequestMapping("/listTeacher")
	public String Enseignant(Model model) {
		List<Enseignant> enseignant= intranetMetier.listEnseignant();
		model.addAttribute("enseignant", enseignant);
		return "listTeacher";
	}
	
	@RequestMapping("/listStudent")
	public String Etudiant(Model model) {
		List<Etudiant> etudiants= intranetMetier.listEtudiants1();
		model.addAttribute("etudiants", etudiants);
		return "listStudent";
	}
		
	@RequestMapping("/adminEDT")
	public String adminEDT(Model model) {
		String msg="admin EDT";
		model.addAttribute(msg);
		return "adminEDT";
	}
		
	
	
}