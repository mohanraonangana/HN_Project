package com.klef.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="slot_table")


public class Slotbooking {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="slot_id")
	private int id;
	
	@Column(name="slot_name",nullable=false,length = 50)
	private String name;
	@Column(name="slot_email",nullable=false, length = 30)
	private String email;
	@Column(name="slot_contact",nullable=false)
	private String contact;
	@Column(name="slot_gender",nullable=false,length = 10)
	private String gender;
	@Column(name="slot_age",nullable=false,length=2)
	private String age;
	@Column(name="slot_complaint",nullable=false,length = 200)
	private String complaint;
	
	@Column(name="slot_location",nullable=false)
	private String location;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getComplaint() {
		return complaint;
	}
	public void setComplaint(String complaint) {
		this.complaint = complaint;
	}
	
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "Slotbooking [id=" + id + ", name=" + name + ",email=" + email + ", contact=" + contact
				+ ", gender=" + gender + ", age=" + age + ", complaint=" + complaint + " ,location=" + location + "]";
	}
	
		

}
