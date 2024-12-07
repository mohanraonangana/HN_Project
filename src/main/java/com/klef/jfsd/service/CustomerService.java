package com.klef.jfsd.service;

import com.klef.jfsd.model.Customer;

public interface CustomerService {
	public String addcustomer(Customer customer);
	
	public Customer viewcusbyid(int eid);

	public Customer checkcustomerlogin(String email,String pwd);
}