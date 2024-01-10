package com.acp.bakery.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

@Entity
@Table(name="tbl_feedback")

public class Feedback {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY.AUTO)
	private Integer id;
	@NotNull
	@Pattern(regexp = "[A-Za-z\\s]+")
	private String name;
	private String email;
	@Pattern(regexp = "^\\+?[0-9]{11,}$")
	private String phoneNo;
	private String message;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
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
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "Feedback [name=" + name + ", email=" + email + ", phoneNo=" + phoneNo + ", message=" + message + "]";
	}
	
	
}
