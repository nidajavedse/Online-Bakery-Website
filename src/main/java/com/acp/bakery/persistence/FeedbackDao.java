package com.acp.bakery.persistence;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.acp.bakery.model.Feedback;
import com.acp.bakery.model.Product;

public interface FeedbackDao extends CrudRepository<Feedback,Integer>{
	 List<Feedback> findAll();
}
