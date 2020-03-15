package com.bendelivery.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

import com.bendelivery.domain.CartVO;
import com.bendelivery.domain.Criteria;
import com.bendelivery.domain.LikeVO;
import com.bendelivery.domain.MemberVO;
import com.bendelivery.domain.MenuGroupVO;
import com.bendelivery.domain.MenuVO;
import com.bendelivery.domain.OrderVO;
import com.bendelivery.domain.PageMaker;
import com.bendelivery.domain.ResOperationVO;
import com.bendelivery.domain.RestaurantVO;
import com.bendelivery.dto.UserLoginDTO;
import com.bendelivery.service.CartService;
import com.bendelivery.service.LikeService;
import com.bendelivery.service.MemberService;
import com.bendelivery.service.MenuGroupService;
import com.bendelivery.service.MenuService;
import com.bendelivery.service.OrderService;
import com.bendelivery.service.OwnerService;
import com.bendelivery.service.ResOperationService;
import com.bendelivery.service.RestaurantService;
import com.bendelivery.util.MediaUtils;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Inject
	private MemberService service;
	@Inject
	private RestaurantService res_service;
	@Inject
	private OwnerService owner_service;
	@Inject
	private MenuGroupService menu_group_service;
	@Inject
	private MenuService menu_service;
	@Inject
	private ResOperationService res_operation_service;
	@Inject
	private CartService cart_service;
	@Inject
	private OrderService order_service;
	@Resource(name="uploadPath")
	String uploadPath;
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	// ----------- 로그인 -------------------------------------------------
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public void loginGET(@ModelAttribute("dto") UserLoginDTO dto) {
		logger.info("login get------------------------------------");
	}
	@RequestMapping(value="/loginPost", method = RequestMethod.POST)
	public void loginPOST(UserLoginDTO dto, HttpSession session, Model model) throws Exception {
		MemberVO vo = service.login(dto);
		if(vo == null) {
			return;
		}
		session.setAttribute("user_role", vo.getRole());
		model.addAttribute("memberVO", vo);
	}
	// ----------- 로그아웃 -------------------------------------------------
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session)throws Exception{
		Object obj = session.getAttribute("login");
		
		if(obj != null) {
			MemberVO vo = (MemberVO)obj;
			
			session.removeAttribute("login");
			session.removeAttribute("user_role");
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
	// ----------- 회원가입 -------------------------------------------------
	// 회원가입 페이지로 이동
	@RequestMapping(value="/join", method = RequestMethod.GET)
	public void joinGET() {
		
	}
	// 회원가입 기능
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String joinPOST(MemberVO vo, Model model, RedirectAttributes rttr)throws Exception {
		// 1. 아이디 중복 검사 
		if(service.checkId(vo) != 0) {
			// 2. 닉네임 중복 검사
			// 둘 다 중복 
			if(service.checkNickname(vo) != 0) {
				rttr.addFlashAttribute("result", "both");
				rttr.addFlashAttribute("vo", vo);
				return "redirect:/user/join";
			// 아이디만 중복 
			}else {
				rttr.addFlashAttribute("result", "duplicate_id");
				rttr.addFlashAttribute("vo", vo);
				return "redirect:/user/join";
			}
		// 닉네임만 중복 
		}else if(service.checkNickname(vo) != 0) {
			rttr.addFlashAttribute("result", "duplicate_nickname");
			rttr.addFlashAttribute("vo", vo);
			return "redirect:/user/join";
		}
		// 둘 다 중복이 아닐경우
		// Database에 등록
		service.regist(vo);
		rttr.addFlashAttribute("result", "success");
		// login 페이지로 이동
		return "redirect:/user/login";
		
	}
	
	// 식당 전체 리스트 출력 페이지
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public void listGET(Criteria cri, Model model)throws Exception {
		//model.addAttribute("list", res_service.getList());
		// 페이징 처리 위함 
		//Criteria cri = new Criteria();
		PageMaker pm = new PageMaker();
		pm.setCri(cri);
		pm.setTotalCount(res_service.countPaging(cri));
		model.addAttribute("list", res_service.listCri(cri));
		model.addAttribute("pageMaker", pm);
		logger.info("user - list page get------------------------------------");
		logger.info("Page Maker total = " + pm.getTotalCount() + "------------------------------------");
	}
	
	// 카테고리별 리스트 출력 페이지
	@RequestMapping(value="/list/{category}", method = RequestMethod.GET)
	public String listByCategory(@PathVariable("category") String category, Criteria cri, Model model)throws Exception{
		model.addAttribute("category", category);
		//model.addAttribute("list", res_service.listByCategory(category));
		PageMaker pm = new PageMaker();
		pm.setCri(cri);
		pm.setTotalCount(res_service.countPagingByCategory(category));
		model.addAttribute("pageMaker", pm);
		model.addAttribute("list", res_service.listCriByCategory(cri, category));
		logger.info("user - "+ category +"list page get------------------------------------");
		logger.info("Page Maker total = " + pm.getTotalCount() + "------------------------------------");
		return "/user/list";
	}
	
	@RequestMapping(value="/{res_no}", method = RequestMethod.GET)
	public String readGET(@PathVariable("res_no") int res_no, Model model)throws Exception{
		logger.info("read - "+res_no+"get------------------------------------");
		// restaurant 데이터에서 owner_no 가져오기 
		int owner_no = res_service.read(res_no).getOwner_no();
		
		// 해당 식당 메뉴 그룹 정보 전달
		List<MenuGroupVO> group_list = menu_group_service.list(res_no);
		// 해당 식당 메뉴 정보 전달 
		List<MenuVO> menu_list = menu_service.list(res_no);
		// 운영 정보 전달
		ResOperationVO operationVO = res_operation_service.getByRes(res_no);
		
		model.addAttribute("ownerVO", owner_service.read(owner_no));
		model.addAttribute("resVO", res_service.read(res_no));
		model.addAttribute("groupList", group_list);
		model.addAttribute("menuList", menu_list);
		model.addAttribute("operationVO", operationVO);
		return "/user/read";
	}
	
	@RequestMapping(value="/checkout", method = RequestMethod.GET)
	public void checkoutPageGet(HttpServletRequest request, Model model) throws Exception{
		HttpSession session = request.getSession();
		// 세션에서 식당 번호와 세션 아이디 가져옴
		int res_no = (int) session.getAttribute("res_no");
		String session_id = session.getId();
		
		RestaurantVO vo = res_service.read(res_no);
		
		List<CartVO> list = cart_service.list(session_id);
		
		//System.out.println("UserController : "+ list.toString());// 테스트 출력 
		model.addAttribute("resVO", vo);
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value="/mypage", method = RequestMethod.GET)
	public void mypageGET() {
		
	}
	
	@RequestMapping(value="/review/{order_no}", method = RequestMethod.GET)
	public String reviewGET(@PathVariable("order_no") int order_no, Model model) throws Exception{
		System.out.println("리뷰작성한 오더 넘버 : " +order_no);
		OrderVO orderVO = order_service.getOrder(order_no);
		String res_name = res_service.read(orderVO.getRes_no()).getRes_name();
		model.addAttribute("orderVO", orderVO);
		model.addAttribute("res_name", res_name);
		return "/user/review";
	}
	
	@RequestMapping(value="/testhome", method = RequestMethod.GET)
	public void testHome() {
		
	}
	
	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName)throws Exception{
		InputStream in = null;
		// 실제 파일 데이터를 결과로 받기 위함.
		ResponseEntity<byte[]> entity = null;
		try {
			// 확장자
			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
			//MIME 타입 지
			MediaType mType = MediaUtils.getMediaType(formatName);
			
			HttpHeaders headers = new HttpHeaders();
			
			in = new FileInputStream(uploadPath+fileName);
			
			if(mType != null) {
				headers.setContentType(mType);
			}else {
				// 파일명 가져오기
				fileName = fileName.substring(fileName.indexOf("_")+1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=\""+new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
			}
			// 파일에서 데이터를 읽어내는 부분 
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
			
		}catch(Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}finally {
			in.close();
		}
		return entity;
		
	}
	@ResponseBody
	@RequestMapping(value="/review/deleteFile", method=RequestMethod.POST)
	public ResponseEntity<String> deleteFile(String fileName){
		String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
		
		MediaType mType = MediaUtils.getMediaType(formatName);
		
		if(mType != null) {
			String front = fileName.substring(0,12);
			String end = fileName.substring(14);
			new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
		}
		new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
		return new ResponseEntity<String>("deleted", HttpStatus.OK);
	}
}
