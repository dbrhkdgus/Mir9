package com.naedam.mir9.order.model.vo;

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
public class OrderDetail implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String imgUrl;
	private String productName;
	private int salePrice;
	private int orderAmt;
	private int deliFee;
	private String name;
	private String phone;
	private long orderNo;
	private String payType;
	private int payAmt;
	private String account;
	private String bankName;
	private String owner;
	private String payDepositor;
	private String receiver;
	private String receiverPhone;
	private String shippingAddress;
	private String memo;
	private String adminMemo;
	private int orderStatusNo;
	private String statusName;
	private Date payDate;
	private int OrderInfoNo;
	
}
