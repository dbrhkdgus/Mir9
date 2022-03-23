package com.naedam.mir9.order.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naedam.mir9.option.model.vo.OrderOption;
import com.naedam.mir9.order.model.vo.Order;
import com.naedam.mir9.order.model.vo.OrderDetail;
import com.naedam.mir9.order.model.vo.OrderStatus;

@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired
	private SqlSession session;

	@Override
	public List<Order> selectOrderList(Map<String, String> param) {
		// TODO Auto-generated method stub
		return session.selectList("order.selectOrderList", param);
	}

	@Override
	public int selectOrderCnt(Map<String, String> param) {
		// TODO Auto-generated method stub
		return session.selectOne("order.selectOrderCnt",param);
	}

	@Override
	public List<OrderStatus> selectOrderStatusList() {
		// TODO Auto-generated method stub
		return session.selectList("order.selectOrderStatusList");
	}

	@Override
	public int updateOrderStaus(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return session.update("order.updateOrderStaus", param);
	}

	@Override
	public int updateAdminMemo(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return session.update("order.updateAdminMemo", param);
	}

	@Override
	public OrderDetail selectOneOrderDetailByOrderNo(long orderNo) {
		// TODO Auto-generated method stub
		return session.selectOne("order.selectOneOrderDetailByOrderNo", orderNo);
	}

	@Override
	public List<OrderOption> selectOrderOptionListByOrderNo(long orderNo) {
		// TODO Auto-generated method stub
		return session.selectList("order.selectOrderOptionListByOrderNo",orderNo);
	}

	


	
	
	
	
}
