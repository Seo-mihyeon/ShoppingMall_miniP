package com.mall.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mall.mapper.AttachMapper;
import com.mall.model.AttachImageVO;
import com.mall.model.Criteria;
import com.mall.model.ItemVO;
import com.mall.model.PageDTO;
import com.mall.service.ItemService;

@Controller // 이 클래스가 컨틀로러 역할을 한다고 스프링에 선언해줌
public class MallController {

	// 로그 기록을 남기기 위해 변수를 선언해줌
	private static final Logger logger = LoggerFactory.getLogger(MallController.class);

	@Autowired
	private AttachMapper attachMapper;
	
	@Autowired
	private ItemService itemService;
	


	
	// 메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		logger.info("메인 페이지 진입");
	}
	

	// 메인 페이지에 이미지 출력
	@GetMapping("/display")
	// 반환타입은 byte 데이터로
	// 파라미터는 파일 경로+파일이름으로 전달받기 위해 String 타입으로 선언
	public ResponseEntity<byte[]> getImage(String fileName) {
		
		logger.info("getImage()...." + fileName);

		File file = new File("c:\\upload\\" + fileName);

		ResponseEntity<byte[]> result = null;

		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));

			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/* 이미지 정보 반환 */
	@GetMapping(value = "/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> getAttachList(int itemId) {

		logger.info("getAttachList.........." + itemId);

		return new ResponseEntity<List<AttachImageVO>>(attachMapper.getAttachList(itemId), HttpStatus.OK);
	}
	
	/* 상품 검색 */
	@GetMapping("search")
	public String searchGoodsGET(Criteria cri, Model model) {
		
		logger.info("cri : " + cri);
		
		List<ItemVO> list = itemService.getGoodsList(cri);
		logger.info("pre list : " + list);
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			logger.info("list : " + list);
		} else {
			model.addAttribute("listcheck", "empty");
			
			return "search";
		}
		
		model.addAttribute("pageMaker", new PageDTO(cri, itemService.goodsGetTotal(cri)));
		
		
		return "search";
		
	}

	/* 카테고리 별 조회 */
	@GetMapping("cate1")
	public String searchCateGET(Criteria cri, Model model) {
		
		logger.info("cri : " + cri);
		
		List<ItemVO> list = itemService.getGoodsList(cri);
		logger.info("pre list : " + list);
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			logger.info("list : " + list);
		} else {
			model.addAttribute("listcheck", "empty");
			
			return "cate1";
		}
		
		model.addAttribute("pageMaker", new PageDTO(cri, itemService.goodsGetTotal(cri)));
		
		
		return "cate1";
		
	}
}
