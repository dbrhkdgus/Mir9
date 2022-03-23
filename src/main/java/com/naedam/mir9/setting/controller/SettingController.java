package com.naedam.mir9.setting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.setting.model.service.SettingService;

@Controller
@RequestMapping("/setting")
public class SettingController {
	@Autowired
	private SettingService settingService;
	
	@GetMapping("/point")
	public void point() {
		
	}
	
	@GetMapping("/coupon")
	public void coupon() {
		
	}
	
	@GetMapping("/popup")
	public void popup() {
		
	}
	
	@GetMapping("/map")
	public void map() {
		
	}
	
	@GetMapping("/staff")
	public void staff() {
		
	}
	
	@GetMapping("/history")
	public void history() {}
	
	@GetMapping("/banner")
	public void banner() {}
	
	@GetMapping("/contract")
	public void contract() {}
	
	@GetMapping("/delivery_setting")
	public String deliverySertting() {
		
		return "setting/deliverySetting";
	}
	
	@GetMapping("/delivery_company")
	public String deliveryCompany() {
		
		return "setting/deliveryCompany";
	}
	
	@GetMapping("/info")
	public void info() {}
	
	@GetMapping("/seo")
	public void seo() {}
	
	@GetMapping("/paymentpg")
	public void paymentpg() {}
	
	@GetMapping("/snslogin")
	public void snsLogin() {}
	
	@GetMapping("/locale")
	public void locale() {}
	
	@GetMapping("/version")
	public void version() {}
}
