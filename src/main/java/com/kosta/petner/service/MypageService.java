package com.kosta.petner.service;

import org.springframework.stereotype.Service;

import com.kosta.petner.bean.Member;

@Service
public interface MypageService {
	// 나의 기본정보
	Member getMyinfo(String id);
	
}
