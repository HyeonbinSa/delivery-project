package com.bendelivery.controller;

import java.sql.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.bendelivery.domain.AdminVO;
import com.bendelivery.domain.MemberVO;
import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.dto.AdminLoginDTO;
import com.bendelivery.service.AdminService;
import com.bendelivery.service.OwnerService;
import com.bendelivery.service.RestaurantService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	@Inject
	private RestaurantService service;
	
	@Inject
	private OwnerService owner_service;
	
	@Inject 
	private AdminService admin_service;
	
	private static Logger logger = LoggerFactory.getLogger(AdminController.class);

	@RequestMapping(value="/home", method = RequestMethod.GET)
	public void adminHome() {
		logger.info("admin home get------------------------------------");
	}
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void registerGET() {
		logger.info("register get------------------------------------");
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registerPOST(RestaurantVO vo, RedirectAttributes rttr)throws Exception {
		System.out.println(vo.toString());
		service.register(vo);
		logger.info("register post------------------------------------");

		rttr.addFlashAttribute("result", "success");
		return "redirect:/admin/list";
	}
	
	@RequestMapping(value= {"/list", "/newlist"}, method = RequestMethod.GET)
	public void listGET(Model model)throws Exception {
		model.addAttribute("list", service.getList());
		logger.info("list get------------------------------------");
	}
	
	@RequestMapping(value="/read", method = RequestMethod.GET)
	public void readGET(@RequestParam("res_no") int res_no, Model model)throws Exception{
		logger.info("read - "+res_no+"get------------------------------------");
		model.addAttribute("resVO", service.read(res_no));
		int owner_no = service.read(res_no).getOwner_no();
		model.addAttribute("ownerVO", owner_service.read(owner_no));
	}
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") AdminLoginDTO dto) {
		logger.info("login get------------------------------------");
	}
	
	@RequestMapping(value="/login", method= RequestMethod.POST)
	public void login(AdminLoginDTO dto, HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		AdminVO vo = admin_service.login(dto);
		if(vo == null) {
			return;
		}
		System.out.println(vo.toString());
		HttpSession session = request.getSession();
		if(vo != null) {
			System.out.println("관리자 로그인 성공");
			session.setAttribute("admin_login", vo);
			session.setAttribute("admin_role", "ADMIN");
			if(request.getParameter("useCookie")!=null) {
				logger.info("remember Me!!!!!!!-----------------------");
				Cookie loginCookie = new Cookie("loginCookie", session.getId());
				loginCookie.setPath("/");
				loginCookie.setMaxAge(60*60*24*7);
				response.addCookie(loginCookie);
				
			}
			response.sendRedirect("/");
		}
	}
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)throws Exception{
		Object obj = session.getAttribute("admin_login");
		
		if(obj != null) {
			
			session.removeAttribute("admin_login");
			session.removeAttribute("admin_role");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				
			}
		}
		return "redirect:/";
	}
	
	@RequestMapping(value="/permit", method = RequestMethod.POST)
	public String permission(int res_no, String admin_id)throws Exception {
		RestaurantVO vo = service.read(res_no);
		vo.setPermit_admin(admin_id);
		service.permit(vo);
		System.out.println(vo.toString());
		return "redirect:/admin/newlist";
	}
}
