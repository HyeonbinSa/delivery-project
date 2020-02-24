package com.bendelivery.persistence;

import com.bendelivery.domain.LikeVO;

public interface LikeDAO {
	public void like(LikeVO vo)throws Exception;
	public void unlike(LikeVO vo)throws Exception;
	public int check(LikeVO vo)throws Exception;
}
