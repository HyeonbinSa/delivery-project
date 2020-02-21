package com.bendelivery.listener;

import javax.inject.Inject;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.bendelivery.service.CartService;

@WebListener
public class BenDeliverySessionListener implements HttpSessionListener{
	@Inject
	private CartService cart_service;
	private Logger logger = LoggerFactory.getLogger(BenDeliverySessionListener.class);
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		logger.info("Create session : " + session.getId());
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		HttpSession session = se.getSession();
		String session_id = session.getId();
		// 세션 아이디를 통해서 장바구니 삭제 
		try {
			if(cart_service.list(session.getId()) != null) {
				try {
					cart_service.deleteById(session_id);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		logger.info("Close session : " + session.getId());
	}
}
