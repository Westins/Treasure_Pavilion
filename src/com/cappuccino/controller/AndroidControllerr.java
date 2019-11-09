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
	public void Android_getMainGoodsInfo(Model model,Gson json) { //��Ʒ����������
		List<Goods> GoodsInfoList = gms.getGoodsInfo(null);
		String GoodsInfoJson = json.toJson(GoodsInfoList);
	}
	
	@RequestMapping("GetgoodsByVolumeLimit12")
	public void GetgoodsByVolumeLimit12(Model model, Gson json) { //2.��Ʒ������ǰ12
		List<Goods> GoodsInfoListByVolumeList = gms.GetgoodsByVolumeLimit12();
		String GoodsVolumeJson = json.toJson(GoodsInfoListByVolumeList);
	}
	
	@RequestMapping("GetgoodsByGoodsId")
	public void GetgoodsByGoodsId(Model model, Gson json) { //3.��Ʒ��ͨ��id��ѯ��������
		int goodsId = 0;//��ƷID list����Ϊ1
		List<Goods> GetgoodsByGoodsIdList = gms.getGoodsInfoByGoodsId(goodsId);
		String GetgoodsByGoodsIdJson = json.toJson(GetgoodsByGoodsIdList);
	}
	
	@RequestMapping("GetReviewByGoodsId")
	public void GetReviewByGoodsId(Model model, Gson json) { //4.���۱�ͨ����Ʒid ��ѯ��Ʒ����
		int goodsId = 0;//��ƷID list����Ϊ1
		List<Goodsreview> GetgoodsByGoodsIdList = gms.getGoodsReview(goodsId);
		String GetgoodsByGoodsIdJson = json.toJson(GetgoodsByGoodsIdList); 
	}
	@RequestMapping("addShopcart")
	public void addShopcart(Model model, Gson json,Shoppingcart shoppingcart) { //5.���ﳵ���		
		int i = scms.addShoppingCart(shoppingcart);
	}
	@RequestMapping("addOrder")
	public void addOrder(Model model, HttpSession session, @Param("CartPrice") int CartPrice,
			@Param("carID") int carID, @Param("uuid") String uuid, PrintWriter out, @Param("time") String time) { //6.�������		
		Ordersinfo ordersinfo = new Ordersinfo();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date OrdersInfoTime = null;
		try {
			OrdersInfoTime = sdf.parse(time);	
		} catch (ParseException e) {
			System.out.println("�µ�ʱ��Ϊ�գ�");
			e.printStackTrace();
		}
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		Shoppingcart shoppingcart = scms.getShoppingCartByCarId(carID);
		ordersinfo.setOrdersInfoNo(uuid); // ������
		ordersinfo.setGoodsId(shoppingcart.getGoodsId());// ��Ʒ���
		ordersinfo.setOrdersInfoNum(shoppingcart.getShoppingCartNum());// ��Ʒ����
		ordersinfo.setOrdersInfoModel(shoppingcart.getShoppingCartModel());// ��Ʒ���ͺŻ��߳ߴ�
		ordersinfo.setUserId(user.getUserId());// �û�ID
		List<Goods> list = mgs.getGoodsInfoByGoodsId(shoppingcart.getGoodsId());
		int ordersInfoPrice = 0;
		if (list.get(0).getGoodsDiscount() == 0) {
			ordersInfoPrice = (int) (list.get(0).getGoodsOriginalPrice() * shoppingcart.getShoppingCartNum());
		} else {
			ordersInfoPrice = (int) (list.get(0).getGoodsOriginalPrice() * list.get(0).getGoodsDiscount())
					* shoppingcart.getShoppingCartNum();
		}
		ordersinfo.setOrdersInfoPrice(CartPrice);// ��Ʒ�۸�
		ordersinfo.setOrdersInfoState(1);// ����״̬
		ordersinfo.setOrdersInfoTime(OrdersInfoTime);
		ordersinfo.setOrdersAddress((String) session.getAttribute("address"));
		ordersinfo.setOrdersPhone((String) session.getAttribute("phone"));
		ordersinfo.setOrdersConsignee((String) session.getAttribute("consignee"));
		int i = oims.addOrderInfo(ordersinfo);
		if(i>0){ //����Ʒ����+1
		    List<Goods> goodsList= mgs.getGoodsInfoByGoodsId(ordersinfo.getGoodsId());
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsSalesVolume", goodsList.get(0).getGoodsSalesVolume()+ordersinfo.getOrdersInfoNum());
			map.put("goodsId", ordersinfo.getGoodsId());
			int addjieGuo =mgs.addGoodsSalesVolume(map);
			System.out.println("�����Ʒ����:"+addjieGuo); //scms
			if(addjieGuo>0){ //������������������۶�
				Shops shops = sms.selectShopsByShopsId(goodsList.get(0).getShopsId());
				Map<String, Object> shopsMap = new HashMap<String, Object>();
				shopsMap.put("shopsSalesVolume", shops.getShopsSalesVolume()+ordersinfo.getOrdersInfoNum());
				shopsMap.put("shopsSales", shops.getShopsSales()+ordersInfoPrice);
				shopsMap.put("shopsId", shops.getShopsId());
				int addShopsVolume = sms.updateShopsByShopsId(shopsMap);
				System.out.println("����������������"+addShopsVolume);
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
	public void addUserGoods(Usergoods usergoods) { //7.�ղ���Ʒ���	
		int i = ugm.addUserGoods(usergoods);
	}
	@RequestMapping("addUserShops")
	public void addUserShops(Usershops usershops) { //8.��ע�������
		int i = usms.addUserShops(usershops);
	}
	@RequestMapping("delShopsCartByCartId")
	public void delShopsCartByCartId(Usershops usershops) { //9.ͨ��idɾ�� ���ﳵ����
		int CareId = 0;//���ﳵID
		int i = scms.deleteShoppingCartGoodsNumByCareId(CareId);
	}
	@RequestMapping("addReview")
	public void addReview(Goodsreview goodsreview) { //10.������۱�����
		int i = grms.userAddGoodsReview(goodsreview);
	}
	@RequestMapping("login")
	public void login() { //11.��¼--Ҫ��ͨ���˺ŷ����û���������
	}
	@RequestMapping("Register")
	public void Register() { //12.ע��
	}
	@RequestMapping("GetGoodsByGoodsLikeGoodsName")
	public void GetGoodsByGoodsLikeGoodsName(Gson json) { //13.ͨ����Ʒ����ģ����ѯ��Ʒ
		String goodsName="";//��Ʒ������Ʒ��Ϊnull��ѯȫ��
		List<Goods> GoodsInfoList = gms.getGoodsInfo(goodsName);
		String GoodsInfoJson = json.toJson(GoodsInfoList);
	}
	@RequestMapping("GetGoodsByShopId")
	public void GetGoodsByShopId(Gson json) { //14.ͨ������id ��ѯ���е�����Ʒ
		
	}
	@RequestMapping("GetGoodsByShopIdLimit13")
	public void GetGoodsByShopIdLimit13(Gson json) { //15.ͨ������id ��ѯ��������ǰ3��Ʒ
		
	}
	@RequestMapping("getUserGoodsAll")
	public void getUserGoodsAll(Gson json,UserInfo user) { //16.�ղ���Ʒ���������� ʵ�����д�userId
		List<Goods> getUserGoodsAllList = ugm.getUserGoodsInfoAll(user);
		String getUserGoodsAllJson = json.toJson(getUserGoodsAllList);
	}
	@RequestMapping("getUserShopAll")
	public void getUserShopAll(Gson json,UserInfo user) { //17.��ע���̱���������
		List<Usershops> getUserShopsAllList =usms.getUserShopsInfoAll(user);
		String getUserShopsAllJson = json.toJson(getUserShopsAllList);
	}
}
