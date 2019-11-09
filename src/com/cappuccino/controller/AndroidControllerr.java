package com.cappuccino.controller;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Goodsreview;
import com.cappuccino.pojo.Ordersinfo;
import com.cappuccino.pojo.Shoppingcart;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.pojo.Usergoods;
import com.cappuccino.pojo.Usershops;
import com.cappuccino.service.GoodsMapperService;
import com.cappuccino.service.GoodsReviewMapperService;
import com.cappuccino.service.OrdersinfoMapperService;
import com.cappuccino.service.ShoppingcartMapperService;
import com.cappuccino.service.ShopsMapperService;
import com.cappuccino.service.UserGoodsMapperService;
import com.cappuccino.service.UserShopsMapperService;
import com.google.gson.Gson;

@Controller("AndroidControllerr")
public class AndroidControllerr {
	
	@Autowired
	private GoodsMapperService gms;
	@Autowired
	private ShoppingcartMapperService scms;
	@Autowired
	private UserGoodsMapperService ugm;
	@Autowired
	private UserShopsMapperService usms;
	@Autowired
	private GoodsReviewMapperService grms;
	@Autowired
	private OrdersinfoMapperService oims;
	@Autowired
	private GoodsMapperService mgs;
	@Autowired
	private ShopsMapperService sms;

	@RequestMapping("Android_getMainGoodsInfo")
	public void Android_getMainGoodsInfo(Model model,Gson json) { //商品表所有数据
		List<Goods> GoodsInfoList = gms.getGoodsInfo(null);
		String GoodsInfoJson = json.toJson(GoodsInfoList);
	}
	
	@RequestMapping("GetgoodsByVolumeLimit12")
	public void GetgoodsByVolumeLimit12(Model model, Gson json) { //2.商品表销量前12
		List<Goods> GoodsInfoListByVolumeList = gms.GetgoodsByVolumeLimit12();
		String GoodsVolumeJson = json.toJson(GoodsInfoListByVolumeList);
	}
	
	@RequestMapping("GetgoodsByGoodsId")
	public void GetgoodsByGoodsId(Model model, Gson json) { //3.商品表通过id查询单行数据
		int goodsId = 0;//商品ID list长度为1
		List<Goods> GetgoodsByGoodsIdList = gms.getGoodsInfoByGoodsId(goodsId);
		String GetgoodsByGoodsIdJson = json.toJson(GetgoodsByGoodsIdList);
	}
	
	@RequestMapping("GetReviewByGoodsId")
	public void GetReviewByGoodsId(Model model, Gson json) { //4.评论表通过商品id 查询商品评论
		int goodsId = 0;//商品ID list长度为1
		List<Goodsreview> GetgoodsByGoodsIdList = gms.getGoodsReview(goodsId);
		String GetgoodsByGoodsIdJson = json.toJson(GetgoodsByGoodsIdList); 
	}
	@RequestMapping("addShopcart")
	public void addShopcart(Model model, Gson json,Shoppingcart shoppingcart) { //5.购物车添加		
		int i = scms.addShoppingCart(shoppingcart);
	}
	@RequestMapping("addOrder")
	public void addOrder(Model model, HttpSession session, @Param("CartPrice") int CartPrice,
			@Param("carID") int carID, @Param("uuid") String uuid, PrintWriter out, @Param("time") String time) { //6.订单添加		
		Ordersinfo ordersinfo = new Ordersinfo();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date OrdersInfoTime = null;
		try {
			OrdersInfoTime = sdf.parse(time);	
		} catch (ParseException e) {
			System.out.println("下单时间为空！");
			e.printStackTrace();
		}
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		Shoppingcart shoppingcart = scms.getShoppingCartByCarId(carID);
		ordersinfo.setOrdersInfoNo(uuid); // 订单号
		ordersinfo.setGoodsId(shoppingcart.getGoodsId());// 商品编号
		ordersinfo.setOrdersInfoNum(shoppingcart.getShoppingCartNum());// 商品数量
		ordersinfo.setOrdersInfoModel(shoppingcart.getShoppingCartModel());// 商品的型号或者尺寸
		ordersinfo.setUserId(user.getUserId());// 用户ID
		List<Goods> list = mgs.getGoodsInfoByGoodsId(shoppingcart.getGoodsId());
		int ordersInfoPrice = 0;
		if (list.get(0).getGoodsDiscount() == 0) {
			ordersInfoPrice = (int) (list.get(0).getGoodsOriginalPrice() * shoppingcart.getShoppingCartNum());
		} else {
			ordersInfoPrice = (int) (list.get(0).getGoodsOriginalPrice() * list.get(0).getGoodsDiscount())
					* shoppingcart.getShoppingCartNum();
		}
		ordersinfo.setOrdersInfoPrice(CartPrice);// 商品价格
		ordersinfo.setOrdersInfoState(1);// 订单状态
		ordersinfo.setOrdersInfoTime(OrdersInfoTime);
		ordersinfo.setOrdersAddress((String) session.getAttribute("address"));
		ordersinfo.setOrdersPhone((String) session.getAttribute("phone"));
		ordersinfo.setOrdersConsignee((String) session.getAttribute("consignee"));
		int i = oims.addOrderInfo(ordersinfo);
		if(i>0){ //该商品销量+1
		    List<Goods> goodsList= mgs.getGoodsInfoByGoodsId(ordersinfo.getGoodsId());
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsSalesVolume", goodsList.get(0).getGoodsSalesVolume()+ordersinfo.getOrdersInfoNum());
			map.put("goodsId", ordersinfo.getGoodsId());
			int addjieGuo =mgs.addGoodsSalesVolume(map);
			System.out.println("添加商品销量:"+addjieGuo); //scms
			if(addjieGuo>0){ //该商铺添加销量和销售额
				Shops shops = sms.selectShopsByShopsId(goodsList.get(0).getShopsId());
				Map<String, Object> shopsMap = new HashMap<String, Object>();
				shopsMap.put("shopsSalesVolume", shops.getShopsSalesVolume()+ordersinfo.getOrdersInfoNum());
				shopsMap.put("shopsSales", shops.getShopsSales()+ordersInfoPrice);
				shopsMap.put("shopsId", shops.getShopsId());
				int addShopsVolume = sms.updateShopsByShopsId(shopsMap);
				System.out.println("添加商铺销量结果："+addShopsVolume);
			}
		}
		scms.deleteShoppingCartGoodsNumByCareId(carID);
		session.removeAttribute("orderShopppingCartId");
		session.removeAttribute("address");
		session.removeAttribute("phone");
		session.removeAttribute("consignee");
		out.print(i);
		out.flush();
		out.close();
	}
	@RequestMapping("addUserGoods")
	public void addUserGoods(Usergoods usergoods) { //7.收藏商品添加	
		int i = ugm.addUserGoods(usergoods);
	}
	@RequestMapping("addUserShops")
	public void addUserShops(Usershops usershops) { //8.关注商铺添加
		int i = usms.addUserShops(usershops);
	}
	@RequestMapping("delShopsCartByCartId")
	public void delShopsCartByCartId(Usershops usershops) { //9.通过id删除 购物车数据
		int CareId = 0;//购物车ID
		int i = scms.deleteShoppingCartGoodsNumByCareId(CareId);
	}
	@RequestMapping("addReview")
	public void addReview(Goodsreview goodsreview) { //10.添加评论表数据
		int i = grms.userAddGoodsReview(goodsreview);
	}
	@RequestMapping("login")
	public void login() { //11.登录--要求通过账号返回用户所有数据
	}
	@RequestMapping("Register")
	public void Register() { //12.注册
	}
	@RequestMapping("GetGoodsByGoodsLikeGoodsName")
	public void GetGoodsByGoodsLikeGoodsName(Gson json) { //13.通过商品名称模糊查询商品
		String goodsName="";//商品名，商品名为null查询全部
		List<Goods> GoodsInfoList = gms.getGoodsInfo(goodsName);
		String GoodsInfoJson = json.toJson(GoodsInfoList);
	}
	@RequestMapping("GetGoodsByShopId")
	public void GetGoodsByShopId(Gson json) { //14.通过店铺id 查询所有店铺商品
		
	}
	@RequestMapping("GetGoodsByShopIdLimit13")
	public void GetGoodsByShopIdLimit13(Gson json) { //15.通过店铺id 查询店铺销量前3商品
		
	}
	@RequestMapping("getUserGoodsAll")
	public void getUserGoodsAll(Gson json,UserInfo user) { //16.收藏商品表所有数据 实体类中存userId
		List<Goods> getUserGoodsAllList = ugm.getUserGoodsInfoAll(user);
		String getUserGoodsAllJson = json.toJson(getUserGoodsAllList);
	}
	@RequestMapping("getUserShopAll")
	public void getUserShopAll(Gson json,UserInfo user) { //17.关注店铺表所有数据
		List<Usershops> getUserShopsAllList =usms.getUserShopsInfoAll(user);
		String getUserShopsAllJson = json.toJson(getUserShopsAllList);
	}
}
