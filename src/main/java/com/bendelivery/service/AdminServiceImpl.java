package com.bendelivery.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.bendelivery.domain.AdminVO;
import com.bendelivery.dto.AdminLoginDTO;
import com.bendelivery.persistence.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Inject
	private AdminDAO dao;
	
	@Override
	public AdminVO login(AdminLoginDTO dto) throws Exception {
		return dao.login(dto);
	}

}
