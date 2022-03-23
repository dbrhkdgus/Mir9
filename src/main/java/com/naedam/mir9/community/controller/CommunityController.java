package com.naedam.mir9.community.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.community.model.service.CommunityService;

@Controller
@RequestMapping("/comm")
public class CommunityController {
	@Autowired
	private CommunityService communityService;
	
	@GetMapping("/email")
	public String commEmail() {
		
		return "community/email";
	}
	
	@GetMapping("/email_list")
	public String commEmailList() {
		return "community/emailList";
	}
	
	@GetMapping("/sms")
	public String commSms() {
		
		return "community/sms";
	}
	
	@GetMapping("/sms_list")
	public String commSmsList() {
		
		return "community/smsList";
	}
	
	@GetMapping("/review")
	public String commReview() {
		
		return "community/review";
	}
}
