package com.naedam.mir9.option.model.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.naedam.mir9.option.model.vo.Option;
import com.naedam.mir9.option.model.vo.OptionValue;
import com.naedam.mir9.option.model.vo.ProductOption;

@Repository
public class OptionDaoImpl implements OptionDao {
	@Autowired
	private SqlSession session;

	@Override
	public int insertOption(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return session.insert("option.insertOption", param);
	}

	@Override
	public int insertOptionValue(Map<String, Object> param) {
		// TODO Auto-generated method stub
		return session.insert("option.insertOptionValue", param);
	}

	@Override
	public List<Option> selectOptionList() {
		// TODO Auto-generated method stub
		return session.selectList("option.selectOptionList");
	}

	@Override
	public ProductOption selectOneProductOptionByoptionNo(int optionNo) {
		// TODO Auto-generated method stub
		return session.selectOne("option.selectOneProductOptionByoptionNo", optionNo);
	}

	@Override
	public List<OptionValue> selectOptionValueListByOptionNo(int optionNo) {
		// TODO Auto-generated method stub
		return session.selectList("option.selectOptionValueListByOptionNo", optionNo);
	}

	@Override
	public int updateOptionValue(OptionValue ov) {
		// TODO Auto-generated method stub
		return session.update("option.updateOptionValue", ov);
	}

	@Override
	public int updateProductOption(ProductOption pOption) {
		// TODO Auto-generated method stub
		return session.update("option.updateProductOption", pOption);
	}
	
	
}
