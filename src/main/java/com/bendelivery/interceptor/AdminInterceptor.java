package com.bendelivery.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.bendelivery.domain.AdminVO;

public class AdminInterceptor extends HandlerInterceptorAdapter{
	private static final Logger logger = LoggerFactory.getLogger(AdminInterceptor.class);
	private static final String LOGIN ="admin_login";
	// 로그인 이전에 이용하던 경로를 저장
		private void saveDest(HttpServletRequest req) {
			String uri = req.getRequestURI();
			
			String query = req.getQueryString();
			
			if(query == null || query.equals("null")) {
				query="";
			}else {
				query = "?" + query;
			}
			
			if(req.getMethod().equals("GET")) {
				logger.info("dest : " + (uri+query));
				System.out.println("dest : " + (uri+query));
				req.getSession().setAttribute("dest", uri+query);
			}
		}
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
			HttpSession session = request.getSession();
			if(session.getAttribute("admin_role") != "ADMIN") {
				System.out.println("일반 사용자 아이디임.");
				response.sendRedirect("/admin/login");
				return false;
			}
			
			/*if(session.getAttribute(LOGIN) != null) {
				session.removeAttribute(LOGIN);
				session.removeAttribute("admin_role");
			}*/
			return true;
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
