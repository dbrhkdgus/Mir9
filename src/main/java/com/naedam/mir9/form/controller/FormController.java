package com.naedam.mir9.form.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.form.model.service.FormService;

@Controller
@RequestMapping("/form")
public class FormController {
	@Autowired
	private FormService formService;
	
	@GetMapping("/list")
	public String formList() {
		
		return "form/formList";
	}
	
	@GetMapping("/qna")
	public void qna() {
		
	}
}
