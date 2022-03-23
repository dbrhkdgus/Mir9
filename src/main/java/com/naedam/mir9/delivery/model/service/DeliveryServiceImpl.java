package com.naedam.mir9.delivery.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.delivery.model.dao.DeliveryDao;

@Service
public class DeliveryServiceImpl implements DeliveryService {
	@Autowired
	private DeliveryDao deliveryDao;
}
