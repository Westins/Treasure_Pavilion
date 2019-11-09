package com.cappuccino.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cappuccino.pojo.Ordersinfo;

public interface OrdersinfoMapperService {
	public int addOrderInfo(Ordersinfo ordersinfo);

	public List<Ordersinfo> getOrderInfoByUserId(@Param("userId") int userId);

	public List<Ordersinfo> getOrdersinfoByOrdersinfoId(@Param("ordersInfoId") int ordersInfoId,
			@Param("userId") int userId);

	public Ordersinfo selOrderByOderId(int orderId);

	public int updateOrdersState(int ordersinfoid);

	// Å·Îäíµ GO
	public List<Ordersinfo> ShowOrderByShops(String shopsId);

	public int UpdateOrderInfoStateByShops(String ordersinfoid);

	public int ShowOrderByShopsState(String shopsId);
	// Å·Îäíµ END
}
