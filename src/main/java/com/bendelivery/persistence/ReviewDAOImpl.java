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

	@Override
	public void updateStatus(int review_no) throws Exception {
		session.update(namespace+".updateStatus", review_no);
	}

	@Override
	public ReviewVO getReview(int review_no) throws Exception {
		return session.selectOne(namespace+".getReview", review_no);
	}

	@Override
	public void updateReview(ReviewVO vo) throws Exception {
		session.update(namespace+".updateReview", vo);
	}

	@Override
	public void deleteReview(int review_no) throws Exception {
		session.delete(namespace+".delete", review_no);
	}
}
