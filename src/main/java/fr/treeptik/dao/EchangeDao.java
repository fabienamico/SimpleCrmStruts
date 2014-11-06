package fr.treeptik.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import fr.treeptik.entity.Echange;

public interface EchangeDao extends JpaRepository<Echange, Integer> {

	@Query("select e from Echange e join e.contact c where c.id = :id")
	List<Echange> getEchangesFromContactId(@Param("id") Integer id);

	// @Query("select e from Employee e where e.lastname=:lastname")
	// public List<Employee> findAllByLastname(@Param("lastname") String
	// lastname);

}