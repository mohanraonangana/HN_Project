package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.AddingMentor;

@Repository
public interface AddingMentorRepository extends JpaRepository<AddingMentor, Integer>{
	@Query("select m from AddingMentor m where m.name=?1 and m.password=?2")
	public AddingMentor checkmentorlogin(String name,String password);


}
