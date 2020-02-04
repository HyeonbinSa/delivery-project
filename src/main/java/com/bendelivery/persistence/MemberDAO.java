package com.bendelivery.persistence;

import com.bendelivery.domain.MemberVO;

public interface MemberDAO {
	public void create(MemberVO vo)throws Exception;
}
