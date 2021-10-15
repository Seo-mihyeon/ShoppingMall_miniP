package com.mall.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.mall.model.Criteria;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests_ListTest {

	@Autowired
	private AdminMapper mapper;
	
	@Test
	public void itemserch() {
		Criteria cri = new Criteria();
		
//		cri.setKeyword("로션");
//		List list = mapper.goodsGetList(cri);
//		for(int i = 0; i < list.size(); i++) {
//			System.out.println("result......." + i + " : " + list.get(i));
//		}
	
		int result = mapper.goodsGetTotal(cri);
		System.out.println("확인중" + result);
	}
}