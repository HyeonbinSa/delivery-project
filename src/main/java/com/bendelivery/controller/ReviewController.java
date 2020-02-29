package com.bendelivery.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.bendelivery.domain.MemberVO;
import com.bendelivery.domain.ReviewVO;
import com.bendelivery.service.ReviewService;
import com.bendelivery.util.MediaUtils;
import com.bendelivery.util.UploadFileUtils;


@RestController
@RequestMapping("/review")
public class ReviewController {
	@Inject
	private ReviewService review_service;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	// 원본 파일의 이름과 파일 데이터를 byte[]로 변환한 정보를 파라미터로 처리해서 실제 파일 업로드 
	private String uploadFile(String originalName, byte[] fileData)throws Exception {
		// 중복 방지를 위함(고유한 키값)
		UUID uid = UUID.randomUUID();
		String savedName = uid.toString() + "_" + originalName;
		
		File target = new File(uploadPath, savedName);
		
		FileCopyUtils.copy(fileData, target);
		
		return savedName;
	}
	
	// 리뷰 추가 
	@RequestMapping(value="/add", method = RequestMethod.POST)
	public ResponseEntity<String> addReview(@RequestBody ReviewVO vo)throws Exception{
		System.out.println(vo.toString());
		ResponseEntity<String> entity = null;
		try{
			review_service.create(vo);
			entity = new ResponseEntity<String>("ADDREVIEW", HttpStatus.OK);
		}catch(Exception e) {
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET)
	public ResponseEntity<List<ReviewVO>> listByMember(HttpServletRequest request)throws Exception{
		ResponseEntity<List<ReviewVO>> entity = null;
		MemberVO vo = (MemberVO) request.getSession().getAttribute("login");
		try {
			List<ReviewVO> list = review_service.listByMember(vo.getMember_no()); 
			entity = new ResponseEntity<List<ReviewVO>>(list, HttpStatus.OK);
		}catch(Exception e) {
			entity = new ResponseEntity<List<ReviewVO>>(HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
	}
	@RequestMapping(value="/list/{res_no}", method = RequestMethod.GET)
	public ResponseEntity<List<ReviewVO>> listByRes(@PathVariable int res_no)throws Exception{
		ResponseEntity<List<ReviewVO>> entity = null;
		try {
			List<ReviewVO> list = review_service.listByRes(res_no); 
			entity = new ResponseEntity<List<ReviewVO>>(list, HttpStatus.OK);
		}catch(Exception e) {
			entity = new ResponseEntity<List<ReviewVO>>(HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
	}
	// 파일 업로드
	@ResponseBody
	@RequestMapping(value="/uploadImage", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public ResponseEntity<String> uploadImage(MultipartFile file )throws Exception{
		return new ResponseEntity<>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
	}
	// 파일 display
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
}
