package com.bendelivery.service;

import java.util.List;

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

	@Override
	public List<Integer> listByMno(int member_no) throws Exception {
		return dao.listByMno(member_no);
	}

}
