package com.mall.mapper;

import java.util.List;

import com.mall.model.AttachImageVO;
import com.mall.model.Criteria;
import com.mall.model.ItemVO;

public interface AdminMapper {

		// 상품 등록
		public void goodsEnroll(ItemVO item);

		// 상품 목록 조회
		public List<ItemVO> goodsGetList(Criteria cri);

		// 상품 목록 총 개수
		public int goodsGetTotal(Criteria cri);

		// 상품 조회 페이지
		public ItemVO goodsGetDetail(int itemId);

		/* 상품 수정 */
		public int goodsModify(ItemVO vo);

		/* 상품 정보 삭제 */
		public int goodsDelete(int itemId);
		
		/* 상품 이미지 등록*/
		public void imageEnroll(AttachImageVO vo);
		
		/* 지정 상품 이미지 정보 얻기 */
		public List<AttachImageVO> getAttachInfo(int itemId);
		
		/* 지정 상품 이미지 전체 삭제 */
		public void deleteImageAll(int itemId);
		
		/* 어제자 날짜 이미지 리스트 */
		public List<AttachImageVO> checkFileList();
		
	}
