package com.cappuccino.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.cappuccino.pojo.Shoppingcart;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;

public interface ShoppingcartMapperService {
	public List<Shoppingcart> getShoppingCatByUserId(@Param("userId") int userId, @Param("ordersId") int ordersId);

	public int deleteShoppingCartGoodsNumByCareId(int CareId);

	public int addShoppingCart(Shoppingcart shoppingcart);

	public Shoppingcart getShoppingCartByCarId(@Param("carId") int carId);

	public Shoppingcart selectShoppingCartByShopCart(Shoppingcart shoppingcart);

	public int updateShoppingCartNumByCartId(Map<String, Object> map);
	
	public int updateShoppingCartGoodsNumByCareId(Map<String, Object> map);
}
