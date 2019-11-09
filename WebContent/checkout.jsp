<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- Basic page needs
    ============================================ -->
<title></title>
<meta charset="utf-8">
<meta name="keywords"
	content="html5 template, best html5 template, best html template, html5 basic template, multipurpose html5 template, multipurpose html template, creative html templates, creative html5 templates" />
<meta name="description"
	content="SuperMarket is a powerful Multi-purpose HTML5 Template with clean and user friendly design. It is definite a great starter for any eCommerce web project." />
<meta name="author" content="Magentech">
<meta name="robots" content="index, follow" />

<!-- Mobile specific metas
    ============================================ -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

<!-- Favicon
    ============================================ -->
<link rel="shortcut icon" type="image/png" href="ico/favicon-16x16.png" />


<!-- Libs CSS
    ============================================ -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap/css/bootstrap.min.css">
<link
	href="${pageContext.request.contextPath }/css/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/js/datetimepicker/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/js/owl-carousel/owl.carousel.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/themecss/lib.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/js/jquery-ui/jquery-ui.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/js/minicolors/miniColors.css"
	rel="stylesheet">

<!-- Theme CSS
    ============================================ -->
<link
	href="${pageContext.request.contextPath }/css/themecss/so_searchpro.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so_megamenu.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so-categories.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so-listing-tabs.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so-category-slider.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath }/css/themecss/so-newletter-popup.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath }/css/footer/footer1.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/header/header1.css"
	rel="stylesheet">
<link id="color_scheme"
	href="${pageContext.request.contextPath }/css/theme.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath }/css/responsive.css"
	rel="stylesheet">

<!-- Google web fonts
    ============================================ -->
<link
	href='https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700'
	rel='stylesheet' type='text/css'>
<style type="text/css">
body {
	font-family: 'Poppins', sans-serif;
}
</style>

</head>

<body class="res layout-1">


	<div id="wrapper" class="wrapper-fluid banners-effect-5">


		<!-- Header Container  -->
		<header id="header" class=" typeheader-1">
		
<div class="header-top hidden-compact">
				<div class="container">
					<div class="row"></div>
				</div>
			</div>
			<!-- Header center -->
			<div class="header-middle">
				<div class="container">
					<div class="row">
						<!-- Logo -->
						<div class="navbar-logo col-lg-2 col-md-3 col-sm-4 col-xs-12">
							<div class="logo">
								<a href="index.html"><img src="image/catalog/logo.png"
									title="Your Store" alt="Your Store" /></a>
							</div>
						</div>
						<!-- //end Logo -->


						<!-- Search -->
						<div class="col-lg-7 col-md-6 col-sm-5">
							<div class="search-header-w">
								<div class="icon-search hidden-lg hidden-md hidden-sm">
									<i class="fa fa-search"></i>
								</div>

								<div id="sosearchpro" class="sosearchpro-wrapper so-search ">
									<form method="post" action="selectGoodsOrShops">
										<div id="search0" class="search input-group form-group">
											<div
												class="select_category filter_type  icon-select hidden-sm hidden-xs">
												<select class="no-border" name="goodsOrshops">
													<option value="goods">商品</option>
													<option value="shops">商铺</option>
												</select>
											</div>
											<input class="autosearch-input form-control" type="text"
												value="" size="50" autocomplete="off"
												placeholder="想找些什么呢..." name="selectInfoByCondition">
											<button type="submit" class="button-search btn btn-primary"
												name="submit_search">
												<i class="fa fa-search"></i>
											</button>
										</div>
										<input type="hidden" name="route" value="product/search" />
									</form>
								</div>
							</div>
						</div>
						<!-- //end Search -->
					</div>
				</div>
			</div>
			<!-- //Header center -->

			<!-- Header Bottom --><div class="header-bottom hidden-compact">
				<div class="container">
					<div class="row">

						<div class="bottom1 menu-vertical col-lg-2 col-md-3 col-sm-3">
							<div class="responsive so-megamenu megamenu-style-dev ">
								<div class="so-vertical-menu ">
									<nav class="navbar-default">
										<div class="container-megamenu vertical">
											<div id="menuHeading">
												<div class="megamenuToogle-wrapper">
													<div class="megamenuToogle-pattern">
														<div class="container">
															<div>
																<span></span> <span></span> <span></span>
															</div>
															所有类别
														</div>
													</div>
												</div>
											</div>

											<div class="navbar-header">
												<button type="button" id="show-verticalmenu"
													data-toggle="collapse" class="navbar-toggle">
													<i class="fa fa-bars"></i> <span> 所有类别 </span>
												</button>
											</div>
											<div class="vertical-wrapper">
												<span id="remove-verticalmenu" class="fa fa-times"></span>
												<div class="megamenu-pattern">
													<div class="container-mega">
														<ul class="megamenu">
															<c:forEach items="${GoodsTypeList }" var="GoodsTypeList">
																<li class="item-vertical  with-sub-menu hover">
																	<p class="close-menu"></p> <a href="#" class="clearfix">
																		<img
																		src="${pageContext.request.contextPath }/image/catalog/menu/icons/ico10.png"
																		alt="icon"> <span style="font-size: 16px">${GoodsTypeList.goodsTypeName }</span>
																		<b class="fa-angle-right"></b>
																</a>
																	<div class="sub-menu" data-subwidth="60">
																		<div class="content">
																			<div class="row">
																				<div class="col-sm-12">
																					<div class="row">
																						<div class="col-md-4 static-menu">
																							<div class="menu">
																								<ul>
																									<c:forEach items="${GoodsTypesList }"
																										var="GoodsTypesList">
																										<c:if
																											test="${GoodsTypeList.goodTypeId==GoodsTypesList.goodstypeId}">
																											<li><a
																												href="${pageContext.request.contextPath }/Main/getGoodsInfoByGoodsTypes.do?GoodsTypeId=${GoodsTypesList.goodstypeId}"
																												style="font-size: 18px">${GoodsTypesList.goodstypesName }</a>
																											</li>
																										</c:if>
																									</c:forEach>
																								</ul>
																							</div>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</li>

															</c:forEach>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</nav>
								</div>
							</div>

						</div>

						<!-- Main menu -->
						<div class="main-menu-w col-lg-10 col-md-9">
							<div class="responsive so-megamenu megamenu-style-dev">
								<nav class="navbar-default">
									<div class=" container-megamenu  horizontal open ">
										<div class="navbar-header">
											<button type="button" id="show-megamenu"
												data-toggle="collapse" class="navbar-toggle">
												<span class="icon-bar"></span> <span class="icon-bar"></span>
												<span class="icon-bar"></span>
											</button>
										</div>

										<div class="megamenu-wrapper">
											<span id="remove-megamenu" class="fa fa-times"></span>
											<div class="megamenu-pattern">
												<div class="container-mega">
													<ul class="megamenu" data-transition="slide"
														data-animationtime="250">
														<li class="home hover"><a
															href="${pageContext.request.contextPath }/index.jsp">主界面</a></li>
														<li class="">
															<p class="close-menu"></p> <a
															href="${pageContext.request.contextPath }/category.jsp"
															class="clearfix"> <strong>全部商品</strong> <span
																class="label"></span>
														</a>
														</li>
														<li class="">
															<p class="close-menu"></p> <a
															href="${pageContext.request.contextPath }/category-v2.jsp"
															class="clearfix"> <strong>全部商铺</strong> <span
																class="label"></span>
														</a>
														</li>
														<li class="with-sub-menu hover">
															<p class="close-menu"></p> <a
															href="${pageContext.request.contextPath }/wishlist.jsp"
															class="clearfix"> <strong>收藏夹</strong> <b
																class="caret"></b>
														</a>
															<div class="sub-menu"
																style="width: 180px; display: none;">
																<div class="content">
																	<ul>
																		<li><a
																			href="${pageContext.request.contextPath }/wishlist.jsp"
																			class="main-menu">收藏的商品</a></li>
																		<li><a
																			href="${pageContext.request.contextPath }/Shops.jsp"
																			class="main-menu">收藏的商铺</a>
																	</ul>
																</div>
															</div>
														</li>
														<li class="with-sub-menu hover">
															<p class="close-menu"></p> <a
															href="${pageContext.request.contextPath }/cart.jsp"
															class="clearfix"> <strong>我的购物车</strong> <b
																class="caret"></b>
														</a>
															<div class="sub-menu"
																style="width: 180px; display: none;">
																<div class="content">
																	<ul>
																		<li><a
																			href="${pageContext.request.contextPath }/cart.jsp"
																			class="main-menu">我的购物车</a></li>
																		<li><a
																			href="${pageContext.request.contextPath }/order-history.jsp"
																			class="main-menu">我的订单</a>
																	</ul>
																</div>
															</div>
														</li>
														<c:if test="${userinfo==null }">
																<li class="" style="float: right; margin-right: 10px">
																	<p class="close-menu"></p> <a href="${pageContext.request.contextPath }/login/demo.jsp" class="clearfix">
																		<strong>用户登录</strong>
																</a>
																</li>
															</c:if>
															<c:if test="${userinfo!=null }">															　　　
																<li class="with-sub-menu hover"
																	style="float: right; margin-right: 10px">
																	<p class="close-menu"></p> <a
																	href="${pageContext.request.contextPath }/cart.jsp"
																	class="clearfix"> <strong>我的信息</strong> <b
																		class="caret"></b>
																</a>
																	<div class="sub-menu"
																		style="width: 150px; display: none;">
																		<div class="content">
																			<ul>
																				<li><a
																					href="CancellationUserInfo"
																					class="main-menu">切换用户</a>
																				<li><a
																					href="CancellationUserInfo"
																					class="main-menu">注销</a>
																			</ul>
																		</div>
																	</div>
																</li>
																&ensp; &ensp; 
																<li class="" style="float: right; margin-right: 10px">
																	<p class="close-menu"></p> <a href="${pageContext.request.contextPath }/shops/addShop.jsp" class="clearfix">
																		<strong>我要开店</strong>
																</a>
																</li>
															</c:if>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</nav>
							</div>
						</div>
						<!-- //end Main menu -->
					</div>
				</div>
			</div>
		</header>
		<!-- //Header Container  -->

		<div class="main-container container">
			<ul class="breadcrumb">
				<li><a href="#"><i class="fa fa-home"></i></a></li>
				<li><a href="#">确认订单信息</a></li>

			</ul>

			<div class="row">
				<!--Middle Part Start-->
				<div id="content" class="col-sm-12">
					<div class="so-onepagecheckout row">
						<div class="col-left col-sm-3">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<i class="fa fa-user"></i> 用户信息操作
									</h4>
								</div>
								<div class="panel-body">

									<ul class="list-item">
										<li><a href="register.html">用户信息显示...</a></li>
										<hr>
										<li><a href="login.html">个人信息</a></li>
										<hr>
										<li><a href="register.html">订单信息</a></li>
										<hr>
										<li><a href="register.html">我的消息</a></li>
										<hr>
										<li><a href="#">历史订单</a></li>
										<hr>
										<li><a href="#">愿望清单</a></li>
										<hr>
										<li><a href="#">收藏的店铺</a>
											<hr>
									</ul>
								</div>
							</div>
						</div>
						<div class="col-right col-sm-9">
							<div class="row">
								<div class="col-sm-12">
									<div class="panel panel-default no-padding">
										<div class="col-sm-6 checkout-shipping-methods">
											<div class="panel-heading">
												<h4 class="panel-title">
													<i class="fa fa-truck"></i> 运输方式
												</h4>
											</div>
											<div class="panel-body ">
												<p>请选择要在此订单上使用的首选送货方式。</p>
												<div class="radio">
													<label> <input type="radio" checked="checked"
														name="Flat Shipping Rate" onclick="songHuo(0)">
														免费送货 - ￥0.00
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio"
														name="Flat Shipping Rate" onclick="songHuo(5)">
														加急送货 - ￥5.00
													</label>

												</div>

											</div>
										</div>
										<div class="col-sm-6  checkout-payment-methods">
											<div class="panel-heading">
												<h4 class="panel-title">
													<i class="fa fa-credit-card"></i> 支付方式
												</h4>
											</div>
											<div class="panel-body">
												<p>请选择要在此订单上使用的首选付款方式。.</p>
												<div class="radio">
													<label> <input type="radio" checked="checked"
														name="payMode" value="PayWeChat">微信
													</label>
												</div>
												<div class="radio">
													<label> <input type="radio" name="payMode" value="PayBao">支付宝
													</label>
												</div>
											</div>
										</div>
									</div>
									<div class="panel panel-default no-padding">
										<div class="col-sm-6 checkout-shipping-methods">
											<div class="panel-heading">
												<h4 class="panel-title">
													<i class="fa fa-truck"></i> 收货信息
												</h4>
											</div>
											<div class="panel-body ">
												<p>收货人:${consignee }</p>
												<p>收货人电话:${phone }</p>
												<p>收货地址:${address }</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<i class="fa fa-shopping-cart"></i> 订单信息
											</h4>
										</div>
										<div class="panel-body">
											<div class="table-responsive">
												<table class="table table-bordered">
													<thead>
														<tr>
															<td class="text-center">商品图</td>
															<td class="text-left">商品名</td>
															<td class="text-left">商品数</td>
															<td class="text-left">商品规格</td>
															<td class="text-right">商品单价</td>
															<td class="text-right">商品总价</td>
														</tr>
													</thead>
													<tbody id="GoodsInfotbody">

													</tbody>
													<tfoot>
														<tr>
															<td class="text-right" colspan="5"><strong>数量:</strong></td>
															<td class="text-right" id="goodsNum"></td>
														</tr>
														<tr>
															<td class="text-right" colspan="5"><strong>小计:</strong></td>
															<td class="text-right" id="price"></td>
														</tr>
														<tr>
															<td class="text-right" colspan="5"><strong>运费:</strong></td>
															<td class="text-right" id="songPrice"></td>
														</tr>
														<tr>
															<td class="text-right" colspan="5"><strong>需支付:</strong></td>
															<td class="text-right" id="pay"></td>
														</tr>
													</tfoot>
												</table>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<i class="fa fa-pencil"></i> 您还需要同意以下条款就能下单啦!
											</h4>
										</div>
										<div class="panel-body">
											<br> <label class="control-label" for="confirm_agree">
												<input type="checkbox" checked="checked" value="1"
												required="" class="validate required" id="confirm_agree"
												name="confirm agree"> <span>我已阅读并同意<a
													class="agree" href="#"><b>条款和条件</b></a></span>
											</label>
											<div class="buttons">
												<div class="pull-right">
													<button type="button" class="btn btn-primary btn-lg"
														data-toggle="modal" data-target="#myModal">确认下单</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--Middle Part End -->
			</div>
		</div>
		<!-- Footer Container -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title">请输入支付密码</h4>
					</div>
					<form class="form-search">
						<input type="password" class="input-medium search-query" id="payPwd" style="width: 598px;height: 70px;font-size: 40px">
					</form>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" onclick="PayOrder()">确认</button>
					</div>
				</div>
			</div>
		</div>
		<!-- //end Footer Container -->

	</div>



	<!-- Include Libs & Plugins
	============================================ -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery-2.2.4.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/owl-carousel/owl.carousel.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/slick-slider/slick.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/libs.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/unveil/jquery.unveil.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/countdown/jquery.countdown.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/dcjqaccordion/jquery.dcjqaccordion.2.8.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/datetimepicker/moment.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/jquery-ui/jquery-ui.min.js"></script>


	<!-- Theme files
	============================================ -->


	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/so_megamenu.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/addtocart.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath }/js/themejs/application.js"></script>
	<script type="text/javascript">
		var shoppingCartld = '${orderShopppingCartId}';
		var body = $("#GoodsInfotbody");
		$
				.ajax({
					url : "${pageContext.request.contextPath }/Main/toOrder.do", //请求的url地址
					// dataType:"json",   返回格式为json
					async : true,//请求是否异步，默认为异步，这也是ajax重要特性
					data : {
						"orderShopppingCartId" : shoppingCartld
					}, //参数值
					type : "POST", //请求方式
					beforeSend : function() {
						//请求前
					},
					success : function(data) {
						var GoodsInfotbody = data.split("@@");
						for (var i = 0; i < GoodsInfotbody.length; i++) {
							var z = eval(GoodsInfotbody[i + 1]);
							$
									.each(
											z,
											function(i, item) { //遍历二维数组
												var img = item.goods.goodsImg;
												var name = item.goods.goodsName;
												var num = item.shoppingCartNum;
												var Model = item.shoppingCartModel;
												if (item.goods.goodsDiscount == 0) {
													var price = item.goods.goodsOriginalPrice;
													var Sumprice = item.goods.goodsOriginalPrice
															* item.shoppingCartNum;
												} else {
													var price = item.goods.goodsOriginalPrice
															* item.goods.goodsDiscount;
													var Sumprice = item.goods.goodsOriginalPrice
															* item.goods.goodsDiscount
															* item.shoppingCartNum;
												}
												var shoppingCartld = item.shoppingCartld;
												var zhi = "<tr><td class='text-center'><a href='product.html'><input type='hidden' name='shoppingCartld' value="+shoppingCartld+"><img style='width:130px;height:80px' src="+img+" alt='Xitefun Causal Wear Fancy Shoes'title='Xitefun Causal Wear Fancy Shoes'class='img-thumbnail'></a></td><td class='text-left'><a href='product.html'>"
														+ name
														+ "</a></td><td class='text-left'><div class='input-group btn-block' style='min-width: 100px;'><a name='allNum'>"
														+ num
														+ "</a></div></td><td class='text-left'><div class='input-group btn-block' style='min-width: 100px;'><a>"
														+ Model
														+ "</a></div></td><td class='text-right'>"
														+ price
														+ "</td><td class='text-right'><a name='allPrice'>"
														+ Sumprice
														+ "</a></td></tr>";
												body.append(zhi);
											})
						}
					},
					complete : function() {
						math();
						//请求完成的处理
					},
					error : function() {
						//请求出错处理
					}
				});
		function math() {
			var allNum = document.getElementsByName("allNum");
			var allPrice = document.getElementsByName("allPrice");

			var MathgoodsNum = allNum[0].innerHTML;
			var MathallPrice = allPrice[0].innerHTML;

			if (allNum.length > 1) {
				for (var i = 1; i < allNum.length; i++) {
					var z = MathgoodsNum = Number(MathgoodsNum)
							+ Number(allNum[i].innerHTML);
				}
				for (var i = 1; i < allPrice.length; i++) {
					MathallPrice = Number(MathallPrice)
							+ Number(allPrice[i].innerHTML);
				}
			}
			document.getElementById('goodsNum').innerHTML = MathgoodsNum;
			document.getElementById('price').innerHTML = MathallPrice;
			document.getElementById('songPrice').innerHTML = document
					.getElementById('songPrice').innerHTML;
			document.getElementById('pay').innerHTML = Number(MathallPrice)
					+ Number(document.getElementById('songPrice').innerHTML);
		}
		function songHuo(songHuoPirce) {
			document.getElementById('songPrice').innerHTML = songHuoPirce;
			math()
		}
		function PayOrder() {
			var allPrice = document.getElementsByName("payMode");
			for(var i=0;i<allPrice.length;i++){
				if(allPrice[i].checked==true){
					var getPayModel = allPrice[i].value;
				}
			}
			
			var paySumPrice = document.getElementById('pay').innerHTML;
			// 获取UUID 当订单号 ----------------------
			function S4() {
				return (((1 + Math.random()) * 0x10000) | 0).toString(16)
						.substring(1);
			}
			var uuid = S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-"
					+ S4() + S4() + S4();
			// 获取UUID 当订单号 ----------------------

			// 获取当前时间 ----------------------
			var uuid = S4() + S4() + "-" + S4() + "-" + S4() + "-" + S4() + "-"
					+ S4() + S4() + S4();
			var date = new Date();
			var seperator1 = "-";
			var year = date.getFullYear();
			var month = date.getMonth() + 1;
			var strDate = date.getDate();
			if (month >= 1 && month <= 9) {
				month = "0" + month;
			}
			if (strDate >= 0 && strDate <= 9) {
				strDate = "0" + strDate;
			}
			var ordersInfoTime = year + seperator1 + month + seperator1
					+ strDate;
			// 获取当前时间 ----------------------
			
			
			var payPwd = document.getElementById("payPwd").value
			var truePayPwd = ${sessionScope.userinfo.userAccount }
			if (payPwd == truePayPwd) {
				var allPrice = document.getElementsByName("allPrice");
				var allshoppingCartld = document
						.getElementsByName("shoppingCartld");
				var index = 0;
				var jieguo = true;
				for (var i = 0; i < allPrice.length; i++) {
					$.ajax({
								url : "${pageContext.request.contextPath }/Main/Order.do", //请求的url地址
								async : true,//请求是否异步，默认为异步，这也是ajax重要特性
								data : {
									"carID" : allshoppingCartld[i].value,
									"CartPrice" : allPrice[i].innerHTML,
									"time" : ordersInfoTime,
									"uuid" : uuid,
									"getPayModel":getPayModel,
									"paySumPrice":paySumPrice
								}, //参数值
								type : "POST", //请求方式
								beforeSend : function() {
								},
								success : function(req) {
									if(req == "失败"){
										jieguo = false;
									}
								},
								complete : function() {
								},
								error : function() {
									//请求出错处理
								}
							});
				}
				if(!jieguo){
					alert("账户余额不足！！");
				}else{
					location.href = "order-history.jsp"
				}				
			} else {
				alert("支付失败！");
			}
		}
	</script>
</body>
</html>
