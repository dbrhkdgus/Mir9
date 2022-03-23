package com.naedam.mir9.statistics.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.statistics.model.service.StatisticsService;

@Controller
@RequestMapping("/statistics")
public class StatisticsController {
	@Autowired
	private StatisticsService statisticsService;
	
	@GetMapping("/period")
	public String statisticsPeriod() {
		
		return "statistics/period";
	}
	
	@GetMapping("/product")
	public String statisticsProduct() {
		
		return "statistics/product";
	}
	
	@GetMapping("/member")
	public String statisticsMember() {
		
		return "statistics/member";
	}
	
	@GetMapping("/address")
	public String statisticsAddress() {
		
		return "statistics/address";
	}
}
