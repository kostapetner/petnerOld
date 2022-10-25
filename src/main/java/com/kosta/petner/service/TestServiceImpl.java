package com.kosta.petner.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kosta.petner.dao.TestDAO;

@Service
public class TestServiceImpl implements TestService{

	@Autowired
	TestDAO testDAO;
	
	@Override
	public Integer getId() throws Exception {
		return testDAO.getId();
	}

}
