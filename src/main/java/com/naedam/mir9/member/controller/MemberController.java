package com.naedam.mir9.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.member.model.service.MemberService;
import com.naedam.mir9.member.model.vo.MemberGrade;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {
	@Autowired
	private MemberService memberService;
	@RequestMapping("/list")
	public String memberList() {
		
		return "member/memberList";
	}
	
	@GetMapping("/wdw")
	public String withdarawalMemberList() {
		
		return "member/withdrawalMemberList";
	}
	
	@GetMapping("/accesshistory")
	public String memberAccessHistory() {
		
		return "member/memberAccessHistory";
	}
	
	@GetMapping("/grade")
	public String memberGrade() {
		
		return "member/memberGrade";
	}
	
	@GetMapping("/pointList")
	public String memberPointList() {
		
		return "member/memberPointList";
	}
}
