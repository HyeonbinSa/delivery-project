package com.bendelivery.persistence;

import com.bendelivery.domain.OwnerVO;

public interface OwnerDAO {
	public void join(OwnerVO vo)throws Exception;
	public int getNo(OwnerVO vo)throws Exception;
}
