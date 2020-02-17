package com.bendelivery.service;


import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.ResOperationVO;
import com.bendelivery.persistence.ResOperationDAO;

@Service
public class ResOperationServiceImpl implements ResOperationService{
	@Inject
	private ResOperationDAO dao;
	@Override
	public void create(ResOperationVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public void update(ResOperationVO vo) throws Exception {
		dao.modifyOperation(vo);
	}

	@Override
	public ResOperationVO getByRes(int res_no) throws Exception {
		return dao.getByRes(res_no);
	}

}
