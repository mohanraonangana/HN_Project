package com.klef.jfsd.repository;

import com.klef.jfsd.model.Customer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Integer>{
	@Query("select e from Customer e where e.email=?1 and e.password=?2")
	public Customer checkcustomerlogin(String email,String pwd);

}
