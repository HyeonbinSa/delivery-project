package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.OwnerVO;

@Repository
public class OwnerDAOImpl implements OwnerDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.OwnerMapper";
	
	@Override
	public void join(OwnerVO vo) throws Exception {
		session.insert(namespace+".join", vo);
	}

	@Override
	public int getNo(OwnerVO vo) throws Exception {
		return session.selectOne(namespace+".getNo", vo);
	}
	
}
