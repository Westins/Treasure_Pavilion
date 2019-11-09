package com.cappuccino.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cappuccino.pojo.Mainimg;
import com.cappuccino.pojo.Shoppingcart;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.MainimgMapperService;
import com.cappuccino.service.ShoppingcartMapperService;

@Controller("ShoppingcartController")
@RequestMapping("Shoppingcart")
public class ShoppingcartController {

	@Autowired
	private ShoppingcartMapperService scms;

	@RequestMapping("getShoppingCartByUserId")
	public void getShoppingCartByUserId(Model model, HttpSession session) {
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		List<Shoppingcart> ShoppingcartList = scms.getShoppingCatByUserId(user.getUserId(), 0);
		System.out.println(ShoppingcartList.toString());
		model.addAttribute("ShoppingcartList", ShoppingcartList);
	}

	@RequestMapping("deleteShoppingCartByCartId")
	public void deleteShoppingCartByCartId(HttpSession session, @Param("shoppingCartld") int shoppingCartld,
			PrintWriter out) { // 修改购物车商品数量
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		int i = scms.deleteShoppingCartGoodsNumByCareId(shoppingCartld);
		out.print(i);
		out.flush();
		out.close();
	}

	@RequestMapping("addShoppingCartGoods")
	public void addShoppingCart(HttpSession session, int GoodsId, int ShoppingCartNum, String ShoppingCartModel,
			String ShoppingCartColor, PrintWriter out) { // 修改购物车商品数量
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		Shoppingcart shoppingcart = new Shoppingcart();
		shoppingcart.setUserId(user.getUserId());
		shoppingcart.setGoodsId(GoodsId);
		shoppingcart.setShoppingCartModel(ShoppingCartModel);
		shoppingcart.setShoppingCartNum(ShoppingCartNum);
		shoppingcart.setShoppingCartColor(ShoppingCartColor);
		shoppingcart.setShoppingCartState(0);

		Shoppingcart sc = scms.selectShoppingCartByShopCart(shoppingcart);
		if (sc == null) {
			int i = scms.addShoppingCart(shoppingcart);
			out.print(i);
			out.flush();
			out.close();
		} else {
			System.out.println("该商品已存在于购物车中");
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsNum", ShoppingCartNum + sc.getShoppingCartNum());
			map.put("shoppingCartld", sc.getShoppingCartld());
			int i = scms.updateShoppingCartGoodsNumByCareId(map);
			out.print(i);
			out.flush();
			out.close();
		}

	}
	@RequestMapping("updateGoodsNum")
	public void updateGoodsNum(HttpSession session, @Param("shoppingCartld") int shoppingCartld,
			@Param("goodsNum") int goodsNum, PrintWriter out) { // 修改购物车商品数量
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("goodsNum", goodsNum);
		map.put("shoppingCartld", shoppingCartld);
		int i = scms.updateShoppingCartGoodsNumByCareId(map);
		out.print(i);
		out.flush();
		out.close();
	}
}
