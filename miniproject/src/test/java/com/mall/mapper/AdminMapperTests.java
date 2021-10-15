package com.mall.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mall.model.ItemVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests {

	@Autowired
	private AdminMapper mapper;
	
//	@Test
//	public void goodsEnrollTest() throws Exception{
//		ItemVO item = new ItemVO();
//		
//		item.setItemCode("1");
//		item.setItemName("토너");
//		item.setItemPrice(10000);
//		item.setItemInfo("토너입니다");
//		
//		mapper.goodsEnroll(item);
//	}
	
	@Test
	public void goodDeleteTest() {
		
		int itemId = 24;
		
		int result = mapper.goodsDelete(itemId);
		
		if(result == 1) {
			System.out.println("삭제 성공");
		}
	}
}
