package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Mentor;

@Repository
public interface MentorRepository extends JpaRepository<Mentor, Integer> {
  
 
  
}