package com.bendelivery.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.CartVO;

@Repository
public class CartDAOImpl implements CartDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.CartMapper";
	@Override
	public void create(CartVO vo) throws Exception {
		session.insert(namespace+".addCart", vo);
	}

	@Override
	public void deleteById(String session_id) throws Exception {
		session.delete(namespace+".deleteById", session_id);
	}

	@Override
	public void updateByQuan(CartVO vo) throws Exception {
		session.update(namespace+".updateByQuan", vo);
	}

	@Override
	public void deleteByButton(CartVO vo) throws Exception {
		session.delete(namespace+".deleteByButton", vo);
	}

	@Override
	public void deleteByRes(CartVO vo) throws Exception {
		session.delete(namespace+".deleteByRes", vo);
	}

	@Override
	public List<CartVO> list(String session_id) throws Exception {
		return session.selectList(namespace+".list", session_id);
	}

	@Override
	public CartVO checkMenu(CartVO vo) throws Exception {
		return session.selectOne(namespace+".checkMenu", vo);
	}

	@Override
	public void updateMinus(CartVO vo) throws Exception {
		session.update(namespace+".minusQuantity", vo);
	}

	@Override
	public void updatePlus(CartVO vo) throws Exception {
		session.update(namespace+".plusQuantity", vo);
	}

	@Override
	public List<Integer> getRestuarantNo(String session_id) throws Exception {
		return session.selectList(namespace+".getRes", session_id);
	}

}
