package com.cappuccino.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
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

import com.cappuccino.pojo.Goodstype;
import com.cappuccino.pojo.Goodstypes;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.GoodstypeMapperService;
import com.cappuccino.service.GoodstypesMapperService;
import com.cappuccino.service.ShopsMapperService;
import com.google.gson.Gson;

@Controller("MainController")
@RequestMapping("Main")
public class MainController {

	@Autowired
	private goodsTypeController gtC;
	@Autowired
	private MainimgController miC;
	@Autowired
	private GoodsController gC;
	@Autowired
	private ShopsController sC;
	@Autowired
	private UserGoodsController ugC;
	@Autowired
	private UserShopsController usC;
	@Autowired
	private getGoodsInfoByGoodsIdOrGoodsTypes gbit;
	@Autowired
	private UserInfoController ufC;
	@Autowired
	private ShoppingcartController scC;
	@Autowired
	private UserAdddressController uaC;
	@Autowired
	private OrderInfoController oiC;
	@Autowired
	private GoodsReviewController grC;
	@Autowired
	private OrderInfoController ofC;
	@Autowired
	private ShopsMapperService sms; 

	// ----------- 單威 Go ------------
	@RequestMapping("getAllInfo")
	public String getAllInfo(Model model, HttpServletRequest request, PrintWriter out) {
		gtC.getGoodsType(model); // 获取所有商品主类型和次级类型
		miC.getMainimg(model); // 获取图片轮播的商品信息
		gC.getGoodsInfoByVolumeDesc(model);// 商品信息销量降序
		gC.getGoodsInfoByGoodsTime(model);// 上架时间排序
		gC.getGoodsInfoByDiscount(model);// 折扣商品
		gC.getMainGoodsInfo(model, request);
		return "index";
	}

	@RequestMapping("getCategoryInfo")
	public void getCategoryInfo(Model model, HttpServletRequest request, String zhi, PrintWriter out,
			HttpSession session) {
		gtC.getGoodsType(model); // 获取所有商品主类型和次级类型
		String selectInfoByCondition = (String) session.getAttribute("selectInfoByCondition");
		String getGoodsInfoByGoodsTypes = (String) session.getAttribute("GoodsTypesId");
		if ("quan".equals(zhi)) {
			session.removeAttribute("selectInfoByCondition");
			session.removeAttribute("GoodsTypesId");
			gC.getGoodsInfo(model, request, out);
		}
		if ("all".equals(zhi)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsTypeId", getGoodsInfoByGoodsTypes);
			map.put("GoodsTypeName", selectInfoByCondition);
			gC.getGoodsInfoByGoodsTypeId(model, out, map);
		} else if ("pirceDi".equals(zhi)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsTypeId", getGoodsInfoByGoodsTypes);
			map.put("GoodsTypeName", selectInfoByCondition);
			map.put("priceDesc", "yes");
			gC.getGoodsInfoByGoodsTypeId(model, out, map);
		} else if ("priceGao".equals(zhi)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsTypeId", getGoodsInfoByGoodsTypes);
			map.put("GoodsTypeName", selectInfoByCondition);
			map.put("priceDesc", "no");
			gC.getGoodsInfoByGoodsTypeId(model, out, map);
		} else if ("NumDi".equals(zhi)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsTypeId", getGoodsInfoByGoodsTypes);
			map.put("GoodsTypeName", selectInfoByCondition);
			map.put("goodsVolume", "yes");
			gC.getGoodsInfoByGoodsTypeId(model, out, map);
		} else if ("NumGao".equals(zhi)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsTypeId", getGoodsInfoByGoodsTypes);
			map.put("GoodsTypeName", selectInfoByCondition);
			map.put("goodsVolume", "no");
			gC.getGoodsInfoByGoodsTypeId(model, out, map);
		} else if ("ZheDi".equals(zhi)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsTypeId", getGoodsInfoByGoodsTypes);
			map.put("GoodsTypeName", selectInfoByCondition);
			map.put("goodsDis", "no");
			gC.getGoodsInfoByGoodsTypeId(model, out, map);
		} else if ("ZheGao".equals(zhi)) {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsTypeId", getGoodsInfoByGoodsTypes);
			map.put("GoodsTypeName", selectInfoByCondition);
			map.put("goodsDis", "yes");
			gC.getGoodsInfoByGoodsTypeId(model, out, map);
		}

	}

	@RequestMapping("getCategory_2Info")
	public String getCategory_2Info(Model model, HttpServletRequest request) { // 查看所有商铺信息
		gtC.getGoodsType(model);
		sC.getShopsInfo(model, request);
		sC.getShopsInfoDesc(model);
		return "category-v2";
	}

	@RequestMapping("Shops")
	public void Shops(PrintWriter out, HttpSession session, String shopsPxValue) {
		Map<String, Object> map = new HashMap<String, Object>();
		String shopsName = (String) session.getAttribute("selectInfoByCondition");
		System.out.println("shopsName" + shopsName);
		System.out.println("shopsPxValue" + shopsPxValue);
		if ("all".equals(shopsPxValue)) {
			map.put("shopsName", shopsName);
			sC.selShopsByNameOrVolume(map, out);
		} else if ("shopsVolumeDi".equals(shopsPxValue)) {
			map.put("shopsName", shopsName);
			map.put("ByVolume", "yes");
			sC.selShopsByNameOrVolume(map, out);
		} else if ("shopsVolumeDi".equals(shopsPxValue)) {
			map.put("shopsName", shopsName);
			map.put("ByVolume", "no");
			sC.selShopsByNameOrVolume(map, out);
		}
	}

	@RequestMapping("getUserGoodsInfo")
	public String getUserGoodsInfo(Model model, HttpSession session) { // 查看用户收藏的商品
		gtC.getGoodsType(model);
		ugC.getUserGoodsByUserInfo(model, session);
		return "wishlist";
	}

	@RequestMapping("getUserShopsInfo")
	public String getUserShopsInfo(Model model, HttpSession session) { // 查看用户收藏的店铺
		gtC.getGoodsType(model);
		usC.getUserShopsByUserInfo(model, session);
		return "Shops";
	}

	@RequestMapping("getGoodsInfoByGoodsTypes") // 根据商品类型查询商品
	public String getGoodsInfoByGoodsTypes(Model model, @RequestParam("GoodsTypeId") int GoodsTypeId) {
		gbit.ByGoodsTypes(model, GoodsTypeId);
		gtC.getGoodsType(model); // 获取所有商品主类型和次级类型
		return "category";
	}

	@RequestMapping("getGoodsInfoByGoodsId") // 根据商品ID查询商品详情 小窗口
	public String getGoodsInfoByGoodsId(Model model, @RequestParam("GoodsId") int GoodsId) {
		gbit.ByGoodsId(model, GoodsId);
		return "quickview";
	}

	@RequestMapping("getGoodsInfoByGoodsIdBig") // 根据商品ID查询商品详情 大窗口
	public String getGoodsInfoByGoodsIdBig(Model model, @RequestParam("GoodsId") int GoodsId) {
		gbit.ByGoodsId(model, GoodsId);
		gC.getGoodsInfoByGoodsTime(model);
		gtC.getGoodsType(model); // 获取所有商品主类型和次级类型
		return "product";
	}

	@RequestMapping("ShoppingCart") // 用户查看自己购物车
	public String ShoppingCart(Model model, HttpSession session) {
		scC.getShoppingCartByUserId(model, session);
		uaC.getUserAdddressByUserId(model, session); // 用户常用收货地址
		return "cart";
	}

	@RequestMapping("updateShoppingCartGoodsNum") // 修改购物车商品数量
	public void updateShoppingCartGoodsNum(HttpSession session, @Param("shoppingCartld") int shoppingCartld,
			@Param("goodsNum") int goodsNum, PrintWriter out) {
		scC.updateGoodsNum(session, shoppingCartld, goodsNum, out);
	}

	@RequestMapping("deleteShoppingCartByCartId") // 删除购物车中商品
	public void deleteShoppingCartByCartId(HttpSession session, @Param("shoppingCartld") int shoppingCartld,
			PrintWriter out) {
		scC.deleteShoppingCartByCartId(session, shoppingCartld, out);
	}

	@RequestMapping("addShoppingCart") // 添加购物车中商品
	public void addShoppingCart(HttpSession session, int GoodsId, int ShoppingCartNum, String ShoppingCartModel,
			String ShoppingCartColor, PrintWriter out) {
		scC.addShoppingCart(session, GoodsId, ShoppingCartNum, ShoppingCartModel, ShoppingCartColor, out);
	}

	@RequestMapping("addUserGoods") // 添加到愿望清单
	public void addUserGoods(Model model, HttpSession session, @RequestParam("GoodsId") int GoodsId, PrintWriter out,
			String color, String goodsmodel) {
		ugC.addUserGoods(model, session, GoodsId, out, color, goodsmodel);
	}

	@RequestMapping("deleteUserGoods") // 根据UserGoodsId删除愿望清单
	public void deleteUserGoods(Model model, int usergoodsId, PrintWriter out) {
		ugC.deleteUserGoodsByUserGoodsId(model, usergoodsId, out);
	}

	@RequestMapping("deleteUserShops") // 根据UserGoodsId删除商铺清单
	public void deleteUserShops(Model model, int userShopsId, PrintWriter out) {
		usC.deleteUserShopsByUserShopsId(model, userShopsId, out);
	}

	@RequestMapping("addUserShops") // 添加到商铺清单
	public void addUserShops(Model model, @Param("shopsId") int shopsId, PrintWriter out, HttpSession session) {
		usC.addShopsByUserShopsId(model, shopsId, out, session);
	}

	@RequestMapping("SessionIsNull") // 用户是否登录验证
	public void SessionIsNull(PrintWriter out, HttpSession session) {
		ufC.LoginYz(out, session);
	}

	@RequestMapping("toOrder") // 查看即将下单的商品
	public void toOrder(@Param("orderShopppingCartId") String orderShopppingCartId, PrintWriter out) {
		oiC.goOrder(orderShopppingCartId, out);
	}

	@RequestMapping("CunOrder") // 存即将下单的Session
	public void CunOrder(Model model, @Param("orderShopppingCartId") String orderShopppingCartId,
			@Param("address") String address, @Param("phone") String phone, @Param("consignee") String consignee,
			PrintWriter out, HttpSession session) {
		oiC.CunOrder(model, orderShopppingCartId, address, phone, consignee, out, session);
	}

	@RequestMapping("Order") // 下单
	public void Order(Model model, HttpSession session, @Param("CartPrice") int CartPrice, @Param("carID") int carID,
			@Param("uuid") String uuid, PrintWriter out, @Param("time") String time, String getPayModel,
			String paySumPrice) throws ParseException {
		oiC.addOrderInfoByOrder(model, session, CartPrice, carID, uuid, out, time, getPayModel, paySumPrice);
	}

	@RequestMapping("ordersHistory") // 查看自己的订单信息
	public String ordersHistory(Model model, HttpSession session) {
		oiC.getOrderInfoByUserId(model, session);
		return "order-history";
	}

	@RequestMapping("getOrderByordersId") // 下单
	public String getOrderByordersId(Model model, HttpSession session, @Param("ordersInfoId") int ordersInfoId)
			throws ParseException {
		oiC.getOrderInfoByordersInfoId(model, session, ordersInfoId);
		return "order-information";
	}

	@RequestMapping("addUserAdddressByUserId") // 下单
	public void addUserAdddressByUserId(Model model, HttpSession session, PrintWriter out, @Param("name") String name,
			@Param("phone") String phone, @Param("address") String address) {
		uaC.addUserAdddress(model, session, out, name, phone, address);
	}

	@RequestMapping("getOrderinfoByOrderId")
	public void getOrderinfoByOrderId(PrintWriter out, int orderId) {
		oiC.getOrderByOrderId(out, orderId);
	}

	@RequestMapping("addGoodsReview")
	public void addGoodsReview(Model model, int goodsId, String goodsReviewTest, int goodsReviewRated,
			String goodsReviewImg, String goodsReviewVideo, HttpSession session, PrintWriter out, int OrdersId) {
		grC.UserAddGoodsReview(model, goodsId, goodsReviewTest, goodsReviewRated, goodsReviewImg, goodsReviewVideo,
				session, out, OrdersId);
	}

	@RequestMapping("getType")
	public void getType(PrintWriter out, Gson json) {
		gtC.getTypeAll(out, json);
	};
	// ----------- 單威 END ------------

	// ----------- 欧武淼 Go ------------
	@RequestMapping("ShowGoods") // 进入商铺 传商铺ID
	public String ShowGoods(Model model, String shopsId) {
		sC.ShowGoods(model, shopsId);
		ofC.SelOrderByShopsState(model, shopsId);
		return "login/new_file";
	}

	@RequestMapping("Login") // 用户登录
	public String Login(Model model, HttpServletRequest request, String userAccount, String userPwd,HttpSession session) {
		boolean LoginJieguo = ufC.Login(request, userAccount, userPwd);
		if (LoginJieguo) {
			return "redirect:/index.jsp";
		} else {
			return "login/demo";
		}
	}

	@RequestMapping("Source") // 用户注册
	public String Source(Model model, HttpServletRequest request, String username, String userAccount, String password,
			String phone, String validCode, String email) {
		boolean SourceJieguo = ufC.Source(request, username, userAccount, password, phone, validCode, email);
		if (SourceJieguo) {
			return "login/demo";
		} else {
			return "login/source";
		}
	}

	@RequestMapping("AddGoodsGetType") // 上架商品前的差类型
	public String AddGoodsGetType(Model model, String shopsId) {
		gtC.getGoodsType(model);
		sC.ShowGoods(model, shopsId);
		return "shops/addgoods";
	}

	@RequestMapping("InsertAddGood") // 上架商品
	public String AddGood(Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "goodsImg", required = false) MultipartFile file,
			@RequestParam(value = "file1", required = false) MultipartFile file1,
			@RequestParam(value = "file2", required = false) MultipartFile file2) {
		System.out.println("进入上架商品后台");
		try {
			gC.AddGoods(model, request, response, file, file1, file2);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String shopsId = request.getParameter("shopsId");
		return "redirect:/Main/ShowGoods.do?shopsId=" + shopsId;// 重定向到商铺页面
	}

	@RequestMapping("UpdateGoodsState") // 下架商品
	public String UpdateGoodsState(Model model, String shopsId, String goodsId) {
		gC.UpdateGoodsState(model, shopsId, goodsId);
		return "redirect:/Main/ShowGoods.do?shopsId=" + shopsId;
	}

	@RequestMapping("InsertShops") // 申请店铺
	public String InsertShops(Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "ShopsLogo", required = false) MultipartFile file,
			@RequestParam(value = "ShopsVideoIntroduce", required = false) MultipartFile file1) {
		try {
			sC.InsertShops(model, request, response, file, file1);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/index.jsp";
	}

	@RequestMapping("ShowOrderByShops") // 店铺显示订单信息
	public String ShowOrderByShops(Model model, String shopsId) {
		ofC.ShowOrderByShops(model, shopsId);
		sC.ShowGoods(model, shopsId);
		return "login/new_file2";// 进入商店订单页面
	}

	@RequestMapping("UpdateOrderInfoStateByShops") // 商家发货
	public String UpdateOrderInfoStateByShops(Model model, String ordersInfoId, String shopsId) {
		System.out.println("进入发货后台");
		System.out.println("订单ID="+ordersInfoId+"商店ID="+shopsId);
		ofC.UpdateOrderInfoStateByShops(model, ordersInfoId);
		return "redirect:/Main/ShowOrderByShops.do?shopsId="+shopsId;// 返回商店订单页面
	}
	// ----------- 欧武淼 Go ------------
	@RequestMapping("ShowGoodsByUser") // 进入商铺 传商铺ID
	public String ShowGoodsByUser(Model model, String shopsId) {
		System.out.println("shopsId"+shopsId);
		sC.ShowGoods(model, shopsId);
		ofC.SelOrderByShopsState(model, shopsId);
		return "login/User_shop";
	}

	// ----------- 欧武淼 Go ------------
	@RequestMapping("UpdateUserInfoByUserId")
	public String UpdateUserInfoByUserId(Model model,@RequestParam(value = "userImg", required = false) MultipartFile file) {
		ufC.UpdateUserInfoByUserId(model,file );
		return "";
	}
	// ==欧武淼
}
