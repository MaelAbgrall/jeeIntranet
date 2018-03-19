package com.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.demo.dao.AdministrateurRepository;
import com.demo.dao.ClasseRepository;
import com.demo.dao.CoursRepository;
import com.demo.dao.EnseignantRepository;
import com.demo.dao.EtudiantRepository;
import com.demo.dao.HoraireRepository;
import com.demo.dao.NewsRepository;
import com.demo.dao.NoteRepository;
import com.demo.entities.Administrateur;
import com.demo.entities.Classe;
import com.demo.entities.Cours;
import com.demo.entities.Enseignant;
import com.demo.entities.Etudiant;
import com.demo.entities.Horaire;
import com.demo.entities.News;
import com.demo.entities.Note;

@SpringBootApplication
public class IntranetApplication implements CommandLineRunner{
	
	@Autowired
	private AdministrateurRepository adminRep;
	
	@Autowired
	private ClasseRepository classeRep;
	
	@Autowired
	private CoursRepository coursRep;
	
	@Autowired
	private EnseignantRepository enseignantRep;
	
	@Autowired
	private EtudiantRepository etudiantRep;
	
	@Autowired
	private HoraireRepository horaireRep;
	
	@Autowired
	private NewsRepository newsRep;
	
	@Autowired
	private NoteRepository noteRep;

	public static void main(String[] args) {
		SpringApplication.run(IntranetApplication.class, args);
	}
	
	@Override
	public void run (String... args) throws Exception {
		
		Administrateur a1 = adminRep.save(new Administrateur("carre", "jerome", "jerome.carre@esme.fr", "password"));
		Administrateur a2 = adminRep.save(new Administrateur("dubois", "jean", "jean.dubois@esme.fr", "password2"));
		
		Classe cl1 = classeRep.save(new Classe("3CT"));
		Classe cl2 = classeRep.save(new Classe("3CI"));
		Classe cl3 = classeRep.save(new Classe("3CB"));
		
		
		Cours c1 = coursRep.save(new Cours("JEE"));
		Cours c2 = coursRep.save(new Cours("Algorithmique"));
		Cours c3 = coursRep.save(new Cours("UNIX"));
		Cours c4 = coursRep.save(new Cours("BDD"));
		
		
		Enseignant e1 = enseignantRep.save(new Enseignant("abgrall", "mael", "mael.abgrall@esme.fr","ma_esme2017"));
		Enseignant e2 = enseignantRep.save(new Enseignant("sabir", "yassim", "yassim.sabir@esme.fr","ys_esme2017"));
		Enseignant e3 = enseignantRep.save(new Enseignant("roux", "mickeal", "mickael.roux@esme.fr","mr_esme2017"));
		Enseignant e4 = enseignantRep.save(new Enseignant("venta", "lea", "lea.venta@esme.fr","lv_esme2017"));
		
		
		Etudiant etu1 = etudiantRep.save(new Etudiant("colin", "pierre", "pierre.colin@esme.fr", "pierrecolin", cl1));
		Etudiant etu2 = etudiantRep.save(new Etudiant("belmia", "anne", "anne.belmia@esme.fr", "annebelmia", cl1));
		Etudiant etu3 = etudiantRep.save(new Etudiant("franck", "vincent", "vincent.frank@esme.fr", "vincentfrank", cl3));
		Etudiant etu4 = etudiantRep.save(new Etudiant("tranfort", "camille", "camille.tranfort@esme.fr", "camilletranfort", cl2));
		Etudiant etu5 = etudiantRep.save(new Etudiant("ionia", "francois", "francois.ionia@esme.fr", "francoisionia", cl3));
	
		
		Horaire h1 = horaireRep.save(new Horaire("08h:30", "lundi",c1));
		Horaire h2 = horaireRep.save(new Horaire("10h:30", "lundi", c1));
		Horaire h3 = horaireRep.save(new Horaire("14h:00", "mercredi",c2));
		Horaire h4 = horaireRep.save(new Horaire("08h:30", "vendredi",c4));
		Horaire h5 = horaireRep.save(new Horaire("16h:00", "jeudi",c2));
		
		News n1 = newsRep.save(new News("link_news1","1ere news de l'annee!!", "news",true,"03 juin 2018"));
		News n2 = newsRep.save(new News("link_news2","2ere news de l'annee!!", "news",false,"03 decembre 2017"));
		
		Note no1 = noteRep.save(new Note((long)18, etu2));
		Note no2 = noteRep.save(new Note((long)10, etu1));
		Note no3 = noteRep.save(new Note((long)7, etu4));
		Note no4 = noteRep.save(new Note((long)14, etu5));
		Note no5 = noteRep.save(new Note((long)5, etu3));
	
	}
}
