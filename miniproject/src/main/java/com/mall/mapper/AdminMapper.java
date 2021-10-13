package com.mall.mapper;

import com.mall.model.ItemVO;

public interface AdminMapper {

	// 상품 조회 페이지
	public ItemVO goodsGetDetail(int itemId);
	
}
