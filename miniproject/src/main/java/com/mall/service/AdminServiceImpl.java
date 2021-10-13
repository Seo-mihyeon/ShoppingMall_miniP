package com.mall.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.AdminMapper;
import com.mall.model.ItemVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {
	
	private static final Logger log = LoggerFactory.getLogger(AdminServiceImpl.class);

	@Autowired
	private AdminMapper adminMapper;
	
	// 상품 등록
	@Override
	public void itemEnroll(ItemVO item) {
		
		log.info("(srevice)bookEnroll........");
		
		adminMapper.itemEnroll(item);
		
	}
	

	// 상품 조회
	@Override
	public ItemVO goodsGetDetail(int itemId) {
		
		log.info("(service)itemGetDetail....." + itemId);
		
		return adminMapper.goodsGetDetail(itemId);
	}


}
