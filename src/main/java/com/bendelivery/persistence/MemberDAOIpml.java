package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.MemberVO;

@Repository
public class MemberDAOIpml implements MemberDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.MemberMapper";
	@Override
	public void create(MemberVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}
	public void test(MemberVO vo)throws Exception{
		session.insert(namespace+".create", vo);
	}
}
