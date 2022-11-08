package com.kosta.petner.service;


import com.kosta.petner.bean.UsersVo;

public interface UsersService {
	//회원가입
	public void joinUsers(UsersVo usersVo) throws Exception;
	
	//중복체크
	public boolean isDoubleId(String id) throws Exception;
	
	
}
