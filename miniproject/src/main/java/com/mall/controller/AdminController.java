package com.mall.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mall.model.AttachImageVO;
import com.mall.model.Criteria;
import com.mall.model.ItemVO;
import com.mall.model.PageDTO;
import com.mall.service.AdminService;

import net.coobird.thumbnailator.Thumbnails;

@Controller
@RequestMapping("/admin")
public class AdminController {

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	@Autowired
	private AdminService adminService;

	// 관리자 페이지 이동
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public void adminMainGET() throws Exception {
		logger.info("관리자 페이지 이동");
	}

	/* 상품 등록 페이지 */
	@PostMapping("/goodsEnroll")
	public String goodsManagerPOST(ItemVO item, RedirectAttributes rttr) {

		logger.info("goodsEnrollPOST......." + item);

		adminService.goodsEnroll(item);

		rttr.addFlashAttribute("enroll_result", item.getItemName());

		return "redirect:/admin/goodsManage";
	}

//	/* 상품 관리(상품목록) 페이지 접속 */
	@RequestMapping(value = "goodsManage", method = RequestMethod.GET)
	public void goodsManageGET(Criteria cri, Model model) throws Exception {

		logger.info("상품관리(상품목록) 페이지 접속");

		/* 상품 리스트 데이터 */
		List list = adminService.goodsGetList(cri);

		if (!list.isEmpty()) {
			model.addAttribute("list", list);
		} else {
			model.addAttribute("listCheck", "empty");
			return;
		}

		/* 페이지 인터페이스 데이터 */
		model.addAttribute("pageMaker", new PageDTO(cri, adminService.goodsGetTotal(cri)));
	}

	/* 상품 등록 페이지 접속 */
	@RequestMapping(value = "goodsEnroll", method = RequestMethod.GET)
	public void goodsEnrollGET(Model model) throws Exception {
		logger.info("상품 등록 페이지 접속");

	}

	/* 상품 조회 페이지 및 상품 수정 페이지 */
	@GetMapping({ "/goodsDetail", "/goodsModify" })
	public void goodsGetInfoGET(int itemid, Criteria cri, Model model) {

		logger.info("goodsGetInfo()........." + itemid);

		/* 목록 페이지 조건 정보 */
		model.addAttribute("cri", cri);

		/* 조회 페이지 정보 */
		model.addAttribute("goodsInfo", adminService.goodsGetDetail(itemid));

	}

	/* 상품 정보 수정 */
	@PostMapping("/goodsModify")
	public String goodsModifyPOST(ItemVO vo, RedirectAttributes rttr) {

		logger.info("goodsModifyPOST..............." + vo);
		int result = adminService.goodsModify(vo);

		rttr.addFlashAttribute("modify_result", result);

		return "redirect:/admin/goodsManage";
	}

	/*
	 * 첨부 파일 업로드 1. 이미지 파일 저장 2. 썸네일 이미지 파일 생성 및 저장 3. 각 이미지 정보 List 객체에 저장 4.
	 * ResponseEntity를 통해서 뷰(view)로 http 상태 코드가 200이고 httpBody에 이미지 정보가 담긴 List 객체
	 * 전송
	 */
	@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	// 파일이 여러개 들어온 경우 매개변수를 배열로 선언해줌
	public ResponseEntity<List<AttachImageVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {

		logger.info("uploadAjaxActionPOST..........");

		/* 이미지 파일 체크 - MIME TYPE 속성 활용 */
		for (MultipartFile multipartFile : uploadFile) {

			File checkfile = new File(multipartFile.getOriginalFilename());
			String type = null;

			try {
				type = Files.probeContentType(checkfile.toPath());
				logger.info("MIMEM TYPE: " + type);
			} catch (IOException e) {
				e.printStackTrace();
			}
			// MIME TYPE이 image가 아닌 경우 구현부가 실행되는 if문, image가 아니면 response의 상태코드(status)를
			// 400으로 반환
			if (!type.startsWith("image")) {

				List<AttachImageVO> list = null;
				return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
			}

		}

		// 업로드한 파일 저장할 경로 저장하는 변수
		String uploadFolder = "C:\\upload";

		/* 날짜 폴더 경로 */
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); // 날짜 데이터를 문자열로 변환하거나 문자열 데이터를 날짜 데이터로 변환해줌

		Date date = new Date(); // 날짜 데이터 얻음

		String str = sdf.format(date); // 날짜를 String타입으로 변환된 값을 대입

		String datePath = str.replace("-", File.separator); // "-"를 경로구분자인 \로 변경해주기

		/* 폴더 생성 - 날짜별로 폴더 따로 생성해줌 실행해보면 upload폴더안에 년 폴더-월 폴더-일 폴더로 생성될 것임 */
		File uploadPath = new File(uploadFolder, datePath);

		if (uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}

		/* 이미저 정보 담는 객체 */
		List<AttachImageVO> list = new ArrayList();

		// 전달받은 데이터에 대한 정보(파일 이름, 타입, 크기) 콘솔에 출력
		for (MultipartFile multipartFile : uploadFile) {

			/* 이미지 정복 객체 */
			AttachImageVO vo = new AttachImageVO();

			/* 파일 이름 */
			String uploadFileName = multipartFile.getOriginalFilename();
			vo.setFileName(uploadFileName);
			vo.setUploadPath(datePath);

			/*
			 * uuid 적용 파일 이름 - 이름이 같은 파일을 올리게 될 경우 getOriginalFilename으로 가져온 이름이 같아지며 파일을
			 * 덮어씌울 수 있기 때문에 UUID(범용 고유 식별자)로 바꿔줍니다.
			 */
			String uuid = UUID.randomUUID().toString();
			vo.setUuid(uuid);

			uploadFileName = uuid + "_" + uploadFileName;

			/* 파일 위치, 파일 이름을 합친 File 객체 */
			File saveFile = new File(uploadPath, uploadFileName);

			/* 1번 파일 저장 */
			try {
				multipartFile.transferTo(saveFile);
// 방법 1				
//				/* 썸네일 이미지 객체 - JAVA 내에서 크기를 지정한 이미지를 만들고 그 이미지에 맞게
//				 * 원본 이미지를 그려 넣은 다음 해당 이미지를 파일로 저장함  */
//				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);
//				
//				BufferedImage bo_image = ImageIO.read(saveFile);
//				
//				/* 비율 */
//				double ratio = 3;
//				/*넓이 높이*/
//				int width = (int) (bo_image.getWidth() / ratio);
//				int height = (int) (bo_image.getHeight() / ratio);	
//				/* 지정한 비율에 맞게 저장해줌*/
//				BufferedImage bt_image = new BufferedImage(width, height, BufferedImage.TYPE_3BYTE_BGR);
//				
//				Graphics2D graphic = bt_image.createGraphics();
//				
//				graphic.drawImage(bo_image, 0, 0,width,height, null);
//				
//				/* 제작한 썸네일 이미지를 파일로 만들어줌 */
//				ImageIO.write(bt_image, "jpg", thumbnailFile);

				// 2. 썸네일 이미지 파일 생성 및 저장 - 방법 2
				File thumbnailFile = new File(uploadPath, "s_" + uploadFileName);

				BufferedImage bo_image = ImageIO.read(saveFile);

				// 비율
				double ratio = 3;
				// 넓이 높이
				int width = (int) (bo_image.getWidth() / ratio);
				int height = (int) (bo_image.getHeight() / ratio);

				Thumbnails.of(saveFile).size(width, height).toFile(thumbnailFile);

			} catch (Exception e) {
				e.printStackTrace();
			}
			// 3. 각 이미지 정보 List 객체에 저장
			list.add(vo);
		}
		// 4번
		ResponseEntity<List<AttachImageVO>> result = new ResponseEntity<List<AttachImageVO>>(list, HttpStatus.OK);

		return result;
	}

	/* 상품 정보 삭제 */
	@PostMapping("/goodsDelete")
	public String goodsDeletePOST(int itemId, RedirectAttributes rttr) {

		logger.info("goodsDeletePOST..........");

		int result = adminService.goodsDelete(itemId);

		rttr.addFlashAttribute("delete_result", result);

		return "redirect:/admin/goodsManage";

	}

	/* 이미지 파일 삭제 */
	@PostMapping("/deleteFile")
	public ResponseEntity<String> deleteFile(String fileName) {

		logger.info("deleteFile........" + fileName);

		File file = null;

		try {
			/* 썸네일 파일 삭제 */
			file = new File("c:\\upload\\" + URLDecoder.decode(fileName, "UTF-8"));
			file.delete();

			/* 원본 파일 삭제 */
			String originFileName = file.getAbsolutePath().replace("s_", "");

			logger.info("originFileName : " + originFileName);

			file = new File(originFileName);

			file.delete();

		} catch (Exception e) {
			e.printStackTrace();
			// 파일 삭제 정상적으로 처리 못한다는 메세지
			return new ResponseEntity<String>("fail", HttpStatus.NOT_IMPLEMENTED);
		}
		return new ResponseEntity<String>("success", HttpStatus.OK);

	}

}
