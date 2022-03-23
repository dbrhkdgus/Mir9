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
@ToString(callSuper=true)
public class WithdrawalMember extends Member implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String reason;
	private Date withdrawalDate;
	public WithdrawalMember(int memberNo, int memberGradeNo, String firstName, String lastName, String address,
			String email, String phone, Date regDate, String status, String id, String password, String profileImg, String reason, Date withdrawalDate) {
		super(memberNo, memberGradeNo, firstName, lastName, address, email, phone, regDate, status, id, password, profileImg);
		this.reason = reason;
		this.withdrawalDate = withdrawalDate;
		// TODO Auto-generated constructor stub
	}
	
	
	
	

}
