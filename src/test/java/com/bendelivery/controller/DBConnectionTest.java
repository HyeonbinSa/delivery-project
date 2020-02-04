package com.bendelivery.controller;

import javax.inject.Inject;
import javax.sql.DataSource;
import java.sql.Connection;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class DBConnectionTest {
	@Inject
	private SqlSessionFactory sqlFactory;

	
	@Test
	public void testFactory() throws Exception{
		System.out.println("\n >>>>>>>>>> sqlFactory 출력 : " + sqlFactory);
	}
	
	@Test
	public void testSession() throws Exception{
		try(SqlSession session = sqlFactory.openSession()){
			System.out.println("\n >>>>>>>>>> session 출력 : " + session);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
