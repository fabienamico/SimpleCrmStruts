package fr.treeptik.service;

import java.util.List;

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Entreprise;

public interface EntrepriseService {

	public void add(Entreprise entrepise);

	public List<Entreprise> getAll();

	public Entreprise get(Integer id);

	public void delete(Integer entrepiseId);

	public List<Contact> getContactfromEntrepriseId(Integer id);

}