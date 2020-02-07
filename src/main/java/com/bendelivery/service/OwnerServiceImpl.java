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
	@Override
	public int check_owner(OwnerVO vo) throws Exception {
		return dao.check_owner(vo);
	}
	@Override
	public OwnerVO read(int owner_no) throws Exception {
		return dao.read(owner_no);
	}
	@Override
	public int check_id(OwnerVO vo) throws Exception {
		return dao.check_id(vo);
	}
	@Override
	public void registerOwner(OwnerVO vo) throws Exception {
		dao.registerOwner(vo);
	}

}
