package com.naedam.mir9.management.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.management.model.service.ManagementService;

@Controller
@RequestMapping("/management")
public class ManagementController {
	@Autowired
	private ManagementService managementService;
	
	@GetMapping("/management")
	public String managemanagement() {
		
		return "management/managementList";
	}
	
	@GetMapping("/header")
	public String manageHeader() {
		
		return "management/header";
	}
	
	@GetMapping("footer")
	public String manageFooter() {
		
		return "management/footer";
	}
	
	@GetMapping("meta")
	public String manageMeta() {
		
		return "management/meta";
	}
}
