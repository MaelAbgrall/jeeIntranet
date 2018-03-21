package com.demo.web;

import java.util.List;

import javax.servlet.http.Cookie;
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
import com.demo.entities.Classe;
import com.demo.entities.Note;
import com.demo.metier.IntanetMetier;

@Controller
public class IntranetController {
	
	private final String administrateur = "admininstrateur";
	private final String enseignant = "enseignant";
	private final String etudiant = "etudiant";
	
	private String profil = "";
	private String email = "";
	private String classe = "";
	private String name= "";
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
	public String Classe(Model model)
	{
	
		Classe classe= intranetMetier.listClasseEtudiant("colin");
		model.addAttribute("classe", classe);
		
		return "index1";
	}
	
	@RequestMapping("/login")
	public String login(Model model){
		return "login";
	}
	
	@PostMapping(value = "/postLogin")
	public String postLogin(HttpServletRequest request, HttpServletResponse response, Model model) {
		 String result = intranetMetier.postLogin(request, response);
		
	
		profil = result;
		
		String email = request.getParameter("email");
		//Etudiant stud = intranetMetier.findEtudiant(email);
		
		Cookie cookieType = new Cookie("profil", profil);
		cookieType.setMaxAge(60 * 60 * 24);
		cookieType.setPath("/");
		cookieType.setSecure(false);
		response.addCookie(cookieType);
		model.addAttribute("profil", profil);
		
		switch(profil) {
		case "administrateur":
			return "redirect:/ahome";
		case "enseignant":
			return "redirect:/thome";
		case "etudiant":
			Etudiant stud = intranetMetier.findEtudiant(email);
			name = stud.getNom();
			Cookie cookiename = new Cookie("name", name);
			cookiename.setMaxAge(60 * 60 * 24);
			cookiename.setPath("/");
			cookiename.setSecure(false);
			response.addCookie(cookiename);
			
			Classe myclass = stud.getClasse();
			classe = myclass.getNomClasse();
			Cookie cookieclasse = new Cookie("classe", classe);
			cookieclasse.setMaxAge(60 * 60 * 24);
			cookieclasse.setPath("/");
			cookieclasse.setSecure(false);
			response.addCookie(cookiename);
			return "redirect:/shome";			
		}
		return "redirect:/login";
	}
	
	@RequestMapping("/logout")
	public String logout(Model model){
		/*Cookie[] cookies = request.getCookies();
		if (cookies == null) {
			return "redirect:/login";
		}
		
		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("email") || cookie.getName().equals("userType")) {
			cookie.setValue("");
			response.addCookie(cookie);
			userType = "";
			email = "";
		}*/
		return "redirect:/login";
			
	}
	
	
	@RequestMapping("/shome")
	public String shome(Model model){
		if (profil != null && profil.equals("etudiant")) {
			List<News> news= intranetMetier.listNewsActif(true);
			model.addAttribute("news", news);
			return "shome";
		}
		else {
			return "redirect:/login";
		}
			
	}
	
	
	@RequestMapping("/scontact")
	public String scontact(Model model){
		if (profil != null && profil.equals("etudiant")) {
			return "scontact";
		}
		else {
			return "redirect:/login";
		}
	}
	
	@RequestMapping("/sNews")
	public String snews(Model model) {
		if (profil != null && profil.equals("etudiant")) {
			List<News> news= intranetMetier.listNews();
			model.addAttribute("news", news);
			return "sNews";
		}
		else {
			return "redirect:/login";
		}
		
	}
		
		
	@RequestMapping("/sEDT")
	public String sEDT(Model model) {
		if (profil != null && profil.equals("etudiant")) {
			
			List<Horaire> horaire = intranetMetier.listHoraire(classe);
			model.addAttribute("horaire", horaire);
			return "sEDT";
		}
		else {
			return "redirect:/login";
		}
			
	}
		
	@RequestMapping("/snotes")
	public String snotes(Model model) {
		if (profil != null && profil.equals("etudiant")) {
			List<Note> listNote = intranetMetier.listNote(name);
			model.addAttribute("note", listNote);
			return "snotes";
		}
		else {
			return "redirect:/login";
		}
			
	}
		
		
	//TEACHER PAGE
	@RequestMapping("/tnotes")
	public String tNotes(Model model) {
		if (profil != null && profil.equals("enseignant")) {
			List<Etudiant> listEtudiant = intranetMetier.listEtudiantClasse("3CT");
			model.addAttribute("etudiant", listEtudiant);
			return "tNotes";
		}
		else {
			return "redirect:/login";
		}
		
	}
		
	@RequestMapping("/tNews")
	public String tnews(Model model) {
		if (profil != null && profil.equals("enseignant")) {
			List<News> news= intranetMetier.listNews();
			model.addAttribute("news", news);
			return "tNews";
		}
		else {
			return "redirect:/login";
		}
			
	}
	
	@RequestMapping("/thome")
	public String thome(Model model){	
		if (profil != null && profil.equals("enseignant")) {
			List<News> news= intranetMetier.listNewsActif(true);
			model.addAttribute("news", news);
			return "thome";
		}
		else {
			return "redirect:/login";
		}
		
	}
	
	@RequestMapping("/tcontact")
	public String tcontact(Model model){
		if (profil != null && profil.equals("enseignant")) {
			return "tcontact";
		}
		else {
			return "redirect:/login";
		}
	}
	
	
	
	
	//ADMIN PAGES
	@RequestMapping("/anewsadmin")
	public String anewsAdmin(Model model) {
		if (profil != null && profil.equals("administrateur")) {
			List<News> news= intranetMetier.listNews();
			model.addAttribute("news", news);
			return "anewsAdmin";
		}
		else {
			return "redirect:/login";
		}
		
	}
	
	
	@RequestMapping("/account")
	public String account(Model model) {
		if (profil != null && profil.equals("administrateur")) {
			return "account";
		}
		else {
			return "redirect:/login";
		}
	}
	
	
	@RequestMapping("/addAccount")
	public String addAccount(Model model) {
		if (profil != null && profil.equals("administrateur")) {
			return "addAccount";
		}
		else {
			return "redirect:/login";
		}
	}
	
	
	@RequestMapping("/alistAdmin")
	public String Administrateur(HttpServletRequest request,Model model) {
		if (profil != null && profil.equals("administrateur")) {
			List<Administrateur> administrateur= intranetMetier.listAdministrateur();
			model.addAttribute("administrateur", administrateur);
			return "alistAdmin";
		}
		else {
			return "redirect:/login";
		}
		
	}
	
	@RequestMapping("/alistTeacher")
	public String Enseignant(HttpServletRequest request,Model model) {
		if (profil != null && profil.equals("administrateur")) {
			List<Enseignant> enseignant= intranetMetier.listEnseignant();
			model.addAttribute("enseignant", enseignant);
			return "alistTeacher";
		}
		else {
			return "redirect:/login";
		}
		
	}
	
	@RequestMapping("/alistStudent")
	public String Etudiant(HttpServletRequest request,Model model) {
		if (profil != null && profil.equals("administrateur")) {
			List<Etudiant> etudiants= intranetMetier.listEtudiants1();
			model.addAttribute("etudiant", etudiants);
			return "alistStudent";
		}
		else {
			return "redirect:/login";
		}
		
	}
		
	@RequestMapping("/adminEDT")
	public String adminEDT(Model model) {
		if (profil != null && profil.equals("administrateur")) {
			List<Horaire> horaire = intranetMetier.listHoraire("3CT");
			model.addAttribute("horaire", horaire);
			return "adminEDT";
		}
		else {
			return "redirect:/login";
		}
	}
	
	@RequestMapping("/admincontact")
	public String acontact(Model model){
		if (profil != null && profil.equals("administrateur")) {
			return "admincontact";
		}
		else {
			return "redirect:/login";
		}
	}
	
	@RequestMapping("/ahome")
	public String ahome(Model model){
		//model.addAttribute("a_userType", userType);
		if (profil != null && profil.equals("administrateur")) {
			List<News> news= intranetMetier.listNewsActif(true);
			model.addAttribute("news", news);
			return "ahome";
		}
		else {
			return "redirect:/login";
		}
	}
	
		
	
	
}