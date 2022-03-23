package com.naedam.mir9.setting.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.setting.model.dao.SettingDao;

@Service
public class SettingServiceImpl implements SettingService {
	@Autowired
	public SettingDao settingDao;
}
