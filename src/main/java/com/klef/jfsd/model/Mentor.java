package com.klef.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="men_table")

public class Mentor {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="men_id")
	private int id;
	
	@Column(name="men_name",nullable=false,length = 50)
	private String name;
	@Column(name="men_dob",nullable=false,length = 20)
	private String dateofbirth;
	@Column(name="men_email",nullable=false,unique = true,length = 30)
	private String email;
	@Column(name="men_contact",nullable=false)
	private String contact;
	@Column(name="men_gender",nullable=false,length = 10)
	private String gender;
	@Column(name="men_occupation",nullable=false,length = 30)
	private String occupation;
	@Column(name="men_education",nullable=false,length = 30)
	private String education;
	@Column(name="men_certifications",nullable=false,length = 30)
	private String certifications;
	@Column(name="men_experience",nullable=false,length = 30)
	private String experience;
	@Column(name="men_domain",nullable=false)
	private String domain;
	
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
	public String getDateofbirth() {
		return dateofbirth;
	}
	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
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
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getCertifications() {
		return certifications;
	}
	public void setCertifications(String certifications) {
		this.certifications = certifications;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getDomain() {
		return domain;
	}
	public void setDomain(String domain) {
		this.domain = domain;
	}
	
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ",dateofbirth=" + dateofbirth + ",email=" + email + ", contact=" + contact
				+ ", gender=" + gender + ", occupation=" + occupation + ", education=" + education + " ,certifications=" + certifications + ",experience=" + experience + ", domain=" + domain + " ]";
	}
	

}
