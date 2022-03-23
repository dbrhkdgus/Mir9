package com.naedam.mir9.product.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.naedam.mir9.product.model.dao.ProductDao;

@Service
public class ProductServiceImpl implements productService{
	@Autowired
	private ProductDao productDao;

}
