package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.MemberVO;
import com.bendelivery.dto.UserLoginDTO;

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
	@Override
	public MemberVO login(UserLoginDTO dto) throws Exception {
		return session.selectOne(namespace+".login", dto);
	}
	//로그인 시 아이디 중복 검사 
	@Override
	public int checkId(MemberVO vo) throws Exception {
		return session.selectOne(namespace+".check_id", vo);
	}
	//로그인 시 닉네임 중복 검사 
	@Override
	public int checkNickname(MemberVO vo) throws Exception {
		return session.selectOne(namespace+".check_nickname", vo);
	}
	
}
