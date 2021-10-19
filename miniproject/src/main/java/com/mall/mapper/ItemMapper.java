package com.mall.mapper;

import java.util.List;

import com.mall.model.Criteria;
import com.mall.model.ItemVO;

public interface ItemMapper {

	/* 상품 검색 */
	public List<ItemVO> getGoodsList(Criteria cri);
	
	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri);
	
	
	
	
}
