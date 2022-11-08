package com.kosta.petner.contorller;

import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kosta.petner.bean.PetInfo;
import com.kosta.petner.service.PetFormService;

@Controller
public class PetFormController {

	@Autowired
	PetFormService petFormService;
	
	//펫 정보등록 페이지
	@RequestMapping(value = "/petForm", method = RequestMethod.GET)
	String sitterForm() {
		return "petForm";
	}
	
	//DB insert
	@RequestMapping(value = "/petForm/register", method = RequestMethod.POST)
	public ModelAndView register(Model model, @ModelAttribute PetInfo petInfo) {
		ModelAndView mav = new ModelAndView();
		try {
			//파일
			MultipartFile file = petInfo.getImageFile(); //파일 자체를 가져옴
			if(!file.isEmpty()) {
				String path = "D:\\javaStudy\\workspace\\stsWorkspace\\Petner\\src\\main\\webapp\\resources\\upload";
				File destFile = new File(path +"\\"+ file.getOriginalFilename());//file을 destFile로 옮겨라.
				file.transferTo(destFile);
				petInfo.setProfile(file.getOriginalFilename());//파일의 이름을 넣어주기위해 따로 설정
				mav.setViewName("redirect:/");
				System.out.println(petInfo.toString());
			}
			petFormService.regist(petInfo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
}
