package com.bendelivery.service;

import com.bendelivery.domain.AdminVO;
import com.bendelivery.dto.AdminLoginDTO;

public interface AdminService {
	public AdminVO login(AdminLoginDTO dto)throws Exception;
	
}
