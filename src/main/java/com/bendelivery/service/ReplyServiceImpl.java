package com.bendelivery.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.ReplyVO;
import com.bendelivery.persistence.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService{
	@Inject
	private ReplyDAO dao;
	@Override
	public void create(ReplyVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public void update(ReplyVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void delete(int reply_no) throws Exception {
		dao.delete(reply_no);
	}

	@Override
	public ReplyVO read(int review_no) throws Exception {
		return dao.read(review_no);
	}

	@Override
	public List<ReplyVO> list() throws Exception {
		return dao.list();
	}

}
