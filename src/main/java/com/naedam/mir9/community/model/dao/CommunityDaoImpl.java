package com.naedam.mir9.community.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommunityDaoImpl implements CommunityDao {
	@Autowired
	private SqlSession session;
}
