package com.kosta.petner.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.petner.service.TestService;

@Controller
public class TestController {

	@Autowired
	TestService testService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	String main(Model model) {
		try {
			Integer id = testService.getId();
			model.addAttribute("id", id);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return "main";
	}
	
	
	
	
	
	
}
