package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.AddingMentor;
import com.klef.jfsd.model.Customer;


public interface AddingMentorService {
	public String addingmentor(AddingMentor amentor);
	
	public AddingMentor checkmentorlogin(String name,String password);
	
	public List<Customer> viewallmencustomers();
}
