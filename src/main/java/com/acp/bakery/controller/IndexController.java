package com.acp.bakery.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.acp.bakery.model.Feedback;
import com.acp.bakery.model.Register;
import com.acp.bakery.persistence.FeedbackDao;
import com.acp.bakery.persistence.RegisterDao;
@Controller

public class IndexController {
	
	@Autowired
	private RegisterDao regDao;
	
	@Autowired
	private FeedbackDao fDao;
	
	@GetMapping("index")
	public String index() {
		return "index";
	}
	
    @PostMapping("saveUser")
	public ModelAndView saveUser(Register reg,Integer id,String email) {
    	ModelAndView mv = new ModelAndView("index");
		Register register = regDao.findByEmail(email);
		if(register == null) {
			regDao.save(reg);
			mv.addObject("none", "none"); 
		}
		else {
			mv.addObject("registerMessage", "*Account already exits!"); 
			return mv;
		}
		return mv;
	}
    
    @PostMapping("saveFeedback")
    public String saveFeedback( Feedback newFeedback) {
            fDao.save(newFeedback);

        return "index";
    }

    @PostMapping("loginUser")
	public ModelAndView loginUsern(String email,String password) {
		ModelAndView mv = new ModelAndView("index");
		Register reg = regDao.findByEmail(email);
		if(reg != null && reg.getPassword().equals(password)   ) {
			mv.setViewName("index");
			mv.addObject("none", "none"); 
		}
		else if(email.equals("admin@gmail.com") && password.equals("Admin123@")){
			
			mv.setViewName("admin");
			mv.addObject("none", "none"); 
			
		}
		else if(reg != null && !reg.getPassword().equals(password)) {
			mv.addObject("message", "* Wrong password.Try again!"); 
		}
		else {
	        mv.addObject("message", "* Wrong email or password");
		}
		
		return mv;
	}

   
    
}

