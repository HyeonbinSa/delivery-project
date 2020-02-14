package com.bendelivery.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.bendelivery.domain.OwnerVO;
import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.dto.OwnerLoginDTO;
import com.bendelivery.service.OwnerService;
import com.bendelivery.service.RestaurantService;

@Controller
@RequestMapping(value="/owner")
public class OwnerController {
	@Inject
	private OwnerService owner_service;
	@Inject
	private RestaurantService res_service;
	
	private static Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public void registerRestaurantGET() throws Exception{
		logger.info("register get------------------------------------");
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registerRestaurantPOST(OwnerVO owner_vo, RestaurantVO res_vo) throws Exception{
		owner_service.join(owner_vo);
		System.out.println(owner_service.getNo(owner_vo));
		res_vo.setOwner_no(owner_service.getNo(owner_vo));
		res_service.register(res_vo);
		logger.info("Register Restaurant post------------------------------------");
		
		return "redirect:/owner/home";
	}
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String homeGet() {
		logger.info("Owner home get------------------------------------");
		return "owner/home";
	}
	@RequestMapping(value="/check", method = RequestMethod.GET)
	public void check_number_phoneGET() {
		logger.info("Check number and phone Page Get------------------------------------");
	}
	// 회원가입 전에 id가 있는지 입점 신청을 했는지 확인하는 단계
	@RequestMapping(value="/check", method = RequestMethod.POST)
	public String check_number_phonePOST(OwnerVO vo, Model model, RedirectAttributes rttr) throws Exception {
		logger.info("Check number and phone page Post------------------------------------");
		OwnerVO ownerVO = owner_service.getForCheck(vo);
		if(vo == null) {//해당 사업자번호와 핸드폰 번호가 일치하는 Owner의 데이터가 없을 때 
			// 입점 신청 화면으로 이동
			logger.info("핸드폰 번호와 사업자 번호가 일치하는 데이터가 없음");
			rttr.addFlashAttribute("result", "nodata");
			return "redirect:/owner/";
		}else if(ownerVO.getOwner_id() != null && ownerVO.getOwner_pw()!= null) {// 해당 데이터에 id와 pw가 이미 있을 경우 
			// 이미 회원가입이 되어있습니다 라는 메세지와 함께 login 페이지로 이동
			logger.info("이미 회원가입이 되어있음");
			rttr.addFlashAttribute("result", "already");
			return "redirect:/owner/login";
		}else {// 해당 데이터에 id 또는 pw의 값이 없을 경우 
			// 1. 입점 신청 허가가 났는지 확인 -> 회원가입 화면
			// 2. 허가 안난 경우 리다이렉트 메세지를 통해 home 화면 이동
			System.out.println(ownerVO);	
			System.out.println(res_service.getPermitInfo(ownerVO.getOwner_no()));	
			if(res_service.getPermitInfo(ownerVO.getOwner_no()).equals("OK")) { // 허가가 난 경우 
				// 회원가입페이지로 이동 
				logger.info("데이터가 있고 허가가 나서 회원가입을 진행해야함");
				rttr.addFlashAttribute("result", "startSignup");
				return "redirect:/owner/signup/"+ownerVO.getOwner_no();
			}else {
				// 입점 신청이 아직 검토 중입니다. 죄송합니다 라는 메세지와 함께 home화면으로 이동
				logger.info("입점신청이 검토중");
				rttr.addFlashAttribute("result", "checking");
				return "redirect:/owner/";
			}
		}
	}
	// check 후 입점 신청이 되어있는 경우 회원가입 진행
	@RequestMapping(value="/signup/{owner_no}", method = RequestMethod.GET)
	public String signupGET(@PathVariable("owner_no") int owner_no, Model model) throws Exception{
		model.addAttribute("vo",owner_service.read(owner_no));
		return "owner/signup";
	}
	
	// owner_no를 받은 owner 데이터에 대한 회원가입 Post 처리 
	@RequestMapping(value="/signup/{owner_no}", method = RequestMethod.POST)
	public String signupPOST(OwnerVO vo, RedirectAttributes rttr)throws Exception{
		logger.info("signup Post ----------------------------------------");
		owner_service.signUp(vo);//id, pw 데이터 update 함수
		rttr.addFlashAttribute("result", "complete");
		return "redirect:/owner/login";
	}
	// 사장님 로그인 페이지 이동
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public void loginGET() {
		
	}
	// 사장님 로그인 기능
	@RequestMapping(value="/login", method= RequestMethod.POST)
	public void login(OwnerLoginDTO dto, HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		OwnerVO vo = owner_service.login(dto);
		
		if(vo == null) {
			return;
		}
		System.out.println(vo.getOwner_no());
		System.out.println(vo.toString());
		HttpSession session = request.getSession();
		if(vo != null) {
			System.out.println("사장님 로그인 성공");
			session.setAttribute("owner_login", vo);
			session.setAttribute("owner_role", "OWNER");
			if(request.getParameter("useCookie")!=null) {
				logger.info("remember Me!!!!!!!-----------------------");
				Cookie loginCookie = new Cookie("loginCookie", session.getId());
				loginCookie.setPath("/");
				loginCookie.setMaxAge(60*60*24*7);
				response.addCookie(loginCookie);
				
			}
			response.sendRedirect("/owner/");
		}
	}
	
	// 사장님 로그아웃 기능 
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)throws Exception{
		Object obj = session.getAttribute("owner_login");
		
		if(obj != null) {
			
			session.removeAttribute("owner_login");
			session.removeAttribute("owner_role");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				
			}
		}
		return "redirect:/owner/";
	}
	
	@RequestMapping(value="/teshome", method = RequestMethod.GET)
	public void testhomeGet() {
		
	}
	// myshop 페이지 이동
	@RequestMapping(value="/myshop", method = RequestMethod.GET)
	public void myshopGet() {
		
	}
	
	// menu 관리 페이지 이동
	@RequestMapping(value="/menus", method = RequestMethod.GET)
	public void menus() {
		
	}
	
}
