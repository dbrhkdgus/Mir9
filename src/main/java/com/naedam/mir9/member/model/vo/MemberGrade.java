package com.naedam.mir9.member.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class MemberGrade implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int memberGradeNo;
	private String grade;
}
