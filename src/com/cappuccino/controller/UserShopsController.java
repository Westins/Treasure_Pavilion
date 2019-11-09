package com.cappuccino.controller;

import java.io.PrintWriter;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.annotation.Rollback;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usershops;
import com.cappuccino.service.MainimgMapperService;
import com.cappuccino.service.ShopsMapperService;
import com.cappuccino.service.UserGoodsMapperService;
import com.cappuccino.service.UserShopsMapperService;

@Controller("UserShopsController")
@RequestMapping("UserShops")
public class UserShopsController {

	@Autowired
	private UserShopsMapperService usms;

	@RequestMapping("getUserShopsByUserInfo")
	public void getUserShopsByUserInfo(Model model, HttpSession session) { // ������Ϣ
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		List<Usershops> UserShopsByUserList = usms.getUserShopsInfoAll(user);
		model.addAttribute("UserShopsByUserList", UserShopsByUserList);
	}

	@RequestMapping("deleteUserShopsByUserShopsId")
	public void deleteUserShopsByUserShopsId(Model model, @Param("userShopsId") int userShopsId, PrintWriter out) { // ɾ���ղ�������Ϣ
		int i = usms.deleteUserShops(userShopsId);
		out.print(i);
		out.flush();
		out.close();
	}

	@RequestMapping("addShopsByUserShopsId")
	public void addShopsByUserShopsId(Model model, @Param("shopsId") int shopsId, PrintWriter out,
			HttpSession session) { // ɾ���ղ�������Ϣ
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		Usershops usershops = new Usershops();
		usershops.setShopsId(shopsId);
		int i = 0;
		try {
			usershops.setUserId(user.getUserId());			
		} catch (Exception e) {
			System.out.println("δ��¼��");
		}
		Usershops us = usms.selectUserShopsByShopsIdAndUserId(usershops);
		if(us==null){
			i = usms.addUserShops(usershops);
			out.print(i);
			out.flush();
			out.close();
		}else {
			out.print("have");
			out.flush();
			out.close();
		}
		
	}
}
