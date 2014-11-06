package fr.treeptik.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.dao.ContactDao;
import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Echange;
import fr.treeptik.entity.Entreprise;
import fr.treeptik.service.ContactService;
import fr.treeptik.service.EchangeService;
import fr.treeptik.service.EntrepriseService;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDao contactDao;

	@Autowired
	private EntrepriseService entrepriseService;

	@Autowired
	private EchangeService echangeService;

	@Override
	@Transactional
	public void add(Contact contact) {
		contactDao.save(contact);
	}

	@Override
	@Transactional
	public List<Contact> getAll() {
		return contactDao.findAll();

	}

	@Override
	@Transactional
	public Contact get(Integer id) {
		return contactDao.findOne(id);
	}

	@Override
	@Transactional
	public void delete(Integer contactId) {
		contactDao.delete(contactId);
	}

	@Override
	public List<Entreprise> getAllEntreprise() {
		return entrepriseService.getAll();
	}

	@Override
	public List<Contact> getAllContactFromEntrepriseId(Integer id) {
		// TODO Auto-generated method stub
		return contactDao.findByEntreprise(id);
	}

	@Override
	public List<Echange> getEchangesFromContactId(Integer id) {

		return echangeService.getEchangesFromContactId(id);
	}

}
