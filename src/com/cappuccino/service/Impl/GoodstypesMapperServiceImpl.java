package com.cappuccino.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.GoodstypesMapper;
import com.cappuccino.pojo.Goodstypes;
import com.cappuccino.service.GoodstypesMapperService;

@Service
public class GoodstypesMapperServiceImpl implements GoodstypesMapperService{

	@Autowired
	private GoodstypesMapper gtsm;

	@Override
	public List<Goodstypes> getGoodsTypes_all() {
		// TODO Auto-generated method stub
		return gtsm.getGoodsTypes_all();
	}
}
