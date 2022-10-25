package com.kosta.petner.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TestDAOImpl implements TestDAO{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Integer getId() throws Exception {
		return sqlSession.selectOne("mapper.petner.getId");
	}
}
