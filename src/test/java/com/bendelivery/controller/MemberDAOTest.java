package com.bendelivery.controller;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.bendelivery.domain.MemberVO;
import com.bendelivery.persistence.MemberDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MemberDAOTest {
	@Inject
	private MemberDAO dao;
	
	private static Logger logger = LoggerFactory.getLogger(MemberDAOTest.class);
	
	@Test
	public void testCreate()throws Exception{
		MemberVO vo = new MemberVO();
		vo.setMember_id("ben12");
		vo.setMember_pw("pw1234");
		vo.setMember_nickname("벤 사");
		vo.setMember_phone("01033332222");
		
		dao.create(vo);
	}
}
