package com.klef.jfsd.service;


import com.klef.jfsd.model.Mentor;


public interface MentorService {
 
	public String addmentor(Mentor men);
	
	public Mentor viewmenbyid(int eid);
}
