package com.bendelivery.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.Criteria;
import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.domain.SearchCriteria;

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
	@Override
	public List<RestaurantVO> listByCategory(String category) throws Exception {
		return session.selectList(namespace+".listByCategory", category);
	}
	@Override
	public List<RestaurantVO> listCri(Criteria cri) throws Exception {
		return session.selectList(namespace+".listCri", cri);
	}
	@Override
	public int countPaging(Criteria cri) throws Exception {
		return session.selectOne(namespace+".countPaging", cri);
	}
	@Override
	public List<RestaurantVO> listCriByCategory(HashMap<String, Object> map) throws Exception {
		return session.selectList(namespace+".listCriByCategory", map);
	}
	@Override
	public int countPagingByCategory(String category) throws Exception {
		return session.selectOne(namespace+".countPagingByCategory", category);
	}
	@Override
	public int countPagingByPermission(String permission) throws Exception {
		return session.selectOne(namespace+".countPagingByPermission", permission);
	}
	@Override
	public List<RestaurantVO> listCriByPermission(HashMap<String, Object> map) throws Exception {
		return session.selectList(namespace+".listCriByPermission", map);
	}
	@Override
	public int countPagingBySearch(SearchCriteria scri) throws Exception {
		return session.selectOne(namespace+".countPagingBySearch", scri);
	}
	@Override
	public List<RestaurantVO> listSearch(SearchCriteria scri) throws Exception {
		return session.selectList(namespace+".listSearch", scri);
	}
	
}
