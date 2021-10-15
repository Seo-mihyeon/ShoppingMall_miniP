package com.mall.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller // 이 클래스가 컨틀로러 역할을 한다고 스프링에 선언해줌
public class MallController {

	// 로그 기록을 남기기 위해 변수를 선언해줌
	private static final Logger logger = LoggerFactory.getLogger(MallController.class);

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
}
