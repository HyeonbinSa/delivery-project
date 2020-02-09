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

}
	