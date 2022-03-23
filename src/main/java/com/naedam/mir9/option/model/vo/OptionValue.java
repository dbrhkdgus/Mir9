package com.naedam.mir9.option.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OptionValue implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int optionValueNo;
	private int optionNo;
	private String optionValue;
	private int optionValueCost;
	
}
