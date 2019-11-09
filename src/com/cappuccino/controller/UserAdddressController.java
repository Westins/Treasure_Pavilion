package com.cappuccino.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.pojo.UserAddress;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.MainimgMapperService;
import com.cappuccino.service.UserAddressMapperService;

@Controller("UserAdddressController")
@RequestMapping("UserAdddress")
public class UserAdddressController {

	@Autowired
	private UserAddressMapperService uams;

	@RequestMapping("getUserAdddressByUserId")
	public void getUserAdddressByUserId(Model model, HttpSession session) { // 获取主页轮播图片信息
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		List<UserAddress> UserAddressList = uams.getUserAddress(user);
		model.addAttribute("UserAddressList", UserAddressList);
	}

	@RequestMapping("addUserAdddress")
	public void addUserAdddress(Model model, HttpSession session, PrintWriter out, @Param("name") String name,
			@Param("phone") String phone, @Param("address") String address) { // 获取主页轮播图片信息
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		UserAddress userAddress = new UserAddress();
		userAddress.setUserId(user.getUserId());
		userAddress.setPhone(phone);
		userAddress.setAddress(address);
		userAddress.setConsignee(name);
		int i = uams.addUserAddress(userAddress);
		out.print(i);
		out.flush();
		out.close();
	}
}
