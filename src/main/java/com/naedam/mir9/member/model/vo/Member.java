package com.naedam.mir9.member.model.vo;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Member implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int memberNo;
	private int memberGradeNo;
	private String firstName;
	private String lastName;
	private String address;
	private String email;
	private String phone;
	private Date regDate;
	private String status;
	private String id;
	private String password;
	private String profileImg;
	
	
}
