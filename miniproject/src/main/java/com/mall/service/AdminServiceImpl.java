package com.mall.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mall.mapper.AdminMapper;
import com.mall.model.ItemVO;

public class AdminServiceImpl implements AdminService {
	
	private static final Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);

	@Autowired
	AdminMapper adminMapper;

	// 상품 조회
	@Override
	public ItemVO goodsGetDetail(int itemId) {
		
		log.info("(service)itemGetDetail....." + itemId);
		
		return adminMapper.goodsGetDetail(itemId);
	}

}
