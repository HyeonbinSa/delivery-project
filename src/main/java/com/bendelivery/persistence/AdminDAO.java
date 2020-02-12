package com.bendelivery.persistence;

import com.bendelivery.domain.AdminVO;
import com.bendelivery.dto.AdminLoginDTO;

public interface AdminDAO {
	public AdminVO login(AdminLoginDTO dto)throws Exception;
}
