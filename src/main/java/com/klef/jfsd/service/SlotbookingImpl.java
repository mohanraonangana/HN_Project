package com.klef.jfsd.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.model.Mentor;
import com.klef.jfsd.model.Slotbooking;
import com.klef.jfsd.repository.SlotbookingRepository;

@Service
public class SlotbookingImpl implements SlotbookingService{
	@Autowired
	private SlotbookingRepository slotbookingRepository;
	
	@Override
	public String slotbooking(Slotbooking slotbooking) {
		slotbookingRepository.save(slotbooking);
		return "Slot booked Successfully";
	}

	@Override
	public Slotbooking viewbookingbyid(int eid) {
		Optional<Slotbooking> obj =  slotbookingRepository.findById(eid);
        
        if(obj.isPresent())
        {
          Slotbooking slot = obj.get();
          
          return slot;
        }
        else
        {
          return null;
        }
	}

}
