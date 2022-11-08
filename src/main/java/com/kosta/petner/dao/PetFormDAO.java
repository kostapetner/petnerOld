package com.kosta.petner.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.kosta.petner.bean.PetInfo;

public interface PetFormDAO {

	void regist(PetInfo petInfo)throws Exception;

}
