package com.cappuccino.service.Impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.ShopsMapper;
import com.cappuccino.pojo.Shops;
import com.cappuccino.service.ShopsMapperService;

@Service
public class ShopsMapperServiceImpl implements ShopsMapperService {

	@Autowired
	private ShopsMapper sm;

	@Override
	public List<Shops> getAllShopsInfo(String ShopsTime, String ShopsName) {
		// TODO Auto-generated method stub
		return sm.getAllShopsInfo(ShopsTime, ShopsName);
	}

	//<!-- Å·Îäíµ Go -->
	@Override
	public Shops ShowShopGoods(String shopsId) {
		// TODO Auto-generated method stub
		return sm.ShowShopGoods(shopsId);
	}
	@Override
	public int AddShops(Shops shops) {
		// TODO Auto-generated method stub
		return sm.AddShops(shops);
	}
	//<!-- Å·Îäíµ END -->

	@Override
	public Shops selectShopsByShopsId(int shopsId) {
		// TODO Auto-generated method stub
		return sm.selectShopsByShopsId(shopsId);
	}

	@Override
	public int updateShopsByShopsId(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sm.updateShopsByShopsId(map);
	}

	@Override
	public List<Shops> selShopsByNameOrVolume(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sm.selShopsByNameOrVolume(map);
	}
}
