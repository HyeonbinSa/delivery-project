package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.ReviewMapper";
	
	@Override
	public void create(ReviewVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}
}
