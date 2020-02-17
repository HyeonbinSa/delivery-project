package com.bendelivery.service;

import com.bendelivery.domain.ResOperationVO;

public interface ResOperationService {
	public void create(ResOperationVO vo) throws Exception;
	public void update(ResOperationVO vo) throws Exception;
	public ResOperationVO getByRes(int res_no)throws Exception;
}	
