package com.naedam.mir9.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.option.model.service.OptionService;
import com.naedam.mir9.option.model.vo.Option;
import com.naedam.mir9.product.model.service.productService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	private productService productService;
	@Autowired
	private OptionService optionService;
	
	@GetMapping("/list")
	public String productList() {
		
		return "product/productList";
	}
	
	@GetMapping("/category")
	public String productCategory() {
		
		return "product/productCategory";
	}
	
	@GetMapping("/option")
	public String productOption(Model model) {
		List<Option> optionList = optionService.selectOptionList();
		
		model.addAttribute("optionList", optionList);
		
		
		return "product/option";
	}
}
