package com.team3project1.gabolcar;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "main";
	}
	//차량 예약 검색
	@GetMapping("carRes")
	public String carRes() {
		return "html/car_res";
	}
	// 예약 차량 상세 정보
	@GetMapping("carRes/carDetail")
	public String carIntroduce() {
		return "html/project3_2";
	}
	//차량 예약 정보 작성 폼
	@GetMapping("carRes/resInfo")
	public String resInfo() {
		return "html/4-3";
	}
	
	// 차량 예약 완료 페이지

	@GetMapping("resResult")
	public String resResult() {
		return "html/res_com";
	}
	
	// 멤버) 차량 예약 조회
	@GetMapping("resInq")
	public String resInq() {
		return "html/res_inq";
	}
	
	//회원 정보 수정
	@GetMapping("memberUpdate")
	public String member() {
		return "html/member_update";
	}
	

	//차량 소개
	@GetMapping("carInfo")
	public String carInfo() {
		return "html/6p";
	}
	

	//예약 상세 정보
	@GetMapping("resDetail")
	public String resDetail() {
		return "html/res_detail";
	}
	
	// 찾아 오는 길
	@GetMapping("branchLocation")
	public String branchLocation() {
		return "html/branch_location";
	}
	
	// 관리자) 차량 등록
	@GetMapping("carLeg")
	public String carLeg() {
		return "html/car_leg2";
	}
	
	//로그인 페이지
	@GetMapping("login")
	public String login() {
		return "html/login";
	}
	
	// 아이디 비밀번호 찾기
	@GetMapping("memberFind")
	public String memberFind() {
		return "html/Find";
	}
	
	//회원가입
	@GetMapping("signup")
	public String signup() {
		return "html/signup";
	}
	
	// 사이트 이용 안내
	@GetMapping("siteHowTo")
	public String siteHowTo() {
		return "html/page7";
	}
	
	// 사이트 자주묻는 질문 (FAQ)
	@GetMapping("siteFAQ")
	public String siteFAQ() {
		return "html/faq";
	}
	
	// 공지사항 게시판
	@GetMapping("notice")
	public String notice() {
		return "html/notice/notice";
	}
	
	// 공지사항 글 자세히 보기
	@GetMapping("noticeDetail")
	public String noticeDetail() {
		return "html/notice/notice_detail";
	}
	
	// 공지사항 쓰기
	@GetMapping("noticeWrite")
	public String noticeBoard() {
		return "html/notice/notice_write_form";
	}
	
	// 회원 탈퇴
	@GetMapping("memberOut")
	public String memberOut() {
		return "html/out";
	}
	
	// 리뷰 게시판
	@GetMapping("reviewBoard")
	public String reviewBoard() {
		return "html/review/review_board";
	}
	// 리뷰 글 자세히 보기
	@GetMapping("reviewDetail")
	public String reviewDetail() {
		return "html/review/review_detail";
	}
	
	// 리뷰 쓰기 폼
	@GetMapping("reviewWrite")
	public String reviewWrite() {
		return "html/review/review_write_form";
	}
	
	// ======================= 수정중 jsp ===========================

	@GetMapping("carLegModify")
	public String carLegModify() {
		return "html/car_modify";
	}




	
}
