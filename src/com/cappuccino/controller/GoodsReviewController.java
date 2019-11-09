package com.cappuccino.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Goodsreview;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.GoodsMapperService;
import com.cappuccino.service.GoodsReviewMapperService;
import com.cappuccino.service.MainimgMapperService;
import com.cappuccino.service.OrdersinfoMapperService;

@Controller("GoodsReviewController")
@RequestMapping("GoodsReview")
public class GoodsReviewController {

	@Autowired
	private GoodsReviewMapperService grms;
	
	@Autowired
	private OrdersinfoMapperService oims;

	@RequestMapping("UserAddGoodsReview")
	public void UserAddGoodsReview(Model model, int goodsId, String goodsReviewTest, int goodsReviewRated,
			String goodsReviewImg, String goodsReviewVideo,HttpSession session,PrintWriter out,int OrdersId) {
		System.out.println("ю╢ак");
		Goodsreview goodsreview = new Goodsreview();
		UserInfo user = (UserInfo)session.getAttribute("userinfo");
		goodsreview.setGoodsId(goodsId);
		goodsreview.setGoodsReviewTest(goodsReviewTest);
		goodsreview.setUserId(user.getUserId());
		goodsreview.setGoodsReviewRated(goodsReviewRated);
		goodsreview.setGoodsReviewImg(goodsReviewImg);
		goodsreview.setGoodsReviewVideo(goodsReviewVideo);
		int i = grms.userAddGoodsReview(goodsreview);
		int z =0;
		if(i>0) {
			z = oims.updateOrdersState(OrdersId);
		}
		out.print(z);
		out.flush();
		out.close();
	}
}
