package com.naedam.mir9.point.model.vo;

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
public class MemberPoint implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int memberPointNo;
	private int memberNo;
	private int pointNo;
	private Date memberPointDate;

}
