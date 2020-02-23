package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.OrderVO;

@Repository
public class OrderDAOImpl implements OrderDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.OrderMapper";	
	@Override
	public void createOrder(OrderVO vo) throws Exception {
		session.insert(namespace+".order",vo);
	}

}
