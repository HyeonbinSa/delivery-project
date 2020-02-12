package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.AdminVO;
import com.bendelivery.dto.AdminLoginDTO;

@Repository
public class AdminDAOImpl implements AdminDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.AdminMapper";

	@Override
	public AdminVO login(AdminLoginDTO dto) throws Exception {
		return session.selectOne(namespace+".login", dto);
	}
}