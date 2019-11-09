package com.cappuccino.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.service.MainimgMapperService;

@Controller("MainimgController")
@RequestMapping("Mainimg")
public class MainimgController {
	
	@Autowired
	private MainimgMapperService mms;
	
	@RequestMapping("getMainimg")
	public void getMainimg(Model model) { //获取主页轮播图片信息
		List<Mainimg> MainimgList = mms.getMainImg();
		model.addAttribute("MainimgList", MainimgList);
	}
}
