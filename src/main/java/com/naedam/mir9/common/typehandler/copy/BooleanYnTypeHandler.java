package com.naedam.mir9.common.typehandler.copy;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;

import lombok.extern.slf4j.Slf4j;

/**
 * 
 * boolean(java) <----------> 'Y', 'N' (char)
 * @author ehqkr
 *
 */
@MappedTypes(boolean.class)
@MappedJdbcTypes(JdbcType.CHAR)
@Slf4j
public class BooleanYnTypeHandler extends BaseTypeHandler<Boolean> {

	@Override
	public void setNonNullParameter(PreparedStatement ps, int i, Boolean parameter, JdbcType jdbcType)
			throws SQLException {
		ps.setString(i, parameter ? "Y" : "N");

	}

	@Override
	public Boolean getNullableResult(ResultSet rs, String columnName) throws SQLException {
		// TODO Auto-generated method stub
		return "Y".equals(rs.getString(columnName));
	}

	@Override
	public Boolean getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		return "Y".equals(rs.getString(columnIndex));
	}

	@Override
	public Boolean getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
		// TODO Auto-generated method stub
		return "Y".equals(cs.getString(columnIndex));
	}

}
