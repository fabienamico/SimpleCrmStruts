package fr.treeptik.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.treeptik.entity.Contact;

public interface ContactDao extends JpaRepository<Contact, Integer> {

	@Query("select c from Contact c left join  c.entreprise e where e.id = :id")
	List<Contact> findByEntreprise(@Param("id") Integer id);

	// @Query("select c from Contact c fetch join  c.entreprise ")
	// public List<Contact> findAll();

}