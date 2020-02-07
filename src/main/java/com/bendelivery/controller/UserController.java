package com.bendelivery.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bendelivery.domain.MemberVO;
import com.bendelivery.service.MemberService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Inject
	private MemberService service;
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@RequestMapping(value="/login", method = RequestMethod.GET)
	public void loginGET() {
		logger.info("login get------------------------------------");
	}
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public void loginPOST() throws Exception {
		
	}
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public void joinGET() {
		
	}
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO vo, RedirectAttributes rttr)throws Exception {
		service.regist(vo);
		
		rttr.addFlashAttribute("result", "success");
		return "redirect:/user/login";
	}
}
