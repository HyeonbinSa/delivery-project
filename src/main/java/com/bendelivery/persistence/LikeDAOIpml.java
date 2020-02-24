package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.LikeVO;
import com.bendelivery.domain.MemberVO;
import com.bendelivery.dto.UserLoginDTO;

@Repository
public class LikeDAOIpml implements LikeDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.LikeMapper";

	@Override
	public void like(LikeVO vo) throws Exception {
		session.insert(namespace+".like", vo);
	}
	@Override
	public void unlike(LikeVO vo) throws Exception {
		session.delete(namespace+".unlike", vo);
		
	}
	@Override
	public int check(LikeVO vo) throws Exception {
		return session.selectOne(namespace+".check", vo);
	}
}