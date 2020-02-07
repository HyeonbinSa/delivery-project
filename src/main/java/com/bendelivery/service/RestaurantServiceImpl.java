package com.bendelivery.service;

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

}
