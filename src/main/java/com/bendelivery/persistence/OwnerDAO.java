package com.bendelivery.persistence;

import com.bendelivery.domain.OwnerVO;

public interface OwnerDAO {
	public void join(OwnerVO vo)throws Exception;
	public int getNo(OwnerVO vo)throws Exception;
	public int check_owner(OwnerVO vo)throws Exception;
	public int check_id(OwnerVO vo)throws Exception;
	public OwnerVO read(int owner_no)throws Exception;
	public void registerOwner(OwnerVO vo)throws Exception;
}
