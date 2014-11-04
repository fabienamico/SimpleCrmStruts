package fr.treeptik.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.entity.Contact;

public interface ContactService {

	public void add(Contact contact);

	public List<Contact> getAll();

	public Contact get(Integer id);

	public void delete(Integer contactId);

}