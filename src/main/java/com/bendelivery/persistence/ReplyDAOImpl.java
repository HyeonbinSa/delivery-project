package com.bendelivery.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.ReplyMapper";	
	@Override
	public void create(ReplyVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public void update(ReplyVO vo) throws Exception {
		session.update(namespace+".update", vo);
	}

	@Override
	public void delete(int reply_no) throws Exception {
		session.delete(namespace+".delete", reply_no);
	}

	@Override
	public ReplyVO read(int review_no) throws Exception {
		return session.selectOne(namespace+".read", review_no);
	}

	@Override
	public List<ReplyVO> list(int res_no) throws Exception {
		return session.selectList(namespace+".list", res_no);
	}

}
