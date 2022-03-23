package com.naedam.mir9.point.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.point.model.dao.PointDao;

@Service
public class pointServiceImpl implements PointService {
	@Autowired
	private PointDao pointDao;
}
