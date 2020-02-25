package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.LikeVO;

public interface LikeService {
	public void like(LikeVO vo)throws Exception;
	public void unlike(LikeVO vo)throws Exception;
	public int check(LikeVO vo)throws Exception;
	public List<Integer> listByMno(int member_no)throws Exception;
}
