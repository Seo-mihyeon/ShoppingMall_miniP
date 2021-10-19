package com.mall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.AttachMapper;
import com.mall.mapper.ItemMapper;
import com.mall.model.AttachImageVO;
import com.mall.model.Criteria;
import com.mall.model.ItemVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class ItemServiceImpl implements ItemService{
	
	@Autowired
	private ItemMapper itemMapper;
	
	@Autowired
	private AttachMapper attachMapper;

	/* 상품 검색 */
	@Override
	public List<ItemVO> getGoodsList(Criteria cri) {
		
		log.info("getGoodsList()......");
		
		List<ItemVO> list = itemMapper.getGoodsList(cri);
		
		list.forEach(item -> {
			int itemId = item.getItemId();
			
			List<AttachImageVO> imageList = attachMapper.getAttachList(itemId);
			
			item.setImageList(imageList);
		});
		
		return list;
	}

	/* 사품 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		
		log.info("goodsGetTotal()......");
		
		return itemMapper.goodsGetTotal(cri);
	}

}
