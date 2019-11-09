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

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.service.GoodsMapperService;
import com.cappuccino.service.MainimgMapperService;
import com.google.gson.Gson;

@Controller("GoodsController")
@RequestMapping("Goods")
public class GoodsController {

	@Autowired
	private GoodsMapperService gms;

	@RequestMapping("getGoodsInfoByVolumeDesc")
	public void getGoodsInfoByVolumeDesc(Model model) { // 畅销榜商品信息 -- 降序
		List<Goods> GoodsByVolumeList = gms.getGoodsInfoByVolume("no", "yes"); // 第一个是否查询全部 第二个yes:降序 no:升序
		model.addAttribute("GoodsByVolumeList", GoodsByVolumeList);
	}

	@RequestMapping("getGoodsInfoByVolumeAll")
	public void getGoodsInfoByVolumeAll(Model model, PrintWriter out) { // 根据销量排序--降序
		List<Goods> GoodsByVolumeListAll = gms.getGoodsInfoByVolume("yes", "yes");
		Gson json = new Gson();
		String z = json.toJson(GoodsByVolumeListAll);
		out.print(z);
		out.flush();
		out.close();
	}

	@RequestMapping("getGoodsInfoByVolume")
	public void getGoodsInfoByVolume(Model model, PrintWriter out) { // 根据销量排序--升序
		List<Goods> GoodsByVolumeListAll = gms.getGoodsInfoByVolume("yes", "no");
		Gson json = new Gson();
		String z = json.toJson(GoodsByVolumeListAll);
		out.print(z);
		out.flush();
		out.close();
	}

	@RequestMapping("getGoodsInfoByGoodsTime")
	public void getGoodsInfoByGoodsTime(Model model) { // 根据上架时间排序 -- 不查询全部 -降序
		List<Goods> GoodsByGoodsTimeList = gms.getGoodsInfoByGoosTime("no", "yes");
		model.addAttribute("GoodsByGoodsTimeList", GoodsByGoodsTimeList);
	}

	@RequestMapping("getGoodsInfoByDiscount")
	public void getGoodsInfoByDiscount(Model model) { // 根据折扣查询 -- 有折扣,查询部分,降序
		List<Goods> GoodsByDiscountList = gms.getGoodsInfoByGoodsDiscount("yes", "no", "yes");
		model.addAttribute("GoodsByDiscountList", GoodsByDiscountList);
	}

	@RequestMapping("getGoodsInfoByDiscountAll")
	public void getGoodsInfoByDiscountAll(Model model, PrintWriter out) { // 根据折扣查询 -- 有折扣,查询全部,降序
		List<Goods> GoodsByDiscountList = gms.getGoodsInfoByGoodsDiscount("yes", "yes", "yes");
		Gson json = new Gson();
		String z = json.toJson(GoodsByDiscountList);
		out.print(z);
		out.flush();
		out.close();
	}

	@RequestMapping("getGoodsInfoByDiscountAllDesc")
	public void getGoodsInfoByDiscountAllDesc(Model model, PrintWriter out) { // 根据折扣查询 -- 有折扣,查询全部,升序
		List<Goods> GoodsByDiscountList = gms.getGoodsInfoByGoodsDiscount("yes", "yes", "no");
		Gson json = new Gson();
		String z = json.toJson(GoodsByDiscountList);
		out.print(z);
		out.flush();
		out.close();
	}

	@RequestMapping("getGoodsInfo")
	public void getGoodsInfo(Model model, HttpServletRequest request, PrintWriter out) { // 填入值为需要查询的商品名
		String selectInfoByCondition = request.getParameter("selectInfoByCondition");
		List<Goods> GoodsInfoList = gms.getGoodsInfo(selectInfoByCondition);
		Gson json = new Gson();
		String z = json.toJson(GoodsInfoList);
		out.print(z);
		out.flush();
		out.close();
	}

	@RequestMapping("getMainGoodsInfo")
	public void getMainGoodsInfo(Model model, HttpServletRequest request) { // 填入值为需要查询的商品名
		String selectInfoByCondition = request.getParameter("selectInfoByCondition");
		List<Goods> GoodsInfoList = gms.getGoodsInfo(selectInfoByCondition);
		model.addAttribute("GoodsInfoList", GoodsInfoList);
	}
	

	@RequestMapping("getGoodsInfoByGoodsName")
	public void getGoodsInfoByGoodsName(Model model, HttpSession session, PrintWriter out) { // 填入值为需要查询的商品名
		String selectInfoByCondition = (String) session.getAttribute("selectInfoByCondition");
		System.out.println("selectInfoByCondition的值："+selectInfoByCondition);
		List<Goods> GoodsInfoList = gms.getGoodsInfo(selectInfoByCondition);
		Gson json = new Gson();
		String z = json.toJson(GoodsInfoList);
		out.print(z);
		out.flush();
		out.close();
	}

	@RequestMapping("getGoodsInfoByPriceAll")
	public void getGoodsInfoByPriceAll(Model model, PrintWriter out) { // 根据价格排序 升序
		List<Goods> GoodsInfoList = gms.getGoodsInfoByGoodsPrice("no");
		Gson json = new Gson();
		String z = json.toJson(GoodsInfoList);
		out.print(z);
		out.flush();
		out.close();
	}

	@RequestMapping("getGoodsInfoByPriceAllDesc")
	public void getGoodsInfoByPriceAllDesc(Model model, PrintWriter out) { // 根据价格排序 降序
		List<Goods> GoodsInfoList = gms.getGoodsInfoByGoodsPrice("yes");
		Gson json = new Gson();
		String z = json.toJson(GoodsInfoList);
		out.print(z);
		out.flush();
		out.close();
	}
	@RequestMapping("getGoodsInfoByGoodsTypeId")
	public void getGoodsInfoByGoodsTypeId(Model model, PrintWriter out,Map<String,Object> map) { // 根据价格排序 降序
		List<Goods> GoodsInfoList = gms.getGoodsInfoByGoodsTypeId(map);
		System.out.println(GoodsInfoList.toString());
		Gson json = new Gson();
		String z = json.toJson(GoodsInfoList);
		out.print(z);
		out.flush();
		out.close();
	}
	
	// 欧武淼 GO
	@RequestMapping("AddGood") // 上架商品
	public void AddGood(@RequestParam(value = "goodsImg", required = false) MultipartFile file, Model model,
			String goodsName, String goodsImg, String shopsId, String goodsTypeId, String goodsImgIntroduce,
			String goodsTestIntroduce, String goodsModel, String goodsColor, String goodsOriginalPrice,
			String goodsDiscount) {
		System.out.println(goodsName);
		System.out.println(goodsImg);
		System.out.println(shopsId);
		System.out.println(goodsTypeId);
		System.out.println(goodsImgIntroduce);
		System.out.println(goodsTestIntroduce);
		System.out.println(goodsModel);
		System.out.println(goodsOriginalPrice);
		System.out.println(goodsDiscount);
		System.out.println(goodsColor);
		System.out.println(goodsOriginalPrice);
		String name = file.getOriginalFilename();
		String path = "D:/eclipse/code/Cappuccino/Treasure_Pavilion/WebContent/login/image/shop/" + name;

		System.out.println(path);
		File dest = new File(path);
		try {
			file.transferTo(dest);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String getImg = "login/image/shop/" + goodsImg;
		System.out.println(getImg);
		Goods g = new Goods();
		g.setGoodsName(goodsName);
		g.setGoodsImg(goodsImgIntroduce);
		g.setGoodsImg(getImg);
		g.setGoodsImgIntroduce(goodsImgIntroduce);
		g.setGoodsTestIntroduce(goodsTestIntroduce);
		g.setShopsId(Integer.parseInt(shopsId));
		g.setGoodsTypeId(Integer.parseInt(goodsTypeId));
		g.setGoodsModel(goodsModel);
		g.setGoodsColor(goodsColor);
		g.setGoodsOriginalPrice(Double.parseDouble(goodsOriginalPrice));
		g.setGoodsDiscount(Double.parseDouble(goodsDiscount));
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		String Mydate = df.format(new Date());
		try {
			Date utilDate = df.parse(Mydate);
			System.out.println(utilDate);
			Date date = new java.sql.Date(utilDate.getTime());
			System.out.println(date);
			g.setGoodsTime(date);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = gms.AddGoodsByShops(g);
		if (i > 0) {
			model.addAttribute("addGood", "cg");
		} else {
			model.addAttribute("addGood", "sb");
		}

	}

	@RequestMapping("UpdateGoodsState") // 下架商品
	public void UpdateGoodsState(Model model, String shopId, String goodsId) {
		int i = gms.UpdateByGoodsId(goodsId);
		if (i > 0) {
			model.addAttribute("updateGood", "cg");
		} else {
			model.addAttribute("updateGood", "sb");
		}
	}

	// 上架商品和上传图片
	@RequestMapping("InsertGoods")
	public void AddGoods(Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "goodsImg", required = false) MultipartFile file,@RequestParam(value = "file1", required = false) MultipartFile file1,@RequestParam(value = "file2", required = false) MultipartFile file2)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		System.out.println("进入上传图片后台");
		String goodsName = request.getParameter("goodsName");
		String shopsId = request.getParameter("shopsId");
		String goodsTypeId = request.getParameter("goodsTypeId");
		String goodsTestIntroduce = request.getParameter("goodsTestIntroduce");
		String goodsModel = request.getParameter("goodsModel");
		String goodsColor = request.getParameter("goodsColor");
		String goodsOriginalPrice = request.getParameter("goodsOriginalPrice");
		String goodsDiscount = request.getParameter("goodsDiscount");
		
		//获取form表单的file文件的名字
		String name = file.getOriginalFilename();
		String name2 = file1.getOriginalFilename();
		String name3 = file2.getOriginalFilename();
		System.out.println(name);
		//要上传到的位置+文件名
		String path = "D:/Java/Treasure_Pavilion/WebContent/login/image/shop/" + name;
		String path1 = "D:/Java/Treasure_Pavilion/WebContent/login/image/shop/" + name2;
		String path2 = "D:/Java/Treasure_Pavilion/WebContent/login/image/shop/" + name3;

		System.out.println(path);
		System.out.println(path1);
		System.out.println(path2);
		//上传文件到你上面的那个位置
		File dest = new File(path);
		File dest1 = new File(path1);
		File dest2 = new File(path2);
		try {
			file.transferTo(dest);
			file1.transferTo(dest1);			
			file2.transferTo(dest2);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//拼接你要存到数据库的路径名+文件名
		String getImg = "login/image/shop/" + name;
		String getgoodsImgIntroduce="login/image/shop/" + name2+",login/image/shop/" + name3;
		System.out.println(getImg);
		System.out.println(getgoodsImgIntroduce);
		Goods g = new Goods();
		g.setGoodsName(goodsName);
		g.setGoodsImg(getImg);
		g.setGoodsImgIntroduce(getgoodsImgIntroduce);
		g.setGoodsTestIntroduce(goodsTestIntroduce);
		g.setShopsId(Integer.parseInt(shopsId));
		g.setGoodsTypeId(Integer.parseInt(goodsTypeId));
		g.setGoodsModel(goodsModel);
		g.setGoodsColor(goodsColor);
		g.setGoodsOriginalPrice(Double.parseDouble(goodsOriginalPrice));
		g.setGoodsDiscount(Double.parseDouble(goodsDiscount));
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		String Mydate = df.format(new Date());
		try {
			Date utilDate = df.parse(Mydate);
			System.out.println(utilDate);
			Date date = new java.sql.Date(utilDate.getTime());
			System.out.println(date);
			g.setGoodsTime(date);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		int i = gms.AddGoodsByShops(g);
		if (i > 0) {
			model.addAttribute("addGood", "cg");
		} else {
			model.addAttribute("addGood", "sb");
		}
	}
	// 欧武淼 END
}
