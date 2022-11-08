package com.kosta.petner.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.petner.service.FindSitterService;

@Controller
public class FindSitterController {

	@Autowired
	FindSitterService findSitterService;
	
	@RequestMapping(value = "/findSitter", method = RequestMethod.GET)
	String findSitter(Model model) {
		model.addAttribute("title", "펫시터찾기");
		model.addAttribute("page", "find/findSitter");
		return "/layout/main";
	}
	
	
}
