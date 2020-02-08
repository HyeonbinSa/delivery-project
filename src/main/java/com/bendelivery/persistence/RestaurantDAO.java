package com.bendelivery.persistence;

import java.util.List;

import com.bendelivery.domain.RestaurantVO;

public interface RestaurantDAO {
	public void register(RestaurantVO vo)throws Exception;
	public List<RestaurantVO> resList()throws Exception;
	public RestaurantVO read(int res_no)throws Exception;
	
}
