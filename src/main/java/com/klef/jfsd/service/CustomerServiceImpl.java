package com.klef.jfsd.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Customer;
import com.klef.jfsd.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
	private CustomerRepository customerRepository;
	
	@Override
	public String addcustomer(Customer customer) 
	{
		customerRepository.save(customer);
		return "Customer Added Successfully";
	}
	
	@Override
	public Customer viewcusbyid(int eid) {
		Optional<Customer> obj =  customerRepository.findById(eid);
        
        if(obj.isPresent())
        {
          Customer cus = obj.get();
          
          return cus;
        }
        else
        {
          return null;
        }
	}

	

	@Override
	public Customer checkcustomerlogin(String email, String pwd) {
			return customerRepository.checkcustomerlogin(email, pwd);

	}

}
