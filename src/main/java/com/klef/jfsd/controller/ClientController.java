package com.klef.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.model.AddingMentor;
import com.klef.jfsd.model.Admin;
import com.klef.jfsd.model.Customer;
import com.klef.jfsd.model.EmailManager;
import com.klef.jfsd.model.Mentor;
import com.klef.jfsd.model.Slotbooking;
import com.klef.jfsd.service.AddingMentorService;
import com.klef.jfsd.service.AdminService;
import com.klef.jfsd.service.CustomerService;
import com.klef.jfsd.service.MentorService;
import com.klef.jfsd.service.SlotbookingService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private MentorService mentorService;
	@Autowired
	private SlotbookingService slotService;
	@Autowired
	private AddingMentorService addingmentorService;

	@Autowired
	private EmailManager em;
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}

	
	@GetMapping("joinusforfree")
	public ModelAndView joinusforfree() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("joinusforfree");
		return mv;
	}
	@PostMapping("insertcus")
	public ModelAndView insert(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;

		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			String dob = request.getParameter("dob");
			String gender = request.getParameter("gender");
			String pwd = request.getParameter("pwd");
			String location = request.getParameter("location");
	
			Customer cus = new Customer();
			cus.setName(name);
			cus.setEmail(email);
			cus.setContact(contact);
			cus.setDateofbirth(dob);
			cus.setGender(gender);
			cus.setPassword(pwd);
			cus.setLocation(location);


			msg = customerService.addcustomer(cus);

			mv.setViewName("customerlogin");
			mv.addObject("message", msg);
		} catch (Exception e) {
			msg = e.getMessage();

			mv.setViewName("displayerror");
			mv.addObject("message", msg);
		}
		return mv;
	}
	@GetMapping("customerlogin") // URI & method name can be different
	public ModelAndView customerlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerlogin");
		return mv;
	}
	@PostMapping("checkcustomerlogin")
	public ModelAndView checkemployeelogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		Customer e = customerService.checkcustomerlogin(email, pwd);
		if (e != null) {
			// session
			HttpSession session = request.getSession();

			session.setAttribute("eid", e.getId()); // eid is a session variable
			session.setAttribute("ename", e.getName()); // ename is a session variable

			// session
			mv.setViewName("customerhome");
		} else {
			mv.setViewName("customerlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}

	
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");

		Admin a = adminService.checkadminlogin(uname, pwd);
		if (a != null) {
			mv.setViewName("adminhome");
		} else {
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}
	

	@GetMapping("viewallcus")
	public ModelAndView viewallcus() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcus");
		List<Customer> cuslist = adminService.viewallcustomers();
		mv.addObject("cusdata", cuslist);
		return mv;
	}
	
	@GetMapping("view")
	public ModelAndView viewcusdemo(@RequestParam("id") int eid) {
		Customer cus = adminService.viewcustomerbyid(eid);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewcusbyid");
		mv.addObject("cus", cus);
		return mv;
	}
	
	@GetMapping("mentorrequest")
	public ModelAndView mentorrequest() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mentorrequest");
		return mv;
	}
	
	@PostMapping("insertmen")
	public ModelAndView insertmen(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;

		try {
			String name = request.getParameter("name");
			String dateofbirth = request.getParameter("dateofbirth");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			String gender = request.getParameter("gender");
			String occupation = request.getParameter("occupation");
			String education = request.getParameter("education");
			String certifications = request.getParameter("certifications");
			String experience = request.getParameter("experience");
			String domain = request.getParameter("domain");
			
			
	
			Mentor men = new Mentor();
			men.setName(name);
			men.setDateofbirth(dateofbirth);
			men.setEmail(email);
			men.setContact(contact);
			men.setGender(gender);
			men.setOccupation(occupation);
			men.setEducation(education);
			men.setCertifications(certifications);
			men.setExperience(experience);
			men.setDomain(domain);
			
			msg=mentorService.addmentor(men);
			mv.setViewName("mentorregsuc");
			mv.addObject("message", msg);
		} 
		catch (Exception e) {
			msg = e.getMessage();

		
			mv.addObject("message", msg);
		}
		return mv;
	}
	
	
	@PostMapping("slotbooking")
	public ModelAndView booking(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;

		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			String gender = request.getParameter("gender");
			String age = request.getParameter("age");
			String complaint = request.getParameter("complaint");
			
			String location = request.getParameter("location");
	
			Slotbooking slot = new Slotbooking();
			slot.setName(name);
			slot.setEmail(email);
			slot.setContact(contact);
			slot.setGender(gender);
			slot.setAge(age);
			slot.setComplaint(complaint);
		
			slot.setLocation(location);

			msg = slotService.slotbooking(slot);

			mv.setViewName("cusbuynow");
			mv.addObject("message", msg);
			
			
	      String frommail="pappalamukesh009@gmail.com";
	      String toemail="2100031981cse.h@gmail.com";
	      String subject="Slot Booking Status";
	      String text="Your hasbeen booked successfully";
	      String mail= em.sendEmail(frommail, toemail, subject, text);
	      System.out.println(mail);
		} 
		catch (Exception e) 
		{
			msg = e.getMessage();
			mv.setViewName("displayerror");
			mv.addObject("message", msg);
		}
		return mv;
	}
	


	@GetMapping("viewallmen")
	public ModelAndView viewallmen() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallmen");
		List<Mentor> menlist = adminService.viewallmentors();
		mv.addObject("mendata", menlist);
		return mv;
	}
	
	

	@GetMapping("viewallbookings")
	public ModelAndView viewallbookings() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallbookings");
		List<Slotbooking> slotlist = adminService.viewallbookings();
		mv.addObject("slotdata", slotlist);
		return mv;
	}
	
	
	@PostMapping("addingmentor")
	public ModelAndView addingmentor(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;

		try {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			
			
	
			AddingMentor amentor = new AddingMentor();
			amentor.setName(name);
			amentor.setPassword(password);
			
			msg=addingmentorService.addingmentor(amentor);
			mv.setViewName("adminhome");
			mv.addObject("message", msg);
		} 
		catch (Exception e) {
			msg = e.getMessage();

		
			mv.addObject("message", msg);
		}
		return mv;
	}
	
	@GetMapping("mentorlogin") // URI & method name can be different
	public ModelAndView mentorlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("mentorlogin");
		return mv;
	}
	@PostMapping("checkmentorlogin")
	public ModelAndView checkmentorlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		String name = request.getParameter("name");
		String password = request.getParameter("password");

		AddingMentor m = addingmentorService.checkmentorlogin(name, password);
		if (m != null) {
			// session
			HttpSession session = request.getSession();

			session.setAttribute("eid", m.getId()); // eid is a session variable
			session.setAttribute("ename", m.getName()); // ename is a session variable

			// session
			mv.setViewName("mentorhome");
		} else {
			mv.setViewName("mentorlogin");
			mv.addObject("message", "Login Failed");
		}
		return mv;
		
	}
	

	

}
