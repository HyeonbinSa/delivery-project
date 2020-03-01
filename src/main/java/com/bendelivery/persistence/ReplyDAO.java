package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.ReplyVO;

public interface ReplyDAO {
	public void create(ReplyVO vo)throws Exception;
	public void update(ReplyVO vo)throws Exception;
	public void delete(int reply_no)throws Exception;
	public ReplyVO read(int review_no)throws Exception;
	public List<ReplyVO> list()throws Exception;
}
