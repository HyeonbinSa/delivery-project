package com.bendelivery.persistence;

import com.bendelivery.domain.OwnerVO;
import com.bendelivery.dto.OwnerLoginDTO;

public interface OwnerDAO {
	public void join(OwnerVO vo)throws Exception;
	public int getNo(OwnerVO vo)throws Exception;
	public int check_owner(OwnerVO vo)throws Exception;
	public int check_id(OwnerVO vo)throws Exception;
	public OwnerVO read(int owner_no)throws Exception;
	public void signUp(OwnerVO vo)throws Exception;
	public OwnerVO getForCheck(OwnerVO vo)throws Exception;
	public OwnerVO login(OwnerLoginDTO dto)throws Exception;
}
