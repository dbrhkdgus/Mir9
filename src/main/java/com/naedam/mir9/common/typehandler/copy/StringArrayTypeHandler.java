package com.naedam.mir9.common.typehandler.copy;

import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.StringTokenizer;

import org.apache.ibatis.type.BaseTypeHandler;
import org.apache.ibatis.type.JdbcType;
import org.apache.ibatis.type.MappedJdbcTypes;
import org.apache.ibatis.type.MappedTypes;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * getter 3개 (쿼리결과 -> vo필드세팅) 
 * 	- ResultSet에서 column name으로 가져오기
 * 	- ResultSet에서 column index으로 가져오기
 *  - CallableStatement(프로시져)에서 index로 가져오기 
 * setter 1개 (vo필드 -> 쿼리값세팅)
 * 	- setNonNullParameter String[] -> pstmt.setString
 *
 */
@MappedTypes(String[].class)
@MappedJdbcTypes(JdbcType.VARCHAR)
public class StringArrayTypeHandler extends BaseTypeHandler<String[]> {

	public static Logger log = LoggerFactory.getLogger(StringArrayTypeHandler.class);
	
	@Override
	public void setNonNullParameter(PreparedStatement pstmt, int i, String[] parameter, JdbcType jdbcType)
			throws SQLException {
		String value = String.join(",", parameter);
		pstmt.setString(i, value);
		log.debug("{} -> {} 변환완료!", Arrays.toString(parameter), value);
	}

	@Override
	public String[] getNullableResult(ResultSet rs, String columnName) throws SQLException {
		String columnValue = rs.getString(columnName);
		columnValue = columnValue.replaceAll("\\s", "");
		String[] value = null;
		if(columnValue != null) {
			StringTokenizer tokenizer = new StringTokenizer(columnValue, ", ");
			value = new String[tokenizer.countTokens()];
			for(int i = 0; tokenizer.hasMoreTokens(); i++) {
				value[i] = tokenizer.nextToken();
			}
		}
		log.debug(
				"{} -> {} 변환완료!", 
				columnValue, 
				value != null ? Arrays.toString(value) : null
			);
		return value;
	}

	@Override
	public String[] getNullableResult(ResultSet rs, int columnIndex) throws SQLException {
		String columnValue = rs.getString(columnIndex);
		columnValue = columnValue.replaceAll("\\s", "");
		String[] value = null;
		log.debug("index");
		if(columnValue != null) {
			StringTokenizer tokenizer = new StringTokenizer(columnValue, ",");
			value = new String[tokenizer.countTokens()];
			for(int i = 0; tokenizer.hasMoreTokens(); i++) {
				value[i] = tokenizer.nextToken();
			}
		}
		log.debug(
				"{} -> {} 변환완료!", 
				columnValue, 
				value != null ? Arrays.toString(value) : null
			);
		return value;
	}

	@Override
	public String[] getNullableResult(CallableStatement cs, int columnIndex) throws SQLException {
		String columnValue = cs.getString(columnIndex);
		columnValue = columnValue.replaceAll("\\s", "");
		String[] value = null;
		if(columnValue != null) {
			StringTokenizer tokenizer = new StringTokenizer(columnValue, ", ");
			value = new String[tokenizer.countTokens()];
			for(int i = 0; tokenizer.hasMoreTokens(); i++) {
				value[i] = tokenizer.nextToken();
			}
		}
		log.debug(
				"{} -> {} 변환완료!", 
				columnValue, 
				value != null ? Arrays.toString(value) : null
			);
		return value;
	}


}
