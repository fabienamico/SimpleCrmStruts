package fr.treeptik.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.treeptik.entity.Echange;

public interface EchangeDao extends JpaRepository<Echange, Integer> {

	// @Query("select e from Employee e where e.lastname=:lastname")
	// public List<Employee> findAllByLastname(@Param("lastname") String
	// lastname);

}