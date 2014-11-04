package fr.treeptik.entity;

import java.util.List;

import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Entreprise {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer id;
	private String nom;
	private String raisonSocial;
	private String adresse;

	@ElementCollection
	private List<String> secteurActivité;

	@OneToMany(mappedBy = "enteprise")
	private List<Contact> contacts;

	public Entreprise() {

	}

	public Entreprise(Integer id, String raisonSocial, String adresse,
			List<String> secteurActivité, List<Contact> contacts) {
		this.id = id;
		this.raisonSocial = raisonSocial;
		this.adresse = adresse;
		this.secteurActivité = secteurActivité;
		this.contacts = contacts;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getRaisonSocial() {
		return raisonSocial;
	}

	public void setRaisonSocial(String raisonSocial) {
		this.raisonSocial = raisonSocial;
	}

	public String getAdresse() {
		return adresse;
	}

	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}

	public List<String> getSecteurActivité() {
		return secteurActivité;
	}

	public void setSecteurActivité(List<String> secteurActivité) {
		this.secteurActivité = secteurActivité;
	}

	public List<Contact> getContacts() {
		return contacts;
	}

	public void setContacts(List<Contact> contacts) {
		this.contacts = contacts;
	}

}
