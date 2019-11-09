package com.cappuccino.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Shops;

@Repository("ShopsMapper")
public interface ShopsMapper {
	// -----���� --------GO
	public List<Shops> getAllShopsInfo(@Param("ShopsTime") String ShopsTime, @Param("ShopsName") String ShopsName);
	public Shops selectShopsByShopsId(int shopsId);
	public int updateShopsByShopsId(Map<String, Object> map);
	public List<Shops> selShopsByNameOrVolume(Map<String, Object> map);
	// -----���� --------END
	
	// -----ŷ��� --------GO
	public Shops ShowShopGoods(String shopsId);
    public int AddShops(Shops shops);
    // -----ŷ��� --------END
}
