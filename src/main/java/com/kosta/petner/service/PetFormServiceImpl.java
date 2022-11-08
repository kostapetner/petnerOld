package com.kosta.petner.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.petner.bean.PetInfo;
import com.kosta.petner.dao.PetFormDAO;

@Service
public class PetFormServiceImpl implements PetFormService {

	@Autowired
	PetFormDAO petFormDAO;
	
	@Override
	public void regist(PetInfo petInfo) throws Exception {
		petFormDAO.regist(petInfo);
	}

}
