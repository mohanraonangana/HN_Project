package com.klef.jfsd.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;


@Entity
@Table(name="addmentor_table")
public class AddingMentor {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="addmentor_id")
	private int id;
	
	@Column(name="addmentor_name",nullable=false,length = 15)
	private String name;
	@Column(name="addmentor_password",nullable=false,length = 15)
	private String password;
	
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
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "AddingMentor [id=" + id + ", name=" + name + ", password=" + password + "]";
	}
	

}
