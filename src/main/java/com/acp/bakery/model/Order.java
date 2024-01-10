package com.acp.bakery.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;

@Entity
@Table(name="tbl_order")

public class Order {
	
		@Id 
		@GeneratedValue(strategy = GenerationType.IDENTITY.AUTO)
		private Integer id;
		
		@NotNull
		@Pattern(regexp = "[A-Za-z\\s]+")
		private String name;
		
		@Pattern(regexp = "^\\+?[0-9]{12,}$")
		private String phoneNo;
		private String address;
		private String city;
		private String specialIns;
		private String productsname;
		private String grandtotal;
		private String status = "Pending";
		
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
		public String getPhoneNo() {
			return phoneNo;
		}
		public void setPhoneNo(String phoneNo) {
			this.phoneNo = phoneNo;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		public String getSpecialIns() {
			return specialIns;
		}
		public void setSpecialIns(String specialIns) {
			this.specialIns = specialIns;
		}
		public String getProductsname() {
			return productsname;
		}
		public void setProductsname(String productsname) {
			this.productsname = productsname;
		}
		public String getGrandtotal() {
			return grandtotal;
		}
		public void setGrandtotal(String grandtotal) {
			this.grandtotal = grandtotal;
		}
		public String getStatus() {
			return status;
		}
		public void setStatus(String status) {
			this.status = status;
		}
}
