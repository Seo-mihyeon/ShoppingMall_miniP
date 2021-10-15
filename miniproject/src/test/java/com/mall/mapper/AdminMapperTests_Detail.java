package com.mall.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mall.model.ItemVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests_Detail {

	@Autowired
	private AdminMapper mapper;
	
	@Test
	public void goodsGetDetailTest() {
		
		int itemid = 24;
		
		ItemVO result = mapper.goodsGetDetail(itemid);
		
		System.out.println("상품 조회 데이터 " + result);
		
	}
}