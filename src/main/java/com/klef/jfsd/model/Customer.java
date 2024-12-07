package com.klef.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="cus_table")

public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="cus_id")
	private int id;
	
	@Column(name="cus_name",nullable=false,length = 50)
	private String name;
	@Column(name="cus_email",nullable=false,unique = true,length = 30)
	private String email;
	@Column(name="cus_contact",nullable=false,unique = true)
	private String contact;
	@Column(name="cus_dob",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name="cus_gender",nullable=false,length = 10)
	private String gender;
	@Column(name="cus_password",nullable=false,length = 30)
	private String password;
	@Column(name="cus_location",nullable=false)
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
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", email=" + email + ", contact=" + contact
				+ ", dateofbirth=" + dateofbirth + ", gender=" + gender + ", password=" + password + ", location=" + location + "]";
	}

}
