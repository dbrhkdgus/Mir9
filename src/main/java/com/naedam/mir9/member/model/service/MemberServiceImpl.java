package com.naedam.mir9.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.member.model.dao.MemberDao;
import com.naedam.mir9.member.model.vo.MemberGrade;

@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	private MemberDao memberDao;


	
}
