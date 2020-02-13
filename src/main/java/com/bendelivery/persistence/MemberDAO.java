package com.bendelivery.persistence;

import com.bendelivery.domain.MemberVO;
import com.bendelivery.dto.UserLoginDTO;

public interface MemberDAO {
	public void create(MemberVO vo)throws Exception;
	public MemberVO login(UserLoginDTO dto)throws Exception;
	public int checkId(MemberVO vo)throws Exception;
	public int checkNickname(MemberVO vo)throws Exception;
}
