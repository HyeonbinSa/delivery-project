package com.bendelivery.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.ReviewVO;
import com.bendelivery.persistence.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService{
	@Inject
	private ReviewDAO dao;

	@Override
	public void create(ReviewVO vo) throws Exception {
		dao.create(vo);
	}
}
