package com.cappuccino.controller;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usergoods;
import com.cappuccino.service.MainimgMapperService;
import com.cappuccino.service.ShopsMapperService;
import com.cappuccino.service.UserGoodsMapperService;

@Controller("UserGoodsController")
@RequestMapping("UserGoods")
public class UserGoodsController {

	@Autowired
	private UserGoodsMapperService ugm;

	@RequestMapping("getUserGoodsByUserInfo")
	public void getUserGoodsByUserInfo(Model model, HttpSession session) { // 商铺信息
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		session.setAttribute("UserInfo", user);
		List<Goods> UserGoodsByUserList = ugm.getUserGoodsInfoAll(user);
		System.out.println(UserGoodsByUserList.toString());
		model.addAttribute("UserGoodsByUserList", UserGoodsByUserList);
	}

	@RequestMapping("addUserGoods")
	public void addUserGoods(Model model, HttpSession session, @RequestParam("GoodsId") int GoodsId, PrintWriter out,
			String color, String goodsmodel) { // 商铺信息
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		Usergoods usergoods = new Usergoods();
		int i = 0;
		try {
			usergoods.setUserId(user.getUserId());
		} catch (Exception e) {
		}
		usergoods.setGoodsId(GoodsId);
		usergoods.setUserGoodsModel(goodsmodel);
		usergoods.setUserGoodsColor(color);
		Usergoods ugs = ugm.selectUserGoodsInfoByColorAndModel(usergoods);
		if (ugs == null) {
			i = ugm.addUserGoods(usergoods);// 返回添加结果
			out.print(i);
			out.flush();
			out.close();
		} else {
			out.print("have");
			out.flush();
			out.close();
		}

	}

	@RequestMapping("deleteUserGoodsByUserGoodsId")
	public void deleteUserGoodsByUserGoodsId(Model model, @Param("usergoodsId") int usergoodsId, PrintWriter out) {
		System.out.println("usergoodsId:" + usergoodsId);
		int i = ugm.deleteUserGoods(usergoodsId);
		out.print(i);
		out.flush();
		out.close();
	}
}
