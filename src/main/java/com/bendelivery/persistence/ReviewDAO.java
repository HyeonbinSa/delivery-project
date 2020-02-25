package com.bendelivery.persistence;

import com.bendelivery.domain.ReviewVO;

public interface ReviewDAO {
	public void create(ReviewVO vo)throws Exception;
}
