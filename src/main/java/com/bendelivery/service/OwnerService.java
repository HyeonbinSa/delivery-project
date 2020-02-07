package com.bendelivery.service;

import com.bendelivery.domain.OwnerVO;

public interface OwnerService {
	public void join(OwnerVO vo) throws Exception;
	public int getNo(OwnerVO vo)throws Exception;
}
