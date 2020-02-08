package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.RestaurantVO;

public interface RestaurantService {
	public void register(RestaurantVO vo)throws Exception;
	public List<RestaurantVO> getList()throws Exception;
	public RestaurantVO read(int res_no)throws Exception;
	
}
