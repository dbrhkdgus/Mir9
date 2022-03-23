package com.naedam.mir9.revision.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.revision.model.service.RevisionService;

@Controller
@RequestMapping("/revision")
public class RevisionController {
	@Autowired
	private RevisionService revisionService;
}
