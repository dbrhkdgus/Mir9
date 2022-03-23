package com.naedam.mir9.delivery.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class DeliveryDaoImpl implements DeliveryDao {
	@Autowired
	private SqlSession session;
}
