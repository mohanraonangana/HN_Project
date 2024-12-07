package com.klef.jfsd.service;

import java.util.List;

import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Customer;
import com.klef.jfsd.model.Mentor;
import com.klef.jfsd.model.Slotbooking;

public interface AdminService {
	
	public List<Customer> viewallcustomers();
	
	public List<Mentor> viewallmentors();
	
	public List<Slotbooking> viewallbookings();
	
	public Mentor viewmentorbyid(int eid);
	
	public Customer viewcustomerbyid(int eid);
	
	public Slotbooking viewbookingbyid(int eid);
	
	public Admin checkadminlogin(String uname,String pwd);

}
