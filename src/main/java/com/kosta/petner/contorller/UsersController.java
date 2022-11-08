package com.kosta.petner.contorller;

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
	
	
	//유저 메인페이지
	@RequestMapping(value = "/users", method = RequestMethod.GET)
	String usersmain() {
		return "user/usersmain";
	}
	
	
	//회원가입폼으로
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	String joinform() {
		return "user/joinform";
	}
	
	//회원가입 
	@RequestMapping(value = "/joinpet", method = RequestMethod.POST)
	String join(@ModelAttribute UsersVo usersVo, Model model) {
		System.out.println("회원가입정보:" + usersVo);
		try{
			usersService.joinUsers(usersVo);
			model.addAttribute("page","user/loginform");
		} catch(Exception e) {
			e.printStackTrace();
			model.addAttribute("err", "회원가입 오류");
			model.addAttribute("page", "err");
		}
		
		return "user/loginform";
		
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
			return "/layout/main"; // 메인레이아웃임
		}
	}


