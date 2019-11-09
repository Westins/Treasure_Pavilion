package com.cappuccino.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cappuccino.pojo.Mainimg;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.MainimgMapperService;
import com.cappuccino.service.ShopsMapperService;
import com.google.gson.Gson;

@Controller("ShopsController")
@RequestMapping("Shops")
public class ShopsController {
	
	@Autowired
	private ShopsMapperService sms;
	
	@RequestMapping("getShopsInfo")
	public void getShopsInfo(Model model,HttpServletRequest request) { //������Ϣ
		String ShopsName = request.getParameter("selectInfoByCondition");
		List<Shops> ShopsInfoList = sms.getAllShopsInfo("no", ShopsName);	
		System.out.println(ShopsInfoList.toString());
		model.addAttribute("ShopsInfoList", ShopsInfoList);
	}
	@RequestMapping("getShopsInfoDesc")
	public void getShopsInfoDesc(Model model) { //������Ϣ���ݴ���ʱ������ ����
		List<Shops> ShopsInfoDescList = sms.getAllShopsInfo("yes", null);
		model.addAttribute("ShopsInfoDescList", ShopsInfoDescList);
	}//
	@RequestMapping("selShopsByNameOrVolume")
	public void selShopsByNameOrVolume(Map<String, Object> map,PrintWriter out) { //��ȡ������Ϣ ���������ƻ�������ʾ
		List<Shops> ShopsInfoList = sms.selShopsByNameOrVolume(map);
		Gson json = new Gson();
		String ShopsInfoJson = json.toJson(ShopsInfoList);
		out.print(ShopsInfoJson);
		out.flush();
		out.close();
	}
	@RequestMapping("isShopsMater")
	public boolean isShopsMater(String shopId,HttpSession session){
		int shopsId = Integer.parseInt(shopId);
		UserInfo user = (UserInfo)session.getAttribute("userinfo");
		Shops shops = sms.selectShopsByShopsId(shopsId);
		if(shops.getShopsId()==user.getUserId()){
			return true;
		}else {
			return false;
		}
	}
	//<!-- ŷ��� Go -->
	@RequestMapping("/ShopsShowGoods")
	public void ShowGoods(Model model, String shopsId) {
		Shops showShops = sms.ShowShopGoods(shopsId);
		System.out.println("����״̬��" + showShops.getShopState());
		if (showShops.getShopState() == 1) {
			model.addAttribute("shopState", 1);
			model.addAttribute("shops", showShops);
		} else if (showShops.getShopState() == 4) {
			model.addAttribute("shopState", 4);
		} else {
			model.addAttribute("shopState", 0);
		}
	}

	// ����
	@RequestMapping("InsertShops")
	public void InsertShops(Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "ShopsLogo", required = false) MultipartFile file,
			@RequestParam(value = "ShopsVideoIntroduce", required = false) MultipartFile file1)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		// shopsName,shopsLogo,shopsTextIntroduce,shopsVideoIntroduce,shopsTime,userId,shopState
		String shopsName = request.getParameter("shopsName");
		String shopsTextIntroduce = request.getParameter("shopsTextIntroduce");
		String userId = request.getParameter("userId");
		System.out.println(shopsName);
		System.out.println(shopsTextIntroduce);
		System.out.println(userId);

		String name = file.getOriginalFilename();
		String name2 = file1.getOriginalFilename();
		System.out.println(name);
		System.out.println(name2);
		// Ҫ�ϴ�����λ��+�ļ���
		String path = "D:/Java/Treasure_Pavilion/WebContent/login/image/shop/" + name;
		String path1 = "D:/Java/Treasure_Pavilion//WebContent/login/image/shop/" + name2;
//		String path3 = "D:/eclipse/code/Test/WebContent/shops/" + name;
//		String path3 = "D:/eclipse/code/Test/WebContent/shops/" + name;

		System.out.println(path);
		System.out.println(path1);
//		System.out.println(path3);

		// �ϴ��ļ�����������Ǹ�λ��
		File dest = new File(path);
		File dest1 = new File(path1);
//		File dest2 = new File(path3);
		try {
			file.transferTo(dest);
			file1.transferTo(dest1);
//			file1.transferTo(dest2);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// ƴ����Ҫ�浽���ݿ��·����+�ļ���
		String shopsLogo = "login/image/shop/" + name;
		String shopsVideoIntroduce = "login/image/shop/" + name2;
		System.out.println(shopsLogo);
		System.out.println(shopsVideoIntroduce);
		Shops shop = new Shops();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		String Mydate = df.format(new Date());
		try {
			Date utilDate = df.parse(Mydate);
			System.out.println(utilDate);
			Date date = new java.sql.Date(utilDate.getTime());
			shop.setShopsTime(date);
			System.out.println(date);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		shop.setShopsName(shopsName);
		shop.setShopsLogo(shopsLogo);
		shop.setShopsVideoIntroduce(shopsVideoIntroduce);
		shop.setShopsTextIntroduce(shopsTextIntroduce);
		shop.setUserId(Integer.parseInt(userId));
		shop.setShopState(4);

		int i = sms.AddShops(shop);
		if (i > 0) {
			model.addAttribute("addshops", "cg");
		} else {
			model.addAttribute("addshops", "sb");
		}
	}
	//<!-- ŷ��� END -->
}
