package com.klef.jfsd.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Customer;
import com.klef.jfsd.model.Mentor;
import com.klef.jfsd.repository.MentorRepository;
@Service

public class MentorServiceImpl implements  MentorService {
	
	@Autowired
	  private MentorRepository mentorRepository;

	@Override
	  public String addmentor(Mentor men)
	  {
		mentorRepository.save(men);
	    return "Mentor Added Successfully";
	  }
	
	@Override
	public Mentor viewmenbyid(int eid) {
		Optional<Mentor> obj =  mentorRepository.findById(eid);
        
        if(obj.isPresent())
        {
          Mentor men = obj.get();
          
          return men;
        }
        else
        {
          return null;
        }
	}

	

}
