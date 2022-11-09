package com.kosta.petner.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
	//회원가입
	@Override
	public void insertUsers(UsersVo usersVo) throws Exception {
		sqlSession.insert("mapper.users.insertUsers", usersVo);
		
	}
	//이메일 중복체크
	@Override
	public UsersVo selectId(String id) throws Exception {
		return sqlSession.selectOne("mapper.users.selectId", id);
	}
	@Override
	public UsersVo getUsers(String id, String password) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("password", password);
		UsersVo usersVo = sqlSession.selectOne("mapper.users.getByIdAndPassword",map);
		
		return usersVo;
	}
	
	
	

	}


	
	

	

