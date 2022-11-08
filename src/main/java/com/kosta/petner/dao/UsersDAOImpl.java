package com.kosta.petner.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kosta.petner.bean.UsersVo;

@Repository
public class UsersDAOImpl implements UsersDAO{

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void insertUsers(UsersVo usersVo) throws Exception {
		sqlSession.insert("mapper.users.insertUsers", usersVo);
		
	}

	@Override
	public UsersVo selectId(String id) throws Exception {
		return sqlSession.selectOne("mapper.users.selectId", id);
	}


	
}

	

