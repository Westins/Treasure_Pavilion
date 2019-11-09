package com.cappuccino.service.Impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cappuccino.dao.ShoppingcartMapper;
import com.cappuccino.pojo.Shoppingcart;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.ShoppingcartMapperService;

@Service
public class ShoppingcartMapperServiceImpl implements ShoppingcartMapperService {

	@Autowired
	private ShoppingcartMapper scm;

	@Override
	public int deleteShoppingCartGoodsNumByCareId(int CareId) {
		// TODO Auto-generated method stub
		return scm.deleteShoppingCartGoodsNumByCareId(CareId);
	}

	@Override
	public int addShoppingCart(Shoppingcart shoppingcart) {
		// TODO Auto-generated method stub
		return scm.addShoppingCart(shoppingcart);
	}

	@Override
	public List<Shoppingcart> getShoppingCatByUserId(int userId, int ordersId) {
		// TODO Auto-generated method stub
		return scm.getShoppingCatByUserId(userId, ordersId);
	}

	@Override
	public Shoppingcart getShoppingCartByCarId(int carId) {
		// TODO Auto-generated method stub
		return scm.getShoppingCartByCarId(carId);
	}

	@Override
	public Shoppingcart selectShoppingCartByShopCart(Shoppingcart shoppingcart) {
		// TODO Auto-generated method stub
		return scm.selectShoppingCartByShopCart(shoppingcart);
	}

	@Override
	public int updateShoppingCartNumByCartId(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return scm.updateShoppingCartNumByCartId(map);
	}

	@Override
	public int updateShoppingCartGoodsNumByCareId(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return scm.updateShoppingCartGoodsNumByCareId(map);
	}

}
