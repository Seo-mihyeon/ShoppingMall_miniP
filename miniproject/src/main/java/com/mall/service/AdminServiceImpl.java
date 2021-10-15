package com.mall.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.AdminMapper;
import com.mall.model.Criteria;
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
	public void goodsEnroll(ItemVO item) {

		log.info("(service)goodsEnroll........");

		adminMapper.goodsEnroll(item);

	}

	/* 상품 리스트 조회 */
	@Override
	public List<ItemVO> goodsGetList(Criteria cri) {
		log.info("goodsGetList()............");
		return adminMapper.goodsGetList(cri);
	}

	/* 상품 리스트 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		log.info("goodsGetTotal().........");
		return adminMapper.goodsGetTotal(cri);
	}

	/* 상품 조회 */
	@Override
	public ItemVO goodsGetDetail(int itemId) {

		log.info("(service)itemGetDetail....." + itemId);

		return adminMapper.goodsGetDetail(itemId);
	}

	/* 상품 정보 수정 */
	@Override
	public int goodsModify(ItemVO vo) {
		log.info("goodsModify.........");

		return adminMapper.goodsModify(vo);
	}

	/* 상품 정보 삭제 */
	@Override
	public int goodsDelete(int itemId) {

		log.info("goodsDelete..........");

		return adminMapper.goodsDelete(itemId);
	}

}
