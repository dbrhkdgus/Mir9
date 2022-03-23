package com.naedam.mir9.setting.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class SettingDaoImpl implements SettingDao {
	@Autowired
	private SqlSession session;
}
