package com.cappuccino.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.OrdersinfoMapper;
import com.cappuccino.pojo.Ordersinfo;
import com.cappuccino.service.OrdersinfoMapperService;

@Service
public class OrdersinfoMapperServiceImpl implements OrdersinfoMapperService{

	@Autowired
	private OrdersinfoMapper om;

	@Override
	public int addOrderInfo(Ordersinfo ordersinfo) {
		// TODO Auto-generated method stub
		return om.addOrderInfo(ordersinfo);
	}

	@Override
	public List<Ordersinfo> getOrderInfoByUserId(int userId) {
		// TODO Auto-generated method stub
		return om.getOrderInfoByUserId(userId);
	}

	@Override
	public List<Ordersinfo> getOrdersinfoByOrdersinfoId(int ordersInfoId, int userId) {
		// TODO Auto-generated method stub
		return om.getOrdersinfoByOrdersinfoId(ordersInfoId, userId);
	}

	@Override
	public Ordersinfo selOrderByOderId(int orderId) {
		// TODO Auto-generated method stub
		return om.selOrderByOderId(orderId);
	}

	@Override
	public int updateOrdersState(int ordersinfoid) {
		// TODO Auto-generated method stub
		return om.updateOrdersState(ordersinfoid);
	}
	
	//Å·Îäíµ GO
	@Override
	public List<Ordersinfo> ShowOrderByShops(String shopsId) {
		// TODO Auto-generated method stub
		return om.ShowOrderByShops(shopsId);
	}

	@Override
	public int UpdateOrderInfoStateByShops(String ordersinfoid) {
		// TODO Auto-generated method stub
		return om.UpdateOrderInfoStateByShops(ordersinfoid);
	}
	
	@Override
	public int ShowOrderByShopsState(String shopsId) {
		// TODO Auto-generated method stub
		return om.ShowOrderByShopsState(shopsId);
	}
	//Å·Îäíµ END
}
