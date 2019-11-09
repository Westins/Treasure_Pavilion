package com.cappuccino.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cappuccino.dao.ShopsMapper;
import com.cappuccino.pojo.Shops;
import com.cappuccino.pojo.UserInfo;
import com.cappuccino.service.ShopsMapperService;
import com.cappuccino.service.Impl.ShopsMapperServiceImpl;

public class Fiter implements Filter {

	@Override
	public void destroy() {
		System.out.println("结束Filter过滤器");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		String url = req.getServletPath();
		 System.out.println("执行过滤器,拦截" + url + "请求");
		if (url.indexOf("index.jsp") != -1) {
			req.getRequestDispatcher("Main/getAllInfo.do").forward(req, resp);
		} else if (url.indexOf("category-v2.jsp") != -1) {
			req.getRequestDispatcher("Main/getCategory_2Info.do").forward(req, resp);
		} else if (url.indexOf("selectGoodsOrShops") != -1) {
			String goodsOrshops = req.getParameter("goodsOrshops");
			String selectInfoByCondition = req.getParameter("selectInfoByCondition");
			session.removeAttribute("selectInfoByCondition");
			session.setAttribute("selectInfoByCondition", selectInfoByCondition);
			session.removeAttribute("GoodsTypesId");
			if (goodsOrshops == null) {
				resp.sendRedirect("index.jsp");
			} else {
				if ("shops".equals(goodsOrshops)) {
					resp.sendRedirect("category-v2.jsp");
				} else if ("goods".equals(goodsOrshops)) {
					resp.sendRedirect("category.jsp");
				}
			}
		} else if (url.indexOf("wishlist.jsp") != -1) {
			if (session.getAttribute("userinfo") == null) {
				resp.sendRedirect("login/demo.jsp");
			} else {
				req.getRequestDispatcher("Main/getUserGoodsInfo.do").forward(req, resp);
			}
		} else if (url.indexOf("Shops.jsp") != -1) {
			if (session.getAttribute("userinfo") == null) {
				resp.sendRedirect("login/demo.jsp");
			} else {
				req.getRequestDispatcher("Main/getUserShopsInfo.do").forward(req, resp);
			}
		} else if (url.indexOf("cart.jsp") != -1) {
			if (session.getAttribute("userinfo") == null) {
				resp.sendRedirect("login/demo.jsp");
			} else {
				req.getRequestDispatcher("Main/ShoppingCart.do").forward(req, resp);
			}
		} else if (url.indexOf("getGoodsInfoByGoodsIdBig") != -1) {
			if (session.getAttribute("userinfo") == null) {
				req.getRequestDispatcher("/login/demo.jsp").forward(req, resp);
			} else {
				chain.doFilter(request, response);
			}
		} else if (url.indexOf("addUserGoods") != -1) {
			if (session.getAttribute("userinfo") == null) {
				req.getRequestDispatcher("/login/demo.jsp").forward(req, resp);
			} else {
				chain.doFilter(request, response);
			}
		} else if (url.indexOf("checkout.jsp") != -1) {
			if (session.getAttribute("userinfo") == null) {
				req.getRequestDispatcher("/login/demo.jsp").forward(req, resp);
			} else if (session.getAttribute("orderShopppingCartId") == null) {
				resp.sendRedirect("cart.jsp");
			} else {
				chain.doFilter(request, response);
			}
		} else if (url.indexOf("order-history.jsp") != -1) {
			if (session.getAttribute("userinfo") == null) {
				req.getRequestDispatcher("/login/demo.jsp").forward(req, resp);
			} else {
				req.getRequestDispatcher("/Main/ordersHistory.do").forward(req, resp);
			}
		} else if (url.indexOf("getGoodsInfoByGoodsTypes") != -1) {
			String TypesId = req.getParameter("GoodsTypesId");
			session.setAttribute("GoodsTypesId", TypesId);
			resp.sendRedirect("category.jsp");
		} else if (url.indexOf("ShowGoods.do") != -1) {
			UserInfo user = (UserInfo) session.getAttribute("userinfo");
			String shopsId = request.getParameter("shopsId"); // 获取当前的ShopsI
			if (session.getAttribute("userinfo") == null) {
				req.getRequestDispatcher("/login/demo.jsp").forward(req, resp);
			} else if(user.getUserPower()==2){ //店主
				System.out.println("//店主");
				req.getRequestDispatcher("/Main/ShowGoods.do?shopsId="+shopsId).forward(req, resp);
			}else if(user.getUserPower()==1){//用户
				System.out.println("//普通用户");
				req.getRequestDispatcher("/Main/ShowGoodsByUser.do?shopsId="+shopsId).forward(req, resp);
			}
		} else if (url.indexOf("userInfo.jsp") != -1) {
			UserInfo user = (UserInfo) session.getAttribute("userinfo");
			if (session.getAttribute("userinfo") == null) {
				req.getRequestDispatcher("/login/demo.jsp").forward(req, resp);
			}else {
				chain.doFilter(request, response);
			}
		} else if (url.indexOf("CancellationUserInfo") != -1) {
				session.removeAttribute("userinfo");
				req.getRequestDispatcher("/login/demo.jsp").forward(req, resp);
			} else {
			chain.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("初始化Filter过滤器");
	}

}
