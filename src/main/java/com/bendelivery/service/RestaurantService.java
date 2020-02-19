package com.bendelivery.service;

import java.util.List;

import com.bendelivery.domain.RestaurantVO;

public interface RestaurantService {
	public void register(RestaurantVO vo)throws Exception;
	public List<RestaurantVO> getList()throws Exception;
	public List<RestaurantVO> listByCategory(String category)throws Exception;
	public RestaurantVO read(int res_no)throws Exception;
	public RestaurantVO readByOwner(int owner_no)throws Exception;
	public void permit(RestaurantVO vo)throws Exception;
	public String getPermitInfo(int owner_no)throws Exception;
	public void modifyInfo(RestaurantVO vo)throws Exception;
	
}
