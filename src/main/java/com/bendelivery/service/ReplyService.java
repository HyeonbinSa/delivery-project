package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.ReplyVO;

public interface ReplyService {
	public void create(ReplyVO vo)throws Exception;
	public void update(ReplyVO vo)throws Exception;
	public void delete(int reply_no)throws Exception;
	public ReplyVO read(int review_no)throws Exception;
	public List<ReplyVO> list(int res_no)throws Exception;
}
