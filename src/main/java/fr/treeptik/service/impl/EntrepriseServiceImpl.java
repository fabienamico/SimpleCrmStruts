package fr.treeptik.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.dao.EntrepriseDao;
import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Entreprise;
import fr.treeptik.service.ContactService;
import fr.treeptik.service.EntrepriseService;

@Service
public class EntrepriseServiceImpl implements EntrepriseService {

	@Autowired
	private EntrepriseDao entrepriseDao;

	@Autowired
	private ContactService contactService;

	@Override
	@Transactional
	public void add(Entreprise entrepise) {
		entrepriseDao.save(entrepise);
	}

	@Override
	@Transactional
	public List<Entreprise> getAll() {
		return entrepriseDao.findAll();
	}

	@Override
	@Transactional
	public Entreprise get(Integer id) {
		return entrepriseDao.findOne(id);
	}

	@Override
	@Transactional
	public void delete(Integer entrepiseId) {
		entrepriseDao.delete(entrepiseId);
	}

	@Override
	public List<Contact> getContactfromEntrepriseId(Integer id) {
		// TODO Auto-generated method stub
		return contactService.getAllContactFromEntrepriseId(id);
	}
}
