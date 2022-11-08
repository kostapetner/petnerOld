package com.kosta.petner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	// 로그인화면
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	String main(Model model) {
		model.addAttribute("page", "user/loginForm");
		model.addAttribute("title", "로그인");
		return "/layout/main"; // 메인레이아웃임
	}
}
