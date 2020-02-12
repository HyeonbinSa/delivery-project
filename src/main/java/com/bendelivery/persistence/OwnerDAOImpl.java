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

	@Override
	public int check_owner(OwnerVO vo) throws Exception {
		return session.selectOne(namespace+".check_owner",vo);
	}

	@Override
	public OwnerVO read(int owner_no) throws Exception {
		return session.selectOne(namespace+".read", owner_no);
	}

	@Override
	public int check_id(OwnerVO vo) throws Exception {
		return session.selectOne(namespace+".check_id",vo);
	}

	@Override
	public void signUp(OwnerVO vo) throws Exception {
		session.update(namespace+".signupOwner", vo);
	}
	
	@Override
	public OwnerVO getForCheck(OwnerVO vo) throws Exception {
		return session.selectOne(namespace+".getForCheck", vo);
	}
}
