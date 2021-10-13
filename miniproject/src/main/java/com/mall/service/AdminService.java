package com.mall.service;

import com.mall.model.ItemVO;

public interface AdminService {
	
	// 상품 조회 페이지
	public ItemVO goodsGetDetail(int itemId);

}
