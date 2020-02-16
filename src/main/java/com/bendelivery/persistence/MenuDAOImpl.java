package com.bendelivery.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.MenuGroupVO;
import com.bendelivery.domain.MenuVO;

@Repository
public class MenuDAOImpl implements MenuDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.MenuMapper";

	@Override
	public void create(MenuVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public List<MenuVO> list(int res_no) throws Exception {
		return session.selectList(namespace+".list", res_no);
	}
	
	
}
