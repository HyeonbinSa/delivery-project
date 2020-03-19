package com.bendelivery.service;

import java.util.List;

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

	@Override
	public List<ReviewVO> listByMember(int member_no) throws Exception {
		return dao.listByMember(member_no);
	}

	@Override
	public List<ReviewVO> listByRes(int res_no) throws Exception {
		return dao.listByRes(res_no);
	}

	@Override
	public void updateStatus(int review_no) throws Exception {
		dao.updateStatus(review_no);
	}

	@Override
	public ReviewVO getReview(int review_no) throws Exception {
		return dao.getReview(review_no);
	}

	@Override
	public void updateReview(ReviewVO vo) throws Exception {
		dao.updateReview(vo);
	}

	@Override
	public void deleteReview(int review_no) throws Exception {
		dao.deleteReview(review_no);
	}
}
