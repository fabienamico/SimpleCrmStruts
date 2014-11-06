package fr.treeptik.service;

import java.util.List;

import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Echange;

public interface EchangeService {

	public void add(Echange echange);

	public List<Echange> getAll();

	public Echange get(Integer id);

	public void delete(Integer echangeId);

	public List<Contact> getContacts();

	public List<Echange> getEchangesFromContactId(Integer id);

}