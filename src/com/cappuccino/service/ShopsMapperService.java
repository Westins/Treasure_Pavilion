package com.cappuccino.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cappuccino.pojo.Shops;

public interface ShopsMapperService {
	public List<Shops> getAllShopsInfo(@Param("ShopsTime") String ShopsTime, @Param("ShopsName") String ShopsName);
	public Shops selectShopsByShopsId(@Param("shopsId")int shopsId);
	public int updateShopsByShopsId(Map<String, Object> map);
	public List<Shops> selShopsByNameOrVolume(Map<String, Object> map);
	//<!-- Å·Îäíµ Go -->
	public Shops ShowShopGoods(String shopsId);
	public int AddShops(Shops shops);
	//<!-- Å·Îäíµ END -->
}
