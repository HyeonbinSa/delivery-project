package com.bendelivery.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.ResOperationVO;

@Repository
public class ResOperatonDAOImpl implements ResOperationDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.RestaurantOperationMapper";
	@Override
	public void create(ResOperationVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public void modifyOperation(ResOperationVO vo) throws Exception {
		session.update(namespace+".updateOperationInfo", vo);
	}

	@Override
	public ResOperationVO getByRes(int res_no) throws Exception {
		return session.selectOne(namespace+".getByRes", res_no);
	}

}
