package fr.treeptik.service;

import java.util.List;

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Entreprise;

public interface ContactService {

	public void add(Contact contact);

	public List<Contact> getAll();

	public Contact get(Integer id);

	public void delete(Integer contactId);

	public List<Entreprise> getAllEntreprise();

	public List<Contact> getAllContactFromEntrepriseId(Integer id);

}