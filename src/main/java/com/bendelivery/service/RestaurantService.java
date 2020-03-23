package com.bendelivery.service;

import java.util.HashMap;
import java.util.List;

import com.bendelivery.domain.Criteria;
import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.domain.SearchCriteria;

public interface RestaurantService {
	public void register(RestaurantVO vo)throws Exception;
	public List<RestaurantVO> getList()throws Exception;
	public List<RestaurantVO> listByCategory(String category)throws Exception;
	public RestaurantVO read(int res_no)throws Exception;
	public RestaurantVO readByOwner(int owner_no)throws Exception;
	public void permit(RestaurantVO vo)throws Exception;
	public String getPermitInfo(int owner_no)throws Exception;
	public void modifyInfo(RestaurantVO vo)throws Exception;
	public List<RestaurantVO> listCri(Criteria cri)throws Exception;
	public int countPaging(Criteria cri)throws Exception;
	public int countPagingByCategory(String category)throws Exception;
	public int countPagingByPermission(String permission)throws Exception;
	public List<RestaurantVO> listCriByCategory(Criteria cri, String category) throws Exception;
	public List<RestaurantVO> listCriByPermission(Criteria cri, String permission) throws Exception;
	public int countPagingBySearch(SearchCriteria scri)throws Exception;
	public List<RestaurantVO> listSearch(SearchCriteria scri)throws Exception;
}
