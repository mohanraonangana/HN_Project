package com.klef.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.model.Slotbooking;

@Repository
public interface SlotbookingRepository extends JpaRepository<Slotbooking, Integer> {

}
