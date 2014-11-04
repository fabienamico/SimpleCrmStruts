package fr.treeptik.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.treeptik.entity.Contact;

public interface ContactDao extends JpaRepository<Contact, Integer> {

	// @Query("select e from Employee e where e.email=:email")
	// public Employee findOneByEmail(@Param("email") String email);

}