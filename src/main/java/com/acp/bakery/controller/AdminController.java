package com.acp.bakery.controller;


import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.acp.bakery.model.Feedback;
import com.acp.bakery.model.Order;
import com.acp.bakery.model.Product;
import com.acp.bakery.model.Register;
import com.acp.bakery.persistence.FeedbackDao;
import com.acp.bakery.persistence.OrderDao;
import com.acp.bakery.persistence.RegisterDao;
import com.acp.bakery.persistence.productDao;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.MediaType;
@Controller
public class AdminController {

	@Autowired
	private productDao pDao;
	@Autowired
	private OrderDao oDao;
	@Autowired
	private FeedbackDao fDao;
	
	@GetMapping("admin")
	public String admin() {
	   
	    return "admin";
	}
	

	@GetMapping("viewOrders")
	public ModelAndView viewOrders() {
	    ModelAndView mv = new ModelAndView("admin");
	    List<Order> orders = oDao.findAll();
	    
	    if (orders.isEmpty()) {
	        mv.addObject("orderMessage", "No Orders Found!");
	    } else {
	        mv.addObject("orders", orders);
	    }
	    
	    return mv;
	}
	
	@GetMapping("viewFeedbacks")
	public ModelAndView viewFeedbacks() {
	    ModelAndView mv = new ModelAndView("admin");
	    List<Feedback> feedbacks = fDao.findAll();
	    
	    if (feedbacks.isEmpty()) {
	        mv.addObject("feedbackMessage", "No Feedbacks Found!");
	    } else {
	        mv.addObject("feedbacks", feedbacks);
	    }
	    
	    return mv;
	}
	
	
	// add product
		@PostMapping("/saveProduct")
		public String saveProduct(HttpServletRequest request, @RequestParam("picture") MultipartFile file,
		                          @RequestParam("id") int id, @RequestParam("name") String name,
		                          @RequestParam("category") String category, @RequestParam("price") double price, Model model) throws IOException, SerialException, SQLException {
		    // Check if the ID already exists in the database
		    boolean idExists = pDao.existsById(id); // Assuming pDao is your DAO for the Product entity

		    if (idExists) {
		        // Set error message
		        model.addAttribute("errorSavingMessage", "Product with the same ID already exists.");

		        // Return the error page
		        return "errorPage"; // Replace "errorPage" with the actual name of your error page or template
		    }

		    // Perform file type validation
		    String fileName = file.getOriginalFilename();
		    String fileExtension = fileName.substring(fileName.lastIndexOf(".") + 1).toLowerCase();
		    if (!fileExtension.matches("^(jpg|jpeg|png)$")) {
		        // Set error message
		        model.addAttribute("errorSavingMessage", "Invalid file type! Please upload an image in JPG, JPEG, or PNG format.");

		        // Return the error page
		        return "admin"; // Replace "errorPage" with the actual name of your error page or template
		    }

		    byte[] bytes = file.getBytes();
		    Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

		    Product product = new Product();
		    product.setId(id);
		    product.setName(name);
		    product.setCategory(category);
		    product.setPrice(price);
		    product.setPicture(blob);
		    pDao.save(product);

		    return "admin";
		}

	
	@PostMapping("/updateById")
	public String updateById(HttpServletRequest request, @RequestParam("picture") MultipartFile file,
	                         @RequestParam("id") int id, @RequestParam("name") String name,
	                         @RequestParam("category") String category, @RequestParam("price") double price) throws IOException, SerialException, SQLException {
	    byte[] bytes = file.getBytes();
	    Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

	    Product product = pDao.findById(id).orElse(null); // Assuming you have a method in pDao to find a product by its ID
	    if (product != null) {
	        product.setName(name);
	        product.setCategory(category);
	        product.setPrice(price);
	        product.setPicture(blob);
	        pDao.save(product); // Assuming you have a method in pDao to update a product

	        return "admin";
	    } else {
	        // Handle case when product with given ID is not found
	        return "error";
	    }
	}
	
	@PostMapping("/updateStatus")
	public String updateStatus(HttpServletRequest request) {
	    Enumeration<String> parameterNames = request.getParameterNames();

	    while (parameterNames.hasMoreElements()) {
	        String paramName = parameterNames.nextElement();

	        if (paramName.startsWith("status_")) {
	            int id = Integer.parseInt(paramName.substring(7)); // Extract the order ID from the parameter name
	            String newStatus = request.getParameter(paramName);

	            // Update the status for the order with the given ID
	            Order order = oDao.findById(id).orElse(null);
	            if (order != null) {
	                order.setStatus(newStatus);
	                oDao.save(order);
	            }
	        }
	    }

	    return "admin"; // Assuming "admin" is the view name or URL for the admin page
	}


	@GetMapping("deleteProduct")
	public ModelAndView deleteProduct(int id) {
		Product p=pDao.findById(id).orElse(null);
		ModelAndView mv = new ModelAndView("admin");
		 if (p==null) {
		        mv.addObject("deleteMessage", "No product found with the provided ID!");
		    } else {
		    	pDao.delete(p);
		    }
		
		return mv;
	}
	
	@GetMapping("/searchById")
	public ModelAndView searchById(int id) {
	    ModelAndView mv = new ModelAndView("admin");
	    Product p = pDao.findById(id).orElse(null);
	    
	    if (p == null) {
	        mv.addObject("searchMessage", "No product found with the provided ID!");
	    } else {
	        mv.addObject("p", p);
	    }
	    
	    return mv;
	}
	
	@GetMapping("/searchId")
	public ModelAndView searchId(int id) {
	    ModelAndView mv = new ModelAndView("admin");
	    Product p = pDao.findById(id).orElse(null);
	    
	    if (p == null) {
	        mv.addObject("searchIdMessage", "No product found with the provided ID!");
	    } else {
	        mv.addObject("pro", p);
	    }
	    
	    return mv;
	}
	
	@GetMapping("/displayPicture")
	 public ResponseEntity<byte[]> displayPicture(@RequestParam("id") int id) throws IOException, SQLException
	 {
		 
		    Product p=pDao.findById(id).orElse(null);
	        byte [] imageBytes = null;
	        imageBytes = p.getPicture().getBytes(1,(int) p.getPicture().length());
		 
		 return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	 }
	 
}
