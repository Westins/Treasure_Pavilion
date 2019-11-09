package com.cappuccino.controller;

import java.io.PrintWriter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cappuccino.pojo.Goodstype;
import com.cappuccino.pojo.Goodstypes;
import com.cappuccino.service.GoodstypeMapperService;
import com.cappuccino.service.GoodstypesMapperService;
import com.google.gson.Gson;

@Controller("goodsTypeController")
@RequestMapping("goodsType")
public class goodsTypeController {
	
	@Autowired
	private GoodstypeMapperService gtpService;
	@Autowired
	private GoodstypesMapperService gtspService;
	
	@RequestMapping("getGoodsType")
	public void getGoodsType(Model model) { //获取所有主类型
		List<Goodstype> GoodsTypeList = gtpService.getGoodsType_all();
		List<Goodstypes> GoodsTypesList = gtspService.getGoodsTypes_all();
		model.addAttribute("GoodsTypeList", GoodsTypeList);
		model.addAttribute("GoodsTypesList", GoodsTypesList);
	}
	@RequestMapping("getTypeAll")
	public void getTypeAll(PrintWriter out,Gson json) {
		List<Goodstype> AllTypeList= gtpService.getAllType();
		String AllTypeJson = json.toJson(AllTypeList);
		out.print(AllTypeJson);
		out.flush();
		out.close();
	}
}
