package com.naedam.mir9.management.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.management.model.dao.ManagementDao;

@Service
public class ManagementServiceImpl implements ManagementService {
	@Autowired
	private ManagementDao ManagementDao;
}
