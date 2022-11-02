package com.kosta.petner.contorller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kosta.petner.bean.SitterInfo;
import com.kosta.petner.service.SitterFormService;

@Controller
public class SitterFormController {

	@Autowired
	SitterFormService sitterFormService;

	//펫시터 정보등록 페이지
	@RequestMapping(value = "/sitterForm", method = RequestMethod.GET)
	String sitterForm() {
		return "sitterForm";
	}
	
	//프로필 업로드
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	String profile() {
		return "findSitter";
	}
	
	//DB insert
	@RequestMapping(value = "/sitterForm/register", method = RequestMethod.POST)
	String register(Model model, @ModelAttribute SitterInfo sitterInfo) {
		try {
			sitterFormService.regist(sitterInfo);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/sitterForm";
	}
}
