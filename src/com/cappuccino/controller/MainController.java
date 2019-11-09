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

	// ----------- ���� Go ------------
	@RequestMapping("getAllInfo")
	public String getAllInfo(Model model, HttpServletRequest request, PrintWriter out) {
		gtC.getGoodsType(model); // ��ȡ������Ʒ�����ͺʹμ�����
		miC.getMainimg(model); // ��ȡͼƬ�ֲ�����Ʒ��Ϣ
		gC.getGoodsInfoByVolumeDesc(model);// ��Ʒ��Ϣ��������
		gC.getGoodsInfoByGoodsTime(model);// �ϼ�ʱ������
		gC.getGoodsInfoByDiscount(model);// �ۿ���Ʒ
		gC.getMainGoodsInfo(model, request);
		return "index";
	}

	@RequestMapping("getCategoryInfo")
	public void getCategoryInfo(Model model, HttpServletRequest request, String zhi, PrintWriter out,
			HttpSession session) {
		gtC.getGoodsType(model); // ��ȡ������Ʒ�����ͺʹμ�����
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
	public String getCategory_2Info(Model model, HttpServletRequest request) { // �鿴����������Ϣ
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
	public String getUserGoodsInfo(Model model, HttpSession session) { // �鿴�û��ղص���Ʒ
		gtC.getGoodsType(model);
		ugC.getUserGoodsByUserInfo(model, session);
		return "wishlist";
	}

	@RequestMapping("getUserShopsInfo")
	public String getUserShopsInfo(Model model, HttpSession session) { // �鿴�û��ղصĵ���
		gtC.getGoodsType(model);
		usC.getUserShopsByUserInfo(model, session);
		return "Shops";
	}

	@RequestMapping("getGoodsInfoByGoodsTypes") // ������Ʒ���Ͳ�ѯ��Ʒ
	public String getGoodsInfoByGoodsTypes(Model model, @RequestParam("GoodsTypeId") int GoodsTypeId) {
		gbit.ByGoodsTypes(model, GoodsTypeId);
		gtC.getGoodsType(model); // ��ȡ������Ʒ�����ͺʹμ�����
		return "category";
	}

	@RequestMapping("getGoodsInfoByGoodsId") // ������ƷID��ѯ��Ʒ���� С����
	public String getGoodsInfoByGoodsId(Model model, @RequestParam("GoodsId") int GoodsId) {
		gbit.ByGoodsId(model, GoodsId);
		return "quickview";
	}

	@RequestMapping("getGoodsInfoByGoodsIdBig") // ������ƷID��ѯ��Ʒ���� �󴰿�
	public String getGoodsInfoByGoodsIdBig(Model model, @RequestParam("GoodsId") int GoodsId) {
		gbit.ByGoodsId(model, GoodsId);
		gC.getGoodsInfoByGoodsTime(model);
		gtC.getGoodsType(model); // ��ȡ������Ʒ�����ͺʹμ�����
		return "product";
	}

	@RequestMapping("ShoppingCart") // �û��鿴�Լ����ﳵ
	public String ShoppingCart(Model model, HttpSession session) {
		scC.getShoppingCartByUserId(model, session);
		uaC.getUserAdddressByUserId(model, session); // �û������ջ���ַ
		return "cart";
	}

	@RequestMapping("updateShoppingCartGoodsNum") // �޸Ĺ��ﳵ��Ʒ����
	public void updateShoppingCartGoodsNum(HttpSession session, @Param("shoppingCartld") int shoppingCartld,
			@Param("goodsNum") int goodsNum, PrintWriter out) {
		scC.updateGoodsNum(session, shoppingCartld, goodsNum, out);
	}

	@RequestMapping("deleteShoppingCartByCartId") // ɾ�����ﳵ����Ʒ
	public void deleteShoppingCartByCartId(HttpSession session, @Param("shoppingCartld") int shoppingCartld,
			PrintWriter out) {
		scC.deleteShoppingCartByCartId(session, shoppingCartld, out);
	}

	@RequestMapping("addShoppingCart") // ��ӹ��ﳵ����Ʒ
	public void addShoppingCart(HttpSession session, int GoodsId, int ShoppingCartNum, String ShoppingCartModel,
			String ShoppingCartColor, PrintWriter out) {
		scC.addShoppingCart(session, GoodsId, ShoppingCartNum, ShoppingCartModel, ShoppingCartColor, out);
	}

	@RequestMapping("addUserGoods") // ��ӵ�Ը���嵥
	public void addUserGoods(Model model, HttpSession session, @RequestParam("GoodsId") int GoodsId, PrintWriter out,
			String color, String goodsmodel) {
		ugC.addUserGoods(model, session, GoodsId, out, color, goodsmodel);
	}

	@RequestMapping("deleteUserGoods") // ����UserGoodsIdɾ��Ը���嵥
	public void deleteUserGoods(Model model, int usergoodsId, PrintWriter out) {
		ugC.deleteUserGoodsByUserGoodsId(model, usergoodsId, out);
	}

	@RequestMapping("deleteUserShops") // ����UserGoodsIdɾ�������嵥
	public void deleteUserShops(Model model, int userShopsId, PrintWriter out) {
		usC.deleteUserShopsByUserShopsId(model, userShopsId, out);
	}

	@RequestMapping("addUserShops") // ��ӵ������嵥
	public void addUserShops(Model model, @Param("shopsId") int shopsId, PrintWriter out, HttpSession session) {
		usC.addShopsByUserShopsId(model, shopsId, out, session);
	}

	@RequestMapping("SessionIsNull") // �û��Ƿ��¼��֤
	public void SessionIsNull(PrintWriter out, HttpSession session) {
		ufC.LoginYz(out, session);
	}

	@RequestMapping("toOrder") // �鿴�����µ�����Ʒ
	public void toOrder(@Param("orderShopppingCartId") String orderShopppingCartId, PrintWriter out) {
		oiC.goOrder(orderShopppingCartId, out);
	}

	@RequestMapping("CunOrder") // �漴���µ���Session
	public void CunOrder(Model model, @Param("orderShopppingCartId") String orderShopppingCartId,
			@Param("address") String address, @Param("phone") String phone, @Param("consignee") String consignee,
			PrintWriter out, HttpSession session) {
		oiC.CunOrder(model, orderShopppingCartId, address, phone, consignee, out, session);
	}

	@RequestMapping("Order") // �µ�
	public void Order(Model model, HttpSession session, @Param("CartPrice") int CartPrice, @Param("carID") int carID,
			@Param("uuid") String uuid, PrintWriter out, @Param("time") String time, String getPayModel,
			String paySumPrice) throws ParseException {
		oiC.addOrderInfoByOrder(model, session, CartPrice, carID, uuid, out, time, getPayModel, paySumPrice);
	}

	@RequestMapping("ordersHistory") // �鿴�Լ��Ķ�����Ϣ
	public String ordersHistory(Model model, HttpSession session) {
		oiC.getOrderInfoByUserId(model, session);
		return "order-history";
	}

	@RequestMapping("getOrderByordersId") // �µ�
	public String getOrderByordersId(Model model, HttpSession session, @Param("ordersInfoId") int ordersInfoId)
			throws ParseException {
		oiC.getOrderInfoByordersInfoId(model, session, ordersInfoId);
		return "order-information";
	}

	@RequestMapping("addUserAdddressByUserId") // �µ�
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
	// ----------- ���� END ------------

	// ----------- ŷ��� Go ------------
	@RequestMapping("ShowGoods") // �������� ������ID
	public String ShowGoods(Model model, String shopsId) {
		sC.ShowGoods(model, shopsId);
		ofC.SelOrderByShopsState(model, shopsId);
		return "login/new_file";
	}

	@RequestMapping("Login") // �û���¼
	public String Login(Model model, HttpServletRequest request, String userAccount, String userPwd,HttpSession session) {
		boolean LoginJieguo = ufC.Login(request, userAccount, userPwd);
		if (LoginJieguo) {
			return "redirect:/index.jsp";
		} else {
			return "login/demo";
		}
	}

	@RequestMapping("Source") // �û�ע��
	public String Source(Model model, HttpServletRequest request, String username, String userAccount, String password,
			String phone, String validCode, String email) {
		boolean SourceJieguo = ufC.Source(request, username, userAccount, password, phone, validCode, email);
		if (SourceJieguo) {
			return "login/demo";
		} else {
			return "login/source";
		}
	}

	@RequestMapping("AddGoodsGetType") // �ϼ���Ʒǰ�Ĳ�����
	public String AddGoodsGetType(Model model, String shopsId) {
		gtC.getGoodsType(model);
		sC.ShowGoods(model, shopsId);
		return "shops/addgoods";
	}

	@RequestMapping("InsertAddGood") // �ϼ���Ʒ
	public String AddGood(Model model, HttpServletRequest request, HttpServletResponse response,
			@RequestParam(value = "goodsImg", required = false) MultipartFile file,
			@RequestParam(value = "file1", required = false) MultipartFile file1,
			@RequestParam(value = "file2", required = false) MultipartFile file2) {
		System.out.println("�����ϼ���Ʒ��̨");
		try {
			gC.AddGoods(model, request, response, file, file1, file2);
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String shopsId = request.getParameter("shopsId");
		return "redirect:/Main/ShowGoods.do?shopsId=" + shopsId;// �ض�������ҳ��
	}

	@RequestMapping("UpdateGoodsState") // �¼���Ʒ
	public String UpdateGoodsState(Model model, String shopsId, String goodsId) {
		gC.UpdateGoodsState(model, shopsId, goodsId);
		return "redirect:/Main/ShowGoods.do?shopsId=" + shopsId;
	}

	@RequestMapping("InsertShops") // �������
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

	@RequestMapping("ShowOrderByShops") // ������ʾ������Ϣ
	public String ShowOrderByShops(Model model, String shopsId) {
		ofC.ShowOrderByShops(model, shopsId);
		sC.ShowGoods(model, shopsId);
		return "login/new_file2";// �����̵궩��ҳ��
	}

	@RequestMapping("UpdateOrderInfoStateByShops") // �̼ҷ���
	public String UpdateOrderInfoStateByShops(Model model, String ordersInfoId, String shopsId) {
		System.out.println("���뷢����̨");
		System.out.println("����ID="+ordersInfoId+"�̵�ID="+shopsId);
		ofC.UpdateOrderInfoStateByShops(model, ordersInfoId);
		return "redirect:/Main/ShowOrderByShops.do?shopsId="+shopsId;// �����̵궩��ҳ��
	}
	// ----------- ŷ��� Go ------------
	@RequestMapping("ShowGoodsByUser") // �������� ������ID
	public String ShowGoodsByUser(Model model, String shopsId) {
		System.out.println("shopsId"+shopsId);
		sC.ShowGoods(model, shopsId);
		ofC.SelOrderByShopsState(model, shopsId);
		return "login/User_shop";
	}

	// ----------- ŷ��� Go ------------
	@RequestMapping("UpdateUserInfoByUserId")
	public String UpdateUserInfoByUserId(Model model,@RequestParam(value = "userImg", required = false) MultipartFile file) {
		ufC.UpdateUserInfoByUserId(model,file );
		return "";
	}
	// ==ŷ���
}
