package com.bendelivery.persistence;

import com.bendelivery.domain.ResOperationVO;

public interface ResOperationDAO {
	public void create(ResOperationVO vo)throws Exception;
	public void modifyOperation(ResOperationVO vo)throws Exception;
	public ResOperationVO getByRes(int res_no)throws Exception;
}
