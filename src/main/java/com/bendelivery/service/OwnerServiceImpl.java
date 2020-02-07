package com.bendelivery.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.OwnerVO;
import com.bendelivery.persistence.OwnerDAO;

@Service
public class OwnerServiceImpl implements OwnerService {
	@Inject
	private OwnerDAO dao;
	@Override
	public void join(OwnerVO vo) throws Exception {
		dao.join(vo);
	}
	@Override
	public int getNo(OwnerVO vo) throws Exception {
		return dao.getNo(vo);
	}

}
