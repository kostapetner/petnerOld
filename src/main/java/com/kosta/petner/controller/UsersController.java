package com.kosta.petner.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.kosta.petner.bean.UsersVo;
import com.kosta.petner.service.UsersService;



@Controller
public class UsersController {

	@Autowired
	UsersService usersService;
	
	@Autowired
	HttpSession session;
	
	
		
	//회원가입폼으로
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	String joinForm() {
		return "user/joinForm";
	}
	
	//회원가입 
	@RequestMapping(value = "/joinpet", method = RequestMethod.POST)
	String join(@ModelAttribute UsersVo usersVo, Model model) {
		System.out.println("회원가입정보:" + usersVo);
		try{
			usersService.joinUsers(usersVo);
			model.addAttribute("page","user/loginForm");
		} catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("err", "회원가입 오류");
			model.addAttribute("page", "err");
		}
		
		return "user/loginForm";
		
	}
		
	//중복체크
	@ResponseBody 
	@RequestMapping(value = "/checkId", method = RequestMethod.POST)
	   String checkId(@RequestParam("id") String id, Model model) {
		try {
			if(usersService.isDoubleId(id)) return "true";
		}catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("err", "로그인실패");
			model.addAttribute("page","err");
		}
	      return "false";
	}
	
	
		// 로그인화면
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		String main(Model model) {
			model.addAttribute("page", "user/loginForm");
			model.addAttribute("title", "로그인");
			return "/layout/main";
		}
		
		//로그인
		@RequestMapping(value="/login",method = RequestMethod.POST)              
		public String login(@ModelAttribute UsersVo userVo, Model model) {
				System.out.println(userVo);
			System.out.println("vo.getId():    "+ userVo.getId());
			System.out.println("vo.getPassword():    "+ userVo.getPassword());
			System.out.println("vo.getNickname():    "+ userVo.getNickname());
			
			UsersVo authUser = usersService.getUsers(userVo);

			if(authUser ==null) {
				System.out.println("로그인 실패");
				model.addAttribute("result", "fail");
				return "user/loginForm";	
			}
			
			session.setAttribute("authUser", authUser);
			
			
			return "redirect:/";
			}

			
		@RequestMapping(value="/logout",method = RequestMethod.GET)
		public String logout() {
			
			session.removeAttribute("authUser");
			return "redirect:/";
		}
		 

}
