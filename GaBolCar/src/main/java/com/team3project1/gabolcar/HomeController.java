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
	
	@GetMapping("carRes")
	public String carRes() {
		return "html/car_res";
	}
	@GetMapping("carRes/carDetail")
	public String carIntroduce() {
		return "html/project3_2";
	}
	@GetMapping("carRes/resInfo")
	public String resInfo() {
		return "html/4-3";
	}
	
	
	@GetMapping("resInq")
	public String resInq() {
		return "html/res_inq";
	}
	@GetMapping("member")
	public String member() {
		return "html/member";
	}
	@GetMapping("login")
	public String login() {
		return "html/login";
	}


	@GetMapping("carInfo")
	public String carInfo() {
		return "html/6p";
	}
	
	@GetMapping("resCom")
	public String resCom() {
		return "html/res_com";
	}
	@GetMapping("signup")
	public String signup() {
		return "html/signup";
	}
	@GetMapping("resResult")
	public String resResult() {
		return "html/res_com";
	}

	@GetMapping("resDetail")
	public String resDetail() {
		return "html/res_detail";
	}
	@GetMapping("branchLocation")
	public String branchLocation() {
		return "html/branch_location";
	}
	@GetMapping("carLeg")
	public String carLeg() {
		return "html/car_leg2";
	}
	@GetMapping("memberFind")
	public String memberFind() {
		return "html/Find";
	}
	@GetMapping("siteHowTo")
	public String siteHowTo() {
		return "html/page7";
	}
	@GetMapping("siteFAQ")
	public String siteFAQ() {
		return "html/faq";
	}
	@GetMapping("notice")
	public String notice() {
		return "html/notice";
	}
	
	@GetMapping("memberOut")
	public String memberOut() {
		return "html/out";
	}

	
	// ======================= 수정중 jsp ===========================


	@GetMapping("carLegModify")
	public String carLegModify() {
		return "html/car_modify";
	}


	@GetMapping("reviewBoard")
	public String reviewBoard() {
		return "html/reviewPage2";
	}
	
	@GetMapping("reviewDetail")
	public String reviewDetail() {
		return "html/review_detail2";
	}
	
}
