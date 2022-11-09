package com.kosta.petner.service;


import javax.servlet.http.HttpSession;

import com.kosta.petner.bean.UsersVo;

public interface UsersService {
	//회원가입
	public void joinUsers(UsersVo usersVo) throws Exception;
	
	//중복체크
	public boolean isDoubleId(String id) throws Exception;
	
	//로그인
	public UsersVo getUsers(UsersVo usersVo);
}
