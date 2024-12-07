package com.klef.jfsd.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Customer;
import com.klef.jfsd.model.Mentor;
import com.klef.jfsd.model.Slotbooking;
import com.klef.jfsd.repository.AdminRepository;
import com.klef.jfsd.repository.CustomerRepository;
import com.klef.jfsd.repository.MentorRepository;
import com.klef.jfsd.repository.SlotbookingRepository;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	
	@Autowired
	private MentorRepository mentorRepository;
	
	@Autowired
	private SlotbookingRepository slotbookingRepository;

	@Override
	public List<Customer> viewallcustomers() 
	{
		return customerRepository.findAll();
	}
	
	@Override
	public Customer viewcustomerbyid(int eid) 
	{
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
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
	}
	
	
	@Override
	public List<Mentor> viewallmentors() 
	{
		return mentorRepository.findAll();
	}

	@Override
	public List<Slotbooking> viewallbookings() {
		return slotbookingRepository.findAll();
	}

	@Override
	public Mentor viewmentorbyid(int eid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Slotbooking viewbookingbyid(int eid) {
		// TODO Auto-generated method stub
		return null;
	}

}
