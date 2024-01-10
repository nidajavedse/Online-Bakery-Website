package com.acp.bakery.persistence;

import org.springframework.data.repository.CrudRepository;

import com.acp.bakery.model.Register;

public interface RegisterDao extends CrudRepository<Register,Integer>{
	public Register findByEmail(String email);
	public Register findByPassword(String password);
}
