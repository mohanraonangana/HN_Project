package com.klef.jfsd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.AddingMentor;
import com.klef.jfsd.model.Customer;
import com.klef.jfsd.repository.AddingMentorRepository;
import com.klef.jfsd.repository.CustomerRepository;


@Service
public class AddingMentorServiceImpl implements AddingMentorService{
	@Autowired
	private AddingMentorRepository addingmentorRepository;

	@Autowired
	private CustomerRepository customerRepository;
	

	public String addingmentor(AddingMentor amentor) 
	{
		addingmentorRepository.save(amentor);
		return "Mentor Added Successfully";
	}

	@Override
	public AddingMentor checkmentorlogin(String name, String password) {
		return addingmentorRepository.checkmentorlogin(name, password);
	}

	@Override
	public List<Customer> viewallmencustomers() {
		return customerRepository.findAll();
	}

}
