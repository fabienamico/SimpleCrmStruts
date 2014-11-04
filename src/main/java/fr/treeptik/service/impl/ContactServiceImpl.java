package fr.treeptik.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.dao.ContactDao;
import fr.treeptik.entity.Contact;
import fr.treeptik.service.ContactService;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDao contactDao;

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

}
