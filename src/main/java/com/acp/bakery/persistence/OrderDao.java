package com.acp.bakery.persistence;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.acp.bakery.model.Order;

public interface OrderDao extends CrudRepository<Order,Integer>{
	 List<Order> findAll();
}