package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.OrderMenuVO;

@Repository
public class OrderMenuDAOImpl implements OrderMenuDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.OrderMenuMapper";	
	@Override
	public void createOrderMenu(OrderMenuVO vo) throws Exception {
		session.insert(namespace+".addOrderMenu",vo);
	}

}
