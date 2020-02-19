package com.bendelivery.service;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.persistence.RestaurantDAO;

@Service
public class RestaurantServiceImpl implements RestaurantService{
	@Inject
	private RestaurantDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(RestaurantServiceImpl.class);
	
	@Override
	public void register(RestaurantVO vo) throws Exception {
		logger.info(vo.toString());
		dao.register(vo);
	}
	@Override
	public List<RestaurantVO> getList() throws Exception {
		return dao.resList();
	}
	@Override
	public RestaurantVO read(int res_no) throws Exception {
		return dao.read(res_no);
	}

	@Override
	public void permit(RestaurantVO vo) throws Exception {
		dao.permit(vo);
	}
	@Override
	public String getPermitInfo(int owner_no) throws Exception {
		return dao.getPermitInfo(owner_no);
	}
	// Owner_no를 통해 식당 데이터 가져오기 
	@Override
	public RestaurantVO readByOwner(int owner_no) throws Exception {
		return dao.readByOwner(owner_no);
	}
	@Override
	public void modifyInfo(RestaurantVO vo) throws Exception {
		dao.modifyInfo(vo);
	}
	@Override
	public List<RestaurantVO> listByCategory(String category) throws Exception {
		return dao.listByCategory(category);
	}
}
