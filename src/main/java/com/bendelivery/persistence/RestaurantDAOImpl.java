package com.bendelivery.persistence;

import java.util.List;

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
	@Override
	public List<RestaurantVO> resList() throws Exception {
		return session.selectList(namespace+".resList");
	}
	@Override
	public RestaurantVO read(int res_no) throws Exception {
		return session.selectOne(namespace+".read", res_no);
	}
	@Override
	public void permit(RestaurantVO vo) throws Exception {
		session.update(namespace+".permission", vo);
	}
	@Override
	public String getPermitInfo(int owner_no) throws Exception {
		return session.selectOne(namespace+".getPermitInfo", owner_no);
	}
	@Override
	public RestaurantVO readByOwner(int owner_no) throws Exception {
		return session.selectOne(namespace+".readByOwner", owner_no);
	}
	@Override
	public void modifyInfo(RestaurantVO vo) throws Exception {
		session.update(namespace+".updateResInfo", vo);
	}
	
}
