package com.bendelivery.service;

import com.bendelivery.domain.MemberVO;
import com.bendelivery.dto.UserLoginDTO;

public interface MemberService {
	public void regist(MemberVO vo)throws Exception;
	public MemberVO login(UserLoginDTO dto)throws Exception;
	public int checkId(MemberVO vo)throws Exception;
	public int checkNickname(MemberVO vo)throws Exception;
}
