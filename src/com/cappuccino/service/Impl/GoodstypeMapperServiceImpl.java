package com.cappuccino.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.GoodstypeMapper;
import com.cappuccino.pojo.Goodstype;
import com.cappuccino.service.GoodstypeMapperService;

@Service
public class GoodstypeMapperServiceImpl implements GoodstypeMapperService {
	@Autowired
	private GoodstypeMapper gtm;

	@Override
	public List<Goodstype> getGoodsType_all() {
		// TODO Auto-generated method stub
		return gtm.getGoodsType_all();
	}

	@Override
	public List<Goodstype> getAllType() {
		// TODO Auto-generated method stub
		return gtm.getAllType();
	}
}
