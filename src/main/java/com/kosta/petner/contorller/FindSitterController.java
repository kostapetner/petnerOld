package com.kosta.petner.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.petner.service.FindSitterService;

@Controller
public class FindSitterController {

	@Autowired
	FindSitterService findSitterService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	String main() {
		return "main";
	}
	
	@RequestMapping(value = "/findSitter", method = RequestMethod.GET)
	String findSitter() {
		return "findSitter";
	}
	
	
}
