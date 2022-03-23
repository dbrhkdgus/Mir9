package com.naedam.mir9.order.model.dao;

import java.util.List;
import java.util.Map;

import com.naedam.mir9.option.model.vo.OrderOption;
import com.naedam.mir9.order.model.vo.Order;
import com.naedam.mir9.order.model.vo.OrderDetail;
import com.naedam.mir9.order.model.vo.OrderStatus;

public interface OrderDao {

	List<Order> selectOrderList(Map<String, String> param);

	int selectOrderCnt(Map<String, String> param);

	List<OrderStatus> selectOrderStatusList();

	int updateOrderStaus(Map<String, Object> param);

	int updateAdminMemo(Map<String, Object> param);

	OrderDetail selectOneOrderDetailByOrderNo(long orderNo);

	List<OrderOption> selectOrderOptionListByOrderNo(long orderNo);


}
