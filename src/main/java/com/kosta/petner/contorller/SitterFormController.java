package com.kosta.petner.contorller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.petner.bean.SitterInfo;
import com.kosta.petner.service.SitterFormService;

@Controller
public class SitterFormController {

	@Autowired
	ServletContext servletContext;
	
	@Autowired
	SitterFormService sitterFormService;

	//펫시터 정보등록 페이지
	@RequestMapping(value = "/sitterForm", method = RequestMethod.GET)
	String sitterForm() {
		return "sitterForm";
	}
	
	//DB insert
	@RequestMapping(value = "/sitterForm/register", method = RequestMethod.POST)
	public ModelAndView register(Model model, @ModelAttribute SitterInfo sitterInfo) {
		ModelAndView mav = new ModelAndView();
		try {
			//파일
			MultipartFile file = sitterInfo.getImageFile(); //파일 자체를 가져옴
			if(!file.isEmpty()) {
				String path = servletContext.getRealPath("/images/");
				File destFile = new File(path + file.getOriginalFilename());//file을 destFile로 옮겨라.
				file.transferTo(destFile);
				sitterInfo.setProfile(file.getOriginalFilename());//파일의 이름을 넣어주기위해 따로 설정
				mav.setViewName("redirect:/");
			}
			sitterFormService.regist(sitterInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
