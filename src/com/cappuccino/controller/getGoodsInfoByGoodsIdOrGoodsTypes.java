package com.cappuccino.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.service.GoodsMapperService;
import com.cappuccino.service.MainimgMapperService;

@Controller("getGoodsInfoByGoodsIdOrGoodsTypes")
@RequestMapping("GoodsInfoByGoodsIdOrGoodsTypes")
public class getGoodsInfoByGoodsIdOrGoodsTypes {

	@Autowired
	private GoodsMapperService gms;

	@RequestMapping("ByGoodsId")
	public void ByGoodsId(Model model, @RequestParam("GoodsId") int GoodsId) {// ������ƷID��ѯ
		List<Goods> GoodsInfoByGoodsIdList= gms.getGoodsInfoByGoodsId(GoodsId);
		System.out.println(GoodsInfoByGoodsIdList.toString());
		model.addAttribute("GoodsInfoByGoodsIdList", GoodsInfoByGoodsIdList);
	}

	@RequestMapping("ByGoodsTypes")
	public void ByGoodsTypes(Model model, @RequestParam("GoodsTypeId") int GoodsTypeId) {// ������Ʒ���Ͳ�ѯ
		List<Goods> GoodsInfoByGoodsTypesList= gms.getGoodsInfoByGoodsTypes(GoodsTypeId);
		model.addAttribute("GoodsInfoList", GoodsInfoByGoodsTypesList);
	}
}
