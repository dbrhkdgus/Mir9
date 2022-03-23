package com.naedam.mir9.order.model.vo;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderInfo implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int orderInfoNo;
	private long orderNo;
	private String reciever;
	private String shippingAddress;
	private String phone;
	private String memo;
	private String adminMemo;
	private int orderAmt;

}
