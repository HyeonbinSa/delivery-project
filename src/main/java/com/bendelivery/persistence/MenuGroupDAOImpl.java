package com.bendelivery.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bendelivery.domain.MenuGroupVO;

@Repository
public class MenuGroupDAOImpl implements MenuGroupDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.bendelivery.mapper.MenuGroupMapper";
	@Override
	public void create(MenuGroupVO vo) throws Exception {
		session.insert(namespace+".create", vo);
	}

	@Override
	public List<MenuGroupVO> list(int res_no) throws Exception {
		return session.selectList(namespace+".list", res_no);
	}
	
}
