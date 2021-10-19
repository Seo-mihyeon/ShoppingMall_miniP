package com.mall.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mall.mapper.AdminMapper;
import com.mall.model.AttachImageVO;
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
	@Transactional
	@Override
	public void goodsEnroll(ItemVO item) {

		log.info("(service)goodsEnroll........");

		adminMapper.goodsEnroll(item);

		/* 이미지 등록 메서드*/
		if(item.getImageList() == null || item.getImageList().size() <= 0) {
			return;
		}
		
		item.getImageList().forEach(attach ->{
			
			attach.setItemId(item.getItemId());
			adminMapper.imageEnroll(attach);
			
		});
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
	@Transactional
	@Override
	public int goodsModify(ItemVO vo) {
int result = adminMapper.goodsModify(vo);
		
		if(result == 1 && vo.getImageList() != null && vo.getImageList().size() > 0) {
			
			adminMapper.deleteImageAll(vo.getItemId());
			
			vo.getImageList().forEach(attach -> {
				
				attach.setItemId(vo.getItemId());
				adminMapper.imageEnroll(attach);
				
			});
		}
		return result;
	}

	/* 상품 정보 삭제 */
	@Override
	@Transactional
	public int goodsDelete(int itemId) {

		log.info("goodsDelete..........");
		
		adminMapper.deleteImageAll(itemId);

		return adminMapper.goodsDelete(itemId);
	}

	/* 지정 상품 이미지 정보 얻기*/
	@Override
	public List<AttachImageVO> getAttachInfo(int itemId) {
		log.info("getAttatchInfo......");
		
		return adminMapper.getAttachInfo(itemId);
	}

}
