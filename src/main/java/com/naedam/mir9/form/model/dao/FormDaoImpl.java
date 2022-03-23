package com.naedam.mir9.form.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class FormDaoImpl implements FormDao {
	@Autowired
	private SqlSession session;
}
