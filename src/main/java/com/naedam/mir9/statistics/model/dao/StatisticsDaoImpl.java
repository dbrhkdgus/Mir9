package com.naedam.mir9.statistics.model.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StatisticsDaoImpl implements StatisticsDao {
	@Autowired
	private SqlSession session;
}
