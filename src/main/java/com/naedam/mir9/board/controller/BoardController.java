package com.naedam.mir9.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.naedam.mir9.board.model.service.BoardService;



@Controller
@RequestMapping("/board")
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@GetMapping("/list")
	public String boardList() {
		
		return "board/boardList";
	}
	
	@GetMapping("/notice")
	public String notice() {
		
		return "board/notice";
	}
	
	@GetMapping("/faq")
	public String qna() {
		
		return "board/faq";
	}
	
	@GetMapping("/oto")
	public String oneToOne() {
		
		return "board/one2one";
	}
}
