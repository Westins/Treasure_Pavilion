package com.cappuccino.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.cappuccino.pojo.Ordersinfo;

@Repository("OrdersinfoMapper")
public interface OrdersinfoMapper {
	public int addOrderInfo(Ordersinfo ordersinfo);

	public List<Ordersinfo> getOrderInfoByUserId(@Param("userId") int userId);

	public List<Ordersinfo> getOrdersinfoByOrdersinfoId(@Param("ordersInfoId") int ordersInfoId,
			@Param("userId") int userId);

	public Ordersinfo selOrderByOderId(@Param("orderId") int orderId);

	public int updateOrdersState(int ordersinfoid);

	// Å·Îäíµ Go
	public List<Ordersinfo> ShowOrderByShops(String shopsId);

	public int UpdateOrderInfoStateByShops(String ordersinfoid);

	public int ShowOrderByShopsState(String shopsId);
	// Å·Îäíµ END
}
