package com.bendelivery.service;

import com.bendelivery.domain.OwnerVO;

public interface OwnerService {
	public void join(OwnerVO vo) throws Exception;
	public int getNo(OwnerVO vo)throws Exception;
	public int check_owner(OwnerVO vo)throws Exception;
	public int check_id(OwnerVO vo)throws Exception;
	public OwnerVO read(int owner_no)throws Exception;
	public void signUp(OwnerVO vo)throws Exception;
	public OwnerVO getForCheck(OwnerVO vo)throws Exception;
}
