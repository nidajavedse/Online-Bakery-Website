package com.acp.bakery.persistence;

import java.sql.Blob;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.acp.bakery.model.Product;


public interface productDao extends CrudRepository<Product,Integer>{
	
	public Product findByName(String name);
	 List<Product> findAll();
	public Product findByPicture(Blob picture);
}
