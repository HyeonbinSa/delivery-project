package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.RestaurantVO;

@Repository
public class RestaurantDAOImpl implements RestaurantDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.RestaurantMapper";
	@Override
	public void register(RestaurantVO vo) throws Exception {
		System.out.println(vo.toString());
		session.insert(namespace+".register", vo);
	}

}
