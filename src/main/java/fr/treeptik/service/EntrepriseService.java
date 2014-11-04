package fr.treeptik.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import fr.treeptik.entity.Entreprise;

public interface EntrepriseService {

	public void add(Entreprise entrepise);

	public List<Entreprise> getAll();

	public Entreprise get(Integer id);

	public void delete(Integer entrepiseId);

}