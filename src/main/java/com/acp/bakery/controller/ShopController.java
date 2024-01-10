package com.acp.bakery.controller;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;
import javax.sql.rowset.serial.SerialBlob;
import java.nio.charset.StandardCharsets;


import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.Base64Utils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.acp.bakery.model.Order;
import com.acp.bakery.model.Product;
import com.acp.bakery.persistence.OrderDao;
import com.acp.bakery.persistence.productDao;

import ch.qos.logback.core.model.Model;
import jakarta.servlet.http.HttpServletRequest;


@Controller
public class ShopController {
	@GetMapping("shop")
	public String shop() {
		return "shop";
	}
	
	@Autowired
	private OrderDao oDao;
	
	 @PostMapping("/saveOrder")
	    public String saveOrder(Order order,@RequestParam("name") String name,
                @RequestParam("phoneNo") String phoneNo,
                @RequestParam("address") String address,
                @RequestParam("city") String city,
                @RequestParam("specialIns") String specialIns,
                RedirectAttributes redirectAttributes) {
		    order.setName(name);
	        order.setPhoneNo(phoneNo);
	        order.setAddress(address);
	        order.setCity(city);
	        order.setSpecialIns(specialIns);
	        
	        oDao.save(order);
	        // Add a success flash attribute to be accessed after redirect
	        redirectAttributes.addFlashAttribute("success", true);
	        return "shop";
	    }
	 
	  @GetMapping("thankOk")
		public String thankOk(Order order) {
		    return "/shop";
		}
	  
	  @Autowired
	  private productDao pDao;
	  @GetMapping("/data")
	  @ResponseBody
	  public List <Product> products() {
		List <Product> productList=pDao.findAll();
		// Exclude the 'picture' field from serialization
	    productList.forEach(product -> product.setPicture(null));
		return productList;
	}
	
	@GetMapping("/dPicture")
	@ResponseBody
	 public ResponseEntity<byte[]> dPicture(@RequestParam("id") int id) throws IOException, SQLException
	 {
		    Product p=pDao.findById(id).orElse(null);
	        byte [] imageBytes = null;
	        imageBytes = p.getPicture().getBytes(1,(int) p.getPicture().length());
		 
		 return ResponseEntity.ok().contentType(MediaType.IMAGE_PNG).body(imageBytes);
	 }
	

}
