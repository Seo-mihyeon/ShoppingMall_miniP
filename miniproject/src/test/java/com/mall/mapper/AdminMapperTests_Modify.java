package com.mall.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mall.model.ItemVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests_Modify {

	@Autowired
	private AdminMapper mapper;
	
	/* 상품 정보 수집  */
	@Test
	public void goodsModifyTest() {
		ItemVO vo = new ItemVO();
		
		vo.setItemId(24);
		vo.setItemCode("3");
		vo.setItemName("립밤");
		vo.setItemPrice(30000);
		vo.setItemInfo("립밤으로 바뀌었습니까?");
		
		mapper.goodsModify(vo);
	}
	
}