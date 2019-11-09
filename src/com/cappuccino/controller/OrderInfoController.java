package com.cappuccino.controller;

import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cappuccino.pojo.Goods;
import com.cappuccino.pojo.Mainimg;
import com.cappuccino.pojo.Ordersinfo;
import com.cappuccino.pojo.Shoppingcart;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.GoodsMapperService;
import com.cappuccino.service.MainimgMapperService;
import com.cappuccino.service.OrdersinfoMapperService;
import com.cappuccino.service.ShoppingcartMapperService;
import com.cappuccino.service.ShopsMapperService;
import com.cappuccino.service.UserInfoMapperService;
import com.google.gson.Gson;

@Controller("OrderInfoController")
@RequestMapping("OrderInfo")
public class OrderInfoController {

	@Autowired
	private OrdersinfoMapperService oims;
	@Autowired
	private GoodsMapperService mgs;
	@Autowired
	private ShoppingcartMapperService scms;
	@Autowired
	private ShopsMapperService sms;
	@Autowired
	private UserInfoMapperService uims;

	@RequestMapping("addOrderInfoByOrder")
	public void addOrderInfoByOrder(Model model, HttpSession session, @Param("CartPrice") int CartPrice,
			@Param("carID") int carID, @Param("uuid") String uuid, PrintWriter out, @Param("time") String time,
			String getPayModel, String paySumPrice) throws ParseException { // ��Ӷ���
		Ordersinfo ordersinfo = new Ordersinfo();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date OrdersInfoTime = sdf.parse(time);
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

		// ��ѯ���˻��� �Ƿ�����֧�� ------------
		int payPrice2 = Integer.parseInt(paySumPrice);
		System.out.println("user.getUserWallet():" + user.getUserWallet());
		double payPrice = Double.valueOf(payPrice2);
		System.out.println("payPrice:" + payPrice);
		if ("PayWeChat".equals(getPayModel)) {// ѡ��΢��֧��
			if (user.getUserWallet() < payPrice) {
				System.out.println("΢������");
				out.print("ʧ��");
				out.flush();
				out.close();
				return;
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				System.out.println("΢���˻���" + (user.getUserWallet() - CartPrice));
				map.put("userWallet", user.getUserWallet() - CartPrice);
				map.put("UserAccount", user.getUserAccount());
				uims.updateUserInfoWallet(map);
			}
		} else if ("PayBao".equals(getPayModel)) {// ѡ��֧����֧��
			if (user.getUserPayTreasureWallet() < payPrice) {
				System.out.println("֧�������");
				out.print("ʧ��");
				out.flush();
				out.close();
				return;
			} else {
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("userWallet", user.getUserPayTreasureWallet() - CartPrice);
				map.put("UserAccount", user.getUserAccount());
				uims.updateUserInfoPayWallet(map);
				System.out.println("֧���˻���" + (user.getUserPayTreasureWallet() - CartPrice));
			}
		}
		// ��ѯ���˻��� �Ƿ�����֧�� ------------

		ordersinfo.setOrdersInfoState(1);// ����״̬
		ordersinfo.setOrdersInfoTime(OrdersInfoTime);
		ordersinfo.setOrdersAddress((String) session.getAttribute("address"));
		ordersinfo.setOrdersPhone((String) session.getAttribute("phone"));
		ordersinfo.setOrdersConsignee((String) session.getAttribute("consignee"));

		int i = oims.addOrderInfo(ordersinfo);
		if (i > 0) { // ����Ʒ����+1
			List<Goods> goodsList = mgs.getGoodsInfoByGoodsId(ordersinfo.getGoodsId());
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("goodsSalesVolume", goodsList.get(0).getGoodsSalesVolume() + ordersinfo.getOrdersInfoNum());
			map.put("goodsId", ordersinfo.getGoodsId());
			int addjieGuo = mgs.addGoodsSalesVolume(map);
			System.out.println("�����Ʒ����:" + addjieGuo); // scms
			if (addjieGuo > 0) { // ������������������۶�
				Shops shops = sms.selectShopsByShopsId(goodsList.get(0).getShopsId());
				Map<String, Object> shopsMap = new HashMap<String, Object>();
				shopsMap.put("shopsSalesVolume", shops.getShopsSalesVolume() + ordersinfo.getOrdersInfoNum());
				shopsMap.put("shopsSales", shops.getShopsSales() + ordersInfoPrice);
				shopsMap.put("shopsId", shops.getShopsId());
				int addShopsVolume = sms.updateShopsByShopsId(shopsMap);
				System.out.println("����������������" + addShopsVolume);
			}
		}
		int z = scms.deleteShoppingCartGoodsNumByCareId(carID);
		System.out.println("ɾ�����ﳵ�н����" + z);
		session.removeAttribute("orderShopppingCartId");
		session.removeAttribute("address");
		session.removeAttribute("phone");
		session.removeAttribute("consignee");
		out.print(z);;
		out.flush();
		out.close();
	}

	@RequestMapping("goOrder")
	public void goOrder(@Param("orderShopppingCartId") String orderShopppingCartId, PrintWriter out) { // ��Ӷ���
		String shopcartIds[] = orderShopppingCartId.split(",");
		String ListJson = null;
		Gson json = new Gson();
		for (int i = 1; i < shopcartIds.length; i++) {
			int shopcartId = Integer.parseInt(shopcartIds[i]);
			List<Shoppingcart> list = scms.getShoppingCatByUserId(0, shopcartId);
			ListJson = ListJson + "@@" + json.toJson(list);
		}
		out.print(ListJson);
		out.flush();
		out.close();
	}

	@RequestMapping("CunOrder")
	public void CunOrder(Model model, @Param("orderShopppingCartId") String orderShopppingCartId,
			@Param("address") String address, @Param("phone") String phone, @Param("consignee") String consignee,
			PrintWriter out, HttpSession session) { // ��Ӷ���
		session.setAttribute("orderShopppingCartId", orderShopppingCartId);
		session.setAttribute("address", address);
		session.setAttribute("phone", phone);
		session.setAttribute("consignee", consignee);
	}

	@RequestMapping("getOrderInfoByUserId")
	public void getOrderInfoByUserId(Model model, HttpSession session) {
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		List<Ordersinfo> orderinfoList = oims.getOrderInfoByUserId(user.getUserId());
		model.addAttribute("orderinfoList", orderinfoList);
	}

	@RequestMapping("getOrderInfoByordersInfoId")
	public void getOrderInfoByordersInfoId(Model model, HttpSession session, @Param("ordersInfoId") int ordersInfoId) {
		UserInfo user = (UserInfo) session.getAttribute("userinfo");
		List<Ordersinfo> orderinfoByordersIdList = oims.getOrdersinfoByOrdersinfoId(ordersInfoId, user.getUserId());
		System.out.println(orderinfoByordersIdList.toString());
		model.addAttribute("orderinfoByordersIdList", orderinfoByordersIdList);
	}

	@RequestMapping("getOrderByOrderId")
	public void getOrderByOrderId(PrintWriter out, int orderId) {
		Ordersinfo ordersinfo = oims.selOrderByOderId(orderId);
		Gson json = new Gson();
		String ordersinfoJson = json.toJson(ordersinfo);
		System.out.println(ordersinfoJson);
		out.print(ordersinfoJson);
		out.flush();
		out.close();

	}

	// ------------------ ŷ��� ----------------------
	@RequestMapping("ShowOrderByShops") // ������ʾ������Ϣ
	public void ShowOrderByShops(Model model, String shopsId) {
		System.out.println("������Ʒ������Ϣ��̨");
		List<Ordersinfo> orderlist = oims.ShowOrderByShops(shopsId);
		System.out.println("������Ʒ������Ϣ��̨");
		model.addAttribute("orderlist", orderlist);
	}

	@RequestMapping("UpdateOrderInfoStateByShops") // �̼ҷ���
	public void UpdateOrderInfoStateByShops(Model model, String ordersInfoId) {
		int i=oims.UpdateOrderInfoStateByShops(ordersInfoId);
		if(i>0) {
			model.addAttribute("uporderState", "cg");
		}else {
			model.addAttribute("uporderState", "sb");
		}
	}

	@RequestMapping("SelOrderByShopsState") // ��ѯδ����Ķ���
	public void SelOrderByShopsState(Model model, String shopsId) {
		int i = oims.ShowOrderByShopsState(shopsId);
		model.addAttribute("SelOrder", i);
	}
	// ------------------ ŷ��� ----------------------
}
