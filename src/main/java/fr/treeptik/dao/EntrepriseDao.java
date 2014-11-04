package fr.treeptik.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.treeptik.entity.Entreprise;

public interface EntrepriseDao extends JpaRepository<Entreprise, Integer> {

	// @Query("select e from Employee e where e.email=:email")
	// public Employee findOneByEmail(@Param("email") String email);

}