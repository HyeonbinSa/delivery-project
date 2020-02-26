package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.ReviewVO;

public interface ReviewDAO {
	public void create(ReviewVO vo)throws Exception;
	public List<ReviewVO> listByMember(int member_no)throws Exception;
	public List<ReviewVO> listByRes(int res_no)throws Exception;
}
