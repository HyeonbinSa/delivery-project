package com.bendelivery.persistence;

import java.util.List;

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

	@Override
	public List<ReviewVO> listByMember(int member_no) throws Exception {
		return session.selectList(namespace+".listByMember", member_no);
	}

	@Override
	public List<ReviewVO> listByRes(int res_no) throws Exception {
		return session.selectList(namespace+".listByRes", res_no);
	}
}
