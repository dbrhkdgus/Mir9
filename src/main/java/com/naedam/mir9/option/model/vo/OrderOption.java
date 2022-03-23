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
public class OrderOption implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String optionName;
	private String optionValue;
	private int optionValueCost;
	
}
