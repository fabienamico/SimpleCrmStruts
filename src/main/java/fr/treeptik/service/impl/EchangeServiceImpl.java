package fr.treeptik.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.dao.EchangeDao;
import fr.treeptik.entity.Contact;
import fr.treeptik.entity.Echange;
import fr.treeptik.service.ContactService;
import fr.treeptik.service.EchangeService;

@Service
public class EchangeServiceImpl implements EchangeService {

	@Autowired
	private EchangeDao echangeDao;
	@Autowired
	private ContactService contactService;

	@Override
	@Transactional
	public void add(Echange echange) {
		echangeDao.save(echange);
	}

	@Override
	@Transactional
	public List<Echange> getAll() {
		return echangeDao.findAll();
	}

	@Override
	@Transactional
	public Echange get(Integer id) {
		return echangeDao.findOne(id);
	}

	@Override
	@Transactional
	public void delete(Integer echangeId) {
		echangeDao.delete(echangeId);
	}

	@Override
	public List<Contact> getContacts() {
		return contactService.getAll();
	}

}
