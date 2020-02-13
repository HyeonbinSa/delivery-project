package com.bendelivery.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.MemberVO;
import com.bendelivery.dto.UserLoginDTO;
import com.bendelivery.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Inject
	private MemberDAO dao;
	
	@Override
	public void regist(MemberVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public MemberVO login(UserLoginDTO dto) throws Exception {
		return dao.login(dto);
	}
	// 로그인 시 아이디 중복 검사
	@Override
	public int checkId(MemberVO vo) throws Exception {
		return dao.checkId(vo);
	}
	//로그인 시 닉네임 중복 검사 
	@Override
	public int checkNickname(MemberVO vo) throws Exception {
		return dao.checkNickname(vo);
	}
	
}
	