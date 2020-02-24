package com.bendelivery.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.LikeVO;
import com.bendelivery.persistence.LikeDAO;
@Service
public class LikeServiceImpl implements LikeService{
	@Inject
	private LikeDAO dao;
	@Override
	public void like(LikeVO vo) throws Exception {
		dao.like(vo);
	}

	@Override
	public void unlike(LikeVO vo) throws Exception {
		dao.unlike(vo);
	}

	@Override
	public int check(LikeVO vo) throws Exception {
		return dao.check(vo);
	}

}
