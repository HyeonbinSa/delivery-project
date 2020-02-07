package com.bendelivery.persistence;

import com.bendelivery.domain.RestaurantVO;

public interface RestaurantDAO {
	public void register(RestaurantVO vo)throws Exception;
}
